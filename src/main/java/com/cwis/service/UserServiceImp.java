
package com.cwis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cwis.dao.UserDao;
import com.cwis.model.LoginVO;
import com.cwis.model.UserDataVO;

@Service

@Transactional
public class UserServiceImp implements UserService {

	@Autowired
	UserDao userDao;

	public void save(UserDataVO userDataVO) {
		this.userDao.save(userDataVO);

	}

	public List searchByLoginId(LoginVO loginVO) {

		List list = this.userDao.searchByIdLoginId(loginVO);
		return list;
	}

}
