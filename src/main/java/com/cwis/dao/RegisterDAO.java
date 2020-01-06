package com.cwis.dao;

import java.util.List;

import com.cwis.model.RegisterVO;

public interface RegisterDAO {

	void insertRegister(RegisterVO registerVO);

	List search();

	List searchById(RegisterVO registerVO);

}
