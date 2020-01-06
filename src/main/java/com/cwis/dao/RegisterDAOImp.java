package com.cwis.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cwis.model.LoginVO;
import com.cwis.model.RegisterVO;

@Repository
public class RegisterDAOImp implements RegisterDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void insertRegister(RegisterVO registerVO) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.save(registerVO);
	}

	@Override
	public List search() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from RegisterVO ");
		List list = query.list();
		return list;
	}

	@Override
	public List searchById(RegisterVO registerVO) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from RegisterVO where registerId='" + registerVO.getRegisterId() + "'");
		List list = query.list();
		return list;
	}
}
