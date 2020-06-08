
package com.cwis.service;

import java.util.List;

import com.cwis.model.LoginVO;
import com.cwis.model.UserDataVO;

public interface UserService {

	void save(UserDataVO userDataVO);

	List searchByLoginId(LoginVO loginVO);

}
