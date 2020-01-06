package com.cwis.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cwis.model.ComplaintVO;
import com.cwis.model.LoginVO;
import com.cwis.service.ComplaintService;
import com.cwis.service.LoginService;
import com.cwis.utils.Basemethods;

@Controller
public class ComplaintController {

	@Autowired
	ComplaintService complaintService;

	@Autowired
	LoginService loginService;

	@RequestMapping(value = "user/addComplaint", method = RequestMethod.GET)
	public ModelAndView addComplaint() {
		return new ModelAndView("user/complaintUser", "complaintData", new ComplaintVO());
	}

	@RequestMapping(value = "user/insertComplaint", method = RequestMethod.POST)
	public ModelAndView insertComplaint(@ModelAttribute ComplaintVO complaintVO) {
		List list = this.loginService.searchLoginID(Basemethods.getUser());
		complaintVO.setLoginVO((LoginVO) list.get(0));
		this.complaintService.insert(complaintVO);
		return new ModelAndView("redirect:/user/addComplaint");
	}

	@RequestMapping(value = "admin/viewComplaint", method = RequestMethod.GET)
	public ModelAndView viewComlaint() {
		List list = this.complaintService.search();
		return new ModelAndView("admin/viewComplaint", "viewComplaintData", list);
	}

	@RequestMapping(value = "admin/replyComplaint", method = RequestMethod.GET)
	public ModelAndView replyComplaint(@RequestParam String username) {
		ComplaintVO complaintVO = new ComplaintVO();
		LoginVO loginVO = new LoginVO();
		List list = this.loginService.searchLoginID(username);
		complaintVO.setLoginVO((LoginVO) list.get(0));
		return new ModelAndView("admin/replyComplaint", "dataForReply", complaintVO);
	}
}
