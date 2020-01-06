package com.cwis.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cwis.model.FeedbackVO;
import com.cwis.model.LoginVO;
import com.cwis.service.FeedbackService;
import com.cwis.service.LoginService;
import com.cwis.utils.Basemethods;

@Controller
public class FeedbackController {

	@Autowired
	FeedbackService feedbackService;

	@Autowired
	LoginService loginService;

	@RequestMapping(value = "user/addFeedback", method = RequestMethod.GET)
	public ModelAndView addFeeback() {
		return new ModelAndView("user/addFeedback", "feedbackData", new FeedbackVO());
	}

	@RequestMapping(value = "user/insertFeedback", method = RequestMethod.POST)
	public ModelAndView insertFeedback(@ModelAttribute FeedbackVO feedbackVO) {
		List list = this.loginService.searchLoginID(Basemethods.getUser());
		LoginVO loginVO = (LoginVO) list.get(0);
		feedbackVO.setLoginVO(loginVO);
		this.feedbackService.insert(feedbackVO);
		return new ModelAndView("redirect:/user/addFeedback");
	}
	
	@RequestMapping(value = "admin/viewFeedback",method = RequestMethod.GET)
	public ModelAndView viewFeedback() {
		List list = this.feedbackService.search();
		return new ModelAndView("admin/viewFeedback","viewFeedbackData",list);
	}
	
}
