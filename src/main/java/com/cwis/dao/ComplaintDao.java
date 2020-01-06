package com.cwis.dao;

import java.util.List;

import com.cwis.model.ComplaintVO;


public interface ComplaintDao {

	void insert(ComplaintVO complaintVO);

	List search();

}
