
package com.cwis.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity

@Table(name = "UserData")
public class UserVO {

	@Id

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userId;

	@Column(name = "textData")
	private String textData;

	@Column(name = "filePath")
	private String filePath;

	@Column(name = "fileName")
	private String fileName;

	@Column(name = "algoType")
	private String algoType;

	@ManyToOne

	@JoinColumn(name = "loginId")
	private LoginVO loginVO;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}


	
	public String getTextData() {
		return textData;
	}

	public void setTextData(String textData) {
		this.textData = textData;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	public String getAlgoType() {
		return algoType;
	}

	public void setAlgoType(String algoType) {
		this.algoType = algoType;
	}

}
