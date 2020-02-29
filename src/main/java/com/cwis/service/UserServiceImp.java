
package com.cwis.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cwis.dao.UserDao;
import com.cwis.model.UserVO;

@Service

@Transactional
public class UserServiceImp implements UserService {

	@Autowired
	UserDao userDao;

	@Override
	public void save(UserVO userVO) {
		this.userDao.save(userVO);

	}

}
