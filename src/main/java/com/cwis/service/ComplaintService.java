package com.cwis.service;

import java.util.List;

import com.cwis.model.ComplaintVO;

public interface ComplaintService {

	void insert(ComplaintVO complaintVO);

	List search();

}
