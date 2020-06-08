package com.cwis.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cwis.model.FeedbackVO;

@Repository
public class FeedbackDaoImp implements FeedbackDao{

	@Autowired
	SessionFactory sessionFactory;
	
	
	public void insert(FeedbackVO feedbackVO) {
		Session session = sessionFactory.getCurrentSession();
		session.save(feedbackVO);
		
	}

	
	public List search() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from FeedbackVO");
		List list = query.list();
		return list;
	}

}
