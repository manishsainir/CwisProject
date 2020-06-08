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

	public void insert(ComplaintVO complaintVO) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(complaintVO);
	}

	public List search() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ComplaintVO");
		List list = query.list();
		return list;
	}

	public ComplaintVO searchByComplainId(String complaintId) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ComplaintVO where complaintId='" + complaintId + "'");
		ComplaintVO complaintVO = (ComplaintVO) query.list().get(0);
		return complaintVO;
	}

}
