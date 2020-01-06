package com.cwis.service;

import java.util.List;

import com.cwis.model.FeedbackVO;

public interface FeedbackService {

	void insert(FeedbackVO feedbackVO);

	List search();

}
