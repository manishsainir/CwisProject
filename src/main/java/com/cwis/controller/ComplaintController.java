
package com.cwis.controller;

import java.util.Date;
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

	@RequestMapping(value = "user/addComplain", method = RequestMethod.GET)
	public ModelAndView addComplaint() {
		return new ModelAndView("user/complainUser", "ComplainData", new ComplaintVO());
	}

	@RequestMapping(value = "user/insertComplain", method = RequestMethod.POST)
	public ModelAndView insertComplaint(@ModelAttribute ComplaintVO complaintVO) {
		List list = this.loginService.searchLoginID(Basemethods.getUser());
		complaintVO.setLoginVO((LoginVO) list.get(0));
		/* complaintVO.setComplaintStatus("panding"); */
		complaintVO.setStatus("pending");
		complaintVO.setComplaintTime(new Date().toString());
		this.complaintService.insert(complaintVO);
		return new ModelAndView("redirect:/user/addComplain");
	}

	@RequestMapping(value = "admin/viewComplain", method = RequestMethod.GET)
	public ModelAndView viewComlaint() {
		List list = this.complaintService.search();
		return new ModelAndView("admin/viewComplain", "viewComplaintData", list);
	}

	@RequestMapping(value = "user/userViewComplain", method = RequestMethod.GET)
	public ModelAndView useViewComlaint() {
		List list = this.complaintService.search();
		return new ModelAndView("user/userViewComplain", "userViewComplaintData", list);
	}

	@RequestMapping(value = "admin/replyComplain", method = RequestMethod.GET)
	public ModelAndView replyComplaint(@RequestParam String complainId) {
		ComplaintVO complaintVO = new ComplaintVO();
		complaintVO = this.complaintService.searchByComplainId(complainId);
		return new ModelAndView("admin/replyComplain", "dataForReply", complaintVO);
	}

	@RequestMapping(value = "admin/saveReply", method = RequestMethod.POST)
	public ModelAndView viewReply(@ModelAttribute ComplaintVO complaintVO) {
		complaintVO.setStatus("success");
		complaintVO.setReplyTime(new Date().toString());
		this.complaintService.insert(complaintVO);
		return new ModelAndView("redirect:/admin/viewComplain");
	}
}
