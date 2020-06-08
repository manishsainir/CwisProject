package com.cwis.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "UserDataVO")
public class UserDataVO {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userId;
	
	@Lob
	@Column(name = "data")
	private byte[] data;

	@Column(name = "imagePath")
	private String imagePath;

	@Column(name = "imageName")
	private String imageName;

	@Column(name = "algoKey")
	private String algoKey;

	@Column(name = "rawFileName")
	private String rawFileName;

	@Column(name = "rawFilePath")
	private String rawFilePath;

	@Column(name = "date")
	private String date;

	@ManyToOne
	@JoinColumn(name = "loginId")
	private LoginVO loginVO;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public String getAlgoKey() {
		return algoKey;
	}

	public void setAlgoKey(String algoKey) {
		this.algoKey = algoKey;
	}

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
	}

	public String getRawFileName() {
		return rawFileName;
	}

	public void setRawFileName(String rawFileName) {
		this.rawFileName = rawFileName;
	}

	public String getRawFilePath() {
		return rawFilePath;
	}

	public void setRawFilePath(String rawFilePath) {
		this.rawFilePath = rawFilePath;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

}
