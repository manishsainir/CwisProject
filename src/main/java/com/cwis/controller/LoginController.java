package com.cwis.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import com.cwis.dao.LoginDAOImp;
import com.cwis.dao.RegisterDAOImp;
import com.cwis.model.LoginVO;
import com.cwis.model.RegisterVO;
import com.cwis.service.LoginService;
import com.cwis.service.RegisterService;
import com.cwis.utils.Basemethods;

@Controller
public class LoginController {

	@Autowired
	LoginService loginService;

	@Autowired
	RegisterService registerService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView loadLogin() {
		return new ModelAndView("login");
	}


	@RequestMapping(value = "/admin/index", method = RequestMethod.GET)
	public ModelAndView adminIndex() {
		List userCount = this.loginService.getUserCount();
		List complaintCount = this.loginService.getComplaintCount();
		List fileCount = this.loginService.getFileCount();
		List averageFeedbackCount = this.loginService.getAverageFeedbackCount();

		Object numberOfUser = 0;
		Object numberOfComplaint = 0;
		Object numberOfFile = 0;
		Object numberOfAvgFeedback = 0;

		if (!userCount.isEmpty()) {
			numberOfUser = userCount.get(0);
		}

		if (!complaintCount.isEmpty()) {
			numberOfComplaint = complaintCount.get(0);
		}

		if (!fileCount.isEmpty()) {
			numberOfFile = fileCount.get(0);
		}

		if (!averageFeedbackCount.isEmpty()) {
			if (averageFeedbackCount.get(0) != null) {
				numberOfAvgFeedback = averageFeedbackCount.get(0);
			}
		}

		return new ModelAndView("admin/index").addObject("userCount", numberOfUser.toString())
				.addObject("complaintCount", numberOfComplaint.toString())
				.addObject("numberOfFile", numberOfFile.toString())
				.addObject("avgfeedbackCount", numberOfAvgFeedback.toString());
	}

	@RequestMapping(value = "/user/index", method = RequestMethod.GET)
	public ModelAndView userIndex() {

		List<LoginVO> list = this.loginService.getUserLoginId(Basemethods.getUser());
		System.out.println(list.size());
		System.out.println(list.get(0));
		int loginId = list.get(0).getLoginId();
		List complaintCount = this.loginService.getComplaintCount(loginId);
		List fileCount = this.loginService.getFileCount(loginId);
		List averageFeedbackCount = this.loginService.getAverageFeedbackCount(loginId);

		Object numberOfComplaint = 0;
		Object numberOfFile = 0;
		Object numberOfAvgFeedback = 0;

		if (!complaintCount.isEmpty()) {

			numberOfComplaint = complaintCount.get(0);
		}

		if (!fileCount.isEmpty()) {
			System.out.println("file count");
			numberOfFile = fileCount.get(0);
		}

		if (!averageFeedbackCount.isEmpty()) {

			if (averageFeedbackCount.get(0) != null) {
				numberOfAvgFeedback = averageFeedbackCount.get(0);
			}
		}

		return new ModelAndView("user/index").addObject("complaintCount", numberOfComplaint.toString())
				.addObject("numberOfFile", numberOfFile.toString())
				.addObject("avgfeedbackCount", numberOfAvgFeedback.toString());
	}

	@RequestMapping(value = { "/admin/logout", "/user/logout" }, method = { RequestMethod.POST, RequestMethod.GET })
	public String viewUserDetails(ModelMap model, HttpServletResponse response, HttpServletRequest request) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
			request.getSession().invalidate();
			request.getSession().setAttribute("tempStatus", "success");
			request.getSession().setAttribute("statusText", "Logout Successfully!");
		}
		return "login";
	}      

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView load(HttpServletRequest request) {
		boolean error = Boolean.parseBoolean(request.getParameter("error"));
		String message = "";
		if (error) {
			message = "you have entered wrong username or password! please try again..";
		}
		return new ModelAndView("login").addObject("message", message);
	}

	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView load403() {
		System.out.println("accesdenied");
		return new ModelAndView("login");
	}

	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public ModelAndView error() {
		return new ModelAndView("/404");
	}

	@RequestMapping(value = "forgotPassword", method = RequestMethod.GET)
	public ModelAndView forgotPassword() {
		return new ModelAndView("forgotPassword", "loginVO", new LoginVO());
	} 

	@RequestMapping(value = "checkForgotPassAuthenctication", method = RequestMethod.POST)
	public ModelAndView checkForgotPassAuthenctication(@ModelAttribute LoginVO loginVO) {
		List list = this.loginService.searchLoginID(loginVO.getUsername());
		LoginVO loginVO2 = (LoginVO) list.get(0);

		if (!list.isEmpty()) {
			String OTP = Basemethods.generateOtp();

			Basemethods.sendMail(loginVO2.getUsername(), OTP);
			return new ModelAndView("enterOtp", "loginVO", loginVO2).addObject("otp", OTP);
		}
		return new ModelAndView("forgotPassword", "loginVO", new LoginVO()).addObject("emailErrormsg",
				"Enter right email");
	}

	@RequestMapping(value = "changePassword", method = RequestMethod.POST)
	public ModelAndView changePassword(@RequestParam String otp, @ModelAttribute LoginVO loginVO) {

		int loginId = loginVO.getLoginId();

		return new ModelAndView("saveNewPass", "loginId", loginId);
	} 

	@RequestMapping(value = "changePasswordA", method = RequestMethod.POST)
	public ModelAndView changePasswordA(@RequestParam String password, @RequestParam String loginId) {
		List list = this.loginService.searchByLoginId(loginId);
		LoginVO loginVO2 = (LoginVO) list.get(0);
		loginVO2.setPassword(password);
		this.loginService.insertLogin(loginVO2);
		return new ModelAndView("login");
	}

}