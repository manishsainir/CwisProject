package com.cwis.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cwis.dao.LoginDAO;
import com.cwis.model.LoginVO;
import com.cwis.model.RegisterVO;

@Service
@Transactional
public class LoginServiceImp implements LoginService {

	@Autowired
	LoginDAO loginDAO;

	public void insertRegister(RegisterVO registerVO) {
		loginDAO.register(registerVO);
	}

	public void insertLogin(LoginVO loginVO) {
		// TODO Auto-generated method stub
		loginDAO.insertLogin(loginVO);
	}

	public List searchLoginID(String loginService) {
		// TODO Auto-generated method stub
		List ls = loginDAO.searchLoginID(loginService);
		return ls;
	}

	public List searchLoginIDAu(LoginVO loginVO) {
		List list = this.loginDAO.searchLoginIDAu(loginVO);
		return list;
	}

	public List searchByLoginId(String loginId) {
		List list = this.loginDAO.searchByLoginId(loginId);
		return list;
	}

	public List getUserCount() {
		return this.loginDAO.getUserCount();
	}

	public List getComplaintCount() {
		return this.loginDAO.getComplaintCount();
	}

	public List getAverageFeedbackCount() {
		return this.loginDAO.getAverageFeedbackCount();
	}

	public List getFileCount() {
		return this.loginDAO.getFileCount();
	}

	@Override
	public List<LoginVO> getUserLoginId(String username) {
		return this.loginDAO.getUserLoginId(username);
	}

	@Override
	public List getFileCount(int loginId) {
		return this.loginDAO.getFileCount(loginId);
	}

	@Override
	public List getComplaintCount(int loginId) {
		return this.loginDAO.getComplaintCount(loginId);
	}

	@Override
	public List getAverageFeedbackCount(int loginId) {
		return this.loginDAO.getAverageFeedbackCount(loginId);
	}
}