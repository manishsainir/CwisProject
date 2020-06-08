
package com.cwis.dao;

import java.util.List;

import com.cwis.model.LoginVO;
import com.cwis.model.UserDataVO;

public interface UserDao {

	void save(UserDataVO userDataVO);

	List searchByIdLoginId(LoginVO loginVO);

}
