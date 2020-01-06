package com.cwis.dao;

import java.util.List;

import com.cwis.model.LoginVO;
import com.cwis.model.RegisterVO;

public interface LoginDAO {

	public void register(RegisterVO registerVO);

	public void insertLogin(LoginVO loginVO);

	public List searchLoginID(String loginService);

}
