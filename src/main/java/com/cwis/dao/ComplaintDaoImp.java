package com.cwis.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cwis.model.ComplaintVO;

@Repository
public class ComplaintDaoImp implements ComplaintDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void insert(ComplaintVO complaintVO) {

		Session session = sessionFactory.getCurrentSession();
		session.save(complaintVO);
	}

	@Override
	public List search() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ComplaintVO");
		List list = query.list();
		return list;
	}

}
