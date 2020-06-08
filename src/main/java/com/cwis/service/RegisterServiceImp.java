package com.cwis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cwis.dao.RegisterDAO;
import com.cwis.model.LoginVO;
import com.cwis.model.RegisterVO;

@Service
@Transactional
public class RegisterServiceImp implements RegisterService {

	@Autowired
	RegisterDAO registerDAO;

	public void insertRegister(RegisterVO registerVO) {
		this.registerDAO.insertRegister(registerVO);
	}

	public List search() {
		List list = this.registerDAO.search();
		return list;
	}

	public List searchById(RegisterVO registerVO) {
		List list = this.registerDAO.searchById(registerVO);
		return list;
	}

	public List searchByLoginId(LoginVO loginVO) {
		List list = this.registerDAO.searchByLoginId(loginVO);
		return list;
	}

}
