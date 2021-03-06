package com.cwis.service;

import java.util.List;

import com.cwis.model.LoginVO;
import com.cwis.model.RegisterVO;

public interface LoginService {
	public void insertRegister(RegisterVO registerVO);

	public void insertLogin(LoginVO loginVO);

	public List searchLoginID(String loginService);

	public List searchLoginIDAu(LoginVO loginVO);

	public List searchByLoginId(String loginId);

	public List getUserCount();

	public List getComplaintCount();

	public List getAverageFeedbackCount();

	public List getFileCount();

	public List getFileCount(int loginId);

	public List getComplaintCount(int loginId);

	public List getAverageFeedbackCount(int loginId);

	public List<LoginVO> getUserLoginId(String username);
}
