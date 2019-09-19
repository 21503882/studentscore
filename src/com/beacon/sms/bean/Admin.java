package com.beacon.sms.bean;

/**
 * 
 * 作者:beacon 
 * 创建日期:2017年10月22日下午3:19:04 
 * 描述:账号类
 */

public class Admin {
	private String userName;
	private String password;
	private int power;//1表示管理员 2表示学生 3表示老师
	
	public int getPower() {
		return power;
	}

	public void setPower(int power) {
		this.power = power;
	}

	public String getUserName() {

		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Admin [userName=" + userName + ", password=" + password + ", power=" + power + "]";
	}

	

}
