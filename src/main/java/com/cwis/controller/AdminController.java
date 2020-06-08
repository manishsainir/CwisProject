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

@Controller
public class AdminController {

	@Autowired
	RegisterService registerService;

	@Autowired
	LoginService loginService;

	@RequestMapping(value = "admin/viewUser", method = RequestMethod.GET)
	public ModelAndView viewUser() {
		List list = this.registerService.search();
		return new ModelAndView("admin/viewUser", "userData", list);
	}

	@RequestMapping(value = "admin/deleteUser", method = RequestMethod.GET)
	public ModelAndView deleteUser(@RequestParam int registerId, @RequestParam String doAction) {
		RegisterVO registerVO = new RegisterVO();
		registerVO.setRegisterId(registerId);
		List list = this.registerService.searchById(registerVO);
		RegisterVO registerVO2 = (RegisterVO) list.get(0);
		LoginVO loginVO = registerVO2.getLoginVO();
		List list2 = this.loginService.searchLoginID(loginVO.getUsername());
		LoginVO loginVO2 = (LoginVO) list2.get(0);

		if (doAction.equals("DeActive")) {

			loginVO2.setStatus(false);
			loginVO2.setEnabled("0");
		}
		if (doAction.equals("Active")) {

			loginVO2.setStatus(true);
			loginVO2.setEnabled("1");
		}
		this.loginService.insertLogin(loginVO2);
		return new ModelAndView("redirect:/admin/viewUser");
	}
}
