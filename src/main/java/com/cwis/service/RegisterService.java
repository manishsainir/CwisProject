package com.cwis.service;

import java.util.List;

import com.cwis.model.RegisterVO;

public interface RegisterService {
	public void insertRegister(RegisterVO registerVO);

	public List search();

	public List searchById(RegisterVO registerVO);

}
