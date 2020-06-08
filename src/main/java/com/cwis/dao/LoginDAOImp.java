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
public class LoginDAOImp implements LoginDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void register(RegisterVO registerVO) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(registerVO);
	}

	public void insertLogin(LoginVO loginVO) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(loginVO);
	}

	public List searchLoginID(String loginService) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from LoginVO where username = '" + loginService + "' ");
		List ls = q.list();
		return ls;
	}

	public List searchLoginIDAu(LoginVO loginVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from LoginVO where loginId = '" + loginVO.getLoginId() + "' ");
		List ls = q.list();
		return ls;
	}

	public List searchByLoginId(String loginId) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from LoginVO where loginId = '" + loginId + "' ");
		List ls = q.list();
		return ls;
	}

	public List getUserCount() {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createSQLQuery("select count(*) from login");
		List ls = q.list();
		return ls;
	}

	public List getComplaintCount() {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createSQLQuery("select count(*) from complaint");
		List ls = q.list();
		return ls;
	}

	public List getAverageFeedbackCount() {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createSQLQuery("SELECT AVG(rating) FROM Feedback");
		List ls = q.list();
		return ls;
	}

	public List getFileCount() {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createSQLQuery("select count(*) from UserDataVO");
		List ls = q.list();
		return ls;
	}

	@Override
	public List<LoginVO> getUserLoginId(String username) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from LoginVO where username='" + username + "'");
		List<LoginVO> ls = q.list();
		return ls;
	}

	@Override
	public List getFileCount(int loginId) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createSQLQuery("select count(*) from UserDataVO where loginId='" + loginId + "'");
		List ls = q.list();
		return ls;
	}

	@Override
	public List getComplaintCount(int loginId) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createSQLQuery("select count(*) from complaint where loginId='" + loginId + "'");
		List ls = q.list();
		return ls;
	}

	@Override
	public List getAverageFeedbackCount(int loginId) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createSQLQuery("SELECT AVG(rating) FROM Feedback where loginId='" + loginId + "'");
		List ls = q.list();
		return ls;
	}

}