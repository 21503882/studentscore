package com.beacon.sms.bean;

/**
 * 
 * ����:beacon 
 * ��������:2017��10��22������3:19:04 
 * ����:�˺���
 */

public class Admin {
	private String userName;
	private String password;
	private int power;//1��ʾ����Ա 2��ʾѧ�� 3��ʾ��ʦ
	
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
