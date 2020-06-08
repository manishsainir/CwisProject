package com.cwis.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cwis.api.AES;
import com.cwis.api.FileAsPdf;
import com.cwis.api.Steganography;
import com.cwis.model.LoginVO;
import com.cwis.model.UserDataVO;
import com.cwis.service.LoginService;
import com.cwis.service.UserService;
import com.cwis.utils.Basemethods;

@Controller
public class EncryptionController {

	@Autowired
	LoginService loginService;

	@Autowired
	UserService userService;

	@RequestMapping(value = "user/textInput", method = RequestMethod.GET)
	public ModelAndView textInput() {
		return new ModelAndView("user/textInput");
	}

	@RequestMapping(value = "user/docInput", method = RequestMethod.GET)
	public ModelAndView docInput() {
		return new ModelAndView("user/docInput");
	}

	@RequestMapping(value = "user/encryptTextInput", method = RequestMethod.POST)
	public ModelAndView encryptTextInput(@RequestParam String inputKey, @RequestParam String inputText,
			@RequestParam(name = "file") MultipartFile file, HttpServletRequest request) {

		UserDataVO userDataVO = new UserDataVO();

		String path = request.getSession().getServletContext().getRealPath("/");

		String imagePath = path + "documents//" + Basemethods.getUser() + "//raw_files//";
		String imageName = file.getOriginalFilename();

		userDataVO.setRawFileName(imageName);
		userDataVO.setRawFilePath(imagePath);
		userDataVO.setAlgoKey(inputKey);
		userDataVO.setData(inputText.getBytes());
		List list = this.loginService.searchLoginID(Basemethods.getUser());
		LoginVO loginVO = (LoginVO) list.get(0);
		userDataVO.setLoginVO(loginVO);

		DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");

		Date d = new Date();

		userDataVO.setDate(dateFormat.format(d));

		File f = new File(imagePath);
		f.mkdirs();

		String finalimagepath = "";
		String fileName = imageName;

		try {
			byte barr[] = file.getBytes();
			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(imagePath + imageName));
			bout.write(barr);
			bout.flush();
			bout.close();

			String encryptedtext = AES.encrypt(inputText, inputKey);
			if (encryptedtext.equals("")) {
				System.out.println("error while encrypting please try again");
				return new ModelAndView("user/textInput", "ExceptionHandling",
						"error while encrypting please try again");
			}

			finalimagepath = Steganography.encodeByText(imagePath + imageName, encryptedtext, path, imageName);
			if (finalimagepath.equals("")) {
				System.out.println("Couldn't hide text in image");
				return new ModelAndView("user/textInput", "TextExceptionHandling", "Couldn't hide text in image");
			}

			userDataVO.setImagePath(finalimagepath);

			int position = fileName.lastIndexOf(".");
			if (position > 0) {
				fileName = fileName.substring(0, position);
			}
			fileName = fileName + ".png";

			userDataVO.setImageName(fileName);

			this.userService.save(userDataVO);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("user/downloadEncryptedImage", "EncryptedImage", fileName);
	}

	@RequestMapping(value = "user/viewEncryptedImage", method = RequestMethod.GET)
	public ModelAndView viewEncryptedImage() {
		List list = this.loginService.searchLoginID(Basemethods.getUser());
		LoginVO loginVO = (LoginVO) list.get(0);
		List list2 = this.userService.searchByLoginId(loginVO);
		return new ModelAndView("user/viewEncryptedImage", "encryptedImage", list2);
	}

	@RequestMapping(value = "user/encryptDocInput", method = RequestMethod.POST)
	public ModelAndView encryptDocInput(@RequestParam String inputKey,
			@RequestParam(name = "textfile") MultipartFile textfile,
			@RequestParam(name = "imagefile") MultipartFile imagefile, HttpServletRequest request) {
		UserDataVO userDataVO = new UserDataVO();

		String path = request.getSession().getServletContext().getRealPath("/");

		String filePath = path + "documents//" + Basemethods.getUser() + "//raw_files//";
		String imageName = imagefile.getOriginalFilename();

		userDataVO.setRawFileName(imageName);
		userDataVO.setRawFilePath(filePath);
		userDataVO.setAlgoKey(inputKey);
		List list = this.loginService.searchLoginID(Basemethods.getUser());
		LoginVO loginVO = (LoginVO) list.get(0);
		userDataVO.setLoginVO(loginVO);

		DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");

		Date d = new Date();

		userDataVO.setDate(dateFormat.format(d));

		File f = new File(filePath);
		f.mkdirs();
		String finalimagepath = "";

		try {
			byte barr[] = imagefile.getBytes();
			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(filePath + imageName));
			bout.write(barr);
			bout.flush();
			bout.close();

			byte barr2[] = textfile.getBytes();

			String data = "";
			if (textfile.getContentType().equals("application/pdf")) {
				BufferedOutputStream bout2 = new BufferedOutputStream(
						new FileOutputStream(filePath + textfile.getOriginalFilename()));
				bout2.write(barr2);
				bout2.flush();
				bout2.close();
				data = FileAsPdf.pdfToText(filePath + textfile.getOriginalFilename());
				userDataVO.setData(data.getBytes());
			} else {
				data = new String(barr2);
				userDataVO.setData(barr2);
			}

			String encryptedtext = AES.encrypt(data, inputKey);
			if (encryptedtext.equals("")) {
				return new ModelAndView("user/textInput", "ExceptionHandling",
						"error while encrypting please try again");
			}

			finalimagepath = Steganography.encodeByText(filePath + imageName, encryptedtext, path, imageName);
			if (finalimagepath.equals("")) {
				return new ModelAndView("user/docInput", "DocExceptionHandling", "Couldn't hide text in image");
			}

			userDataVO.setImagePath(finalimagepath);

			this.userService.save(userDataVO);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("user/downloadEncryptedImage", "EncryptedImage", imageName);
	}

}
