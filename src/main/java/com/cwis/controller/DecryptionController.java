package com.cwis.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cwis.api.AES;
import com.cwis.api.Steganography;
import com.cwis.service.LoginService;
import com.cwis.service.UserService;
import com.cwis.utils.Basemethods;
 
@Controller
public class DecryptionController {
   
	@Autowired
	LoginService loginService;

	@Autowired
	UserService userService;

	@RequestMapping(value = "user/decryption", method = RequestMethod.GET)
	public ModelAndView decryption() {
		return new ModelAndView("user/decryption");
	}

	@RequestMapping(value = "user/decryptImage", method = RequestMethod.POST)
	public ModelAndView decryptImage(@RequestParam String inputKey, @RequestParam(name = "file") MultipartFile file,
			HttpServletRequest request) {

		String fileName = file.getOriginalFilename();

		int position = fileName.lastIndexOf(".");
		if (position > 0) {
			fileName = fileName.substring(0, position);
		}

		String path = request.getSession().getServletContext().getRealPath("/");
		String imageFilePath = path + "documents//" + Basemethods.getUser() + "//encrypted_files//";
		String textFilePath = path + "documents//" + Basemethods.getUser() + "//text_files//";
		File textFile = new File(textFilePath);
		textFile.mkdirs();
		File f = new File(textFilePath + fileName + "_hiddenText.txt");
		try {

			String hiddenText = new String(Steganography.decode(imageFilePath + file.getOriginalFilename()));

			if (hiddenText.equals("")) {
				System.out.println("No hidden message");
				return new ModelAndView("user/decryption", "MessaageExceptionHandling", "No hidden message found");
			}

			String orignalText = AES.decrypt(hiddenText, inputKey);
			if (orignalText.equals("")) {
				System.out.println("Entered key is not correct please try again with different key");
				return new ModelAndView("user/decryption", "KeyExceptionHandling",
						"Entered key is not correct please try again with different key");
			} else {
				Steganography.saveTextToPath(orignalText, f);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("user/downloadTextFile", "textFileName", f.getName());
	}
}
