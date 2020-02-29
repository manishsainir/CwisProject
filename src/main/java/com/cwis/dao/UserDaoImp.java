
package com.cwis.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cwis.model.UserVO;

@Repository
public class UserDaoImp implements UserDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void save(UserVO userVO) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(userVO);
		
	}

}
