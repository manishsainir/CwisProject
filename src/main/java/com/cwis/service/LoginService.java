package com.cwis.service;

import java.util.List;

import com.cwis.model.LoginVO;
import com.cwis.model.RegisterVO;

public interface LoginService {
	public void insertRegister(RegisterVO registerVO);
	public void insertLogin(LoginVO loginVO);
	public List searchLoginID(String loginService);
}
