
package com.cwis.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cwis.model.LoginVO;
import com.cwis.model.UserDataVO;

@Repository
public class UserDaoImp implements UserDao {

	@Autowired
	SessionFactory sessionFactory;

	public void save(UserDataVO userDataVO) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(userDataVO);

	}

	public List searchByIdLoginId(LoginVO loginVO) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from UserDataVO where loginId='" + loginVO.getLoginId() + "'");
		List list = query.list();
		return list;
	}

}
