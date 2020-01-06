package com.cwis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cwis.dao.ComplaintDao;
import com.cwis.model.ComplaintVO;

@Service
@Transactional
public class ComplaintServiceImp implements ComplaintService{
	
	@Autowired
	ComplaintDao complaintDao;

	@Override
	public void insert(ComplaintVO complaintVO) {
		this.complaintDao.insert(complaintVO);
		
	}

	@Override
	public List search() {
		List list = this.complaintDao.search();
		return list;
	}

}
