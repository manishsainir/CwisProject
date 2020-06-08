package com.cwis.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cwis.model.LoginVO;
import com.cwis.model.RegisterVO;
import com.cwis.service.LoginService;
import com.cwis.service.RegisterService;
import com.cwis.utils.Basemethods;

@Controller
public class ProfileController {

	@Autowired
	LoginService loginService;
    
	@Autowired    
	RegisterService registerService;
   
	@RequestMapping(value = "user/profile", method = RequestMethod.GET)
	public ModelAndView profile() {
		List list = this.loginService.searchLoginID(Basemethods.getUser());
		LoginVO loginVO = (LoginVO) list.get(0);
		List list2 = this.registerService.searchByLoginId(loginVO);
		return new ModelAndView("user/profile", "registerVO", (RegisterVO) list2.get(0));
	}
  
	@RequestMapping(value = "user/profileChangePass", method = RequestMethod.GET)
	public ModelAndView profileChangePass(@RequestParam String loginId) {
		System.out.println(loginId);
		return new ModelAndView("saveNewPass", "loginId", loginId);
	}

}
