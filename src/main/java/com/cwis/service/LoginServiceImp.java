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

	@Override
	public void insertRegister(RegisterVO registerVO) {
		loginDAO.register(registerVO);
	}

	@Override
	public void insertLogin(LoginVO loginVO) {
		// TODO Auto-generated method stub
		loginDAO.insertLogin(loginVO);
	}

	@Override
	public List searchLoginID(String loginService) {
		// TODO Auto-generated method stub
		List ls = loginDAO.searchLoginID(loginService);
		return ls;
	}
}