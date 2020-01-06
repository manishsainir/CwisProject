package com.cwis.dao;

import java.util.List;

import com.cwis.model.FeedbackVO;

public interface FeedbackDao {

	void insert(FeedbackVO feedbackVO);

	List search();

}
