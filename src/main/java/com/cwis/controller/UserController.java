
package com.cwis.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cwis.model.LoginVO;
import com.cwis.model.UserVO;
import com.cwis.service.LoginService;
import com.cwis.service.UserService;
import com.cwis.utils.Basemethods;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	@Autowired
	LoginService loginService;

	@RequestMapping(value = "user/addUserData", method = RequestMethod.POST)
	public ModelAndView addUserData(@RequestParam(name = "file") List<MultipartFile> file, HttpSession session,
			HttpServletRequest request) {

		for (MultipartFile multipartFile : file) {

			UserVO userVO = new UserVO();
			String path = request.getSession().getServletContext().getRealPath("/");
			System.out.println("File Before Insert ::::: " + multipartFile.getOriginalFilename());

			String filePath = path + "documents//files//";
			String fileName = multipartFile.getOriginalFilename();

			try {
				byte barr[] = multipartFile.getBytes();
				BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(filePath + fileName));

				bout.write(barr);
				bout.flush();
				bout.close();

				userVO.setFileName(fileName);
				userVO.setFilePath(filePath);

				List list = this.loginService.searchLoginID(Basemethods.getUser());
				LoginVO loginVO = (LoginVO) list.get(0);
				userVO.setLoginVO(loginVO);

				this.userService.save(userVO);

			}

			catch (Exception e) {
				e.printStackTrace();
			}

		}

		return new ModelAndView("user/userData");
	}
}
