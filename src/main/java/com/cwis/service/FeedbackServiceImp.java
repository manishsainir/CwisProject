package com.cwis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cwis.dao.FeedbackDao;
import com.cwis.model.FeedbackVO;

@Service
@Transactional
public class FeedbackServiceImp implements FeedbackService {

	@Autowired
	FeedbackDao feedbackDao;

	public void insert(FeedbackVO feedbackVO) {
		this.feedbackDao.insert(feedbackVO);
	}

	public List search() {
		List list = this.feedbackDao.search();
		return list;
	}

}
