package com.beacon.sms.dao;

import com.beacon.sms.bean.Admin;

/**
 * 
 * ����:beacon
 * ��������:2017��10��22������9:32:28
 * ����:��¼����ؽӿڷ���
 */
public interface LoginDao {
	public String getPassword(String userName);
	public void addAdmin(Admin admin);
	public Admin getAdmin(String userName,String password);
	public void deleteAdmin(String userName);
	public void updatePassword(String userName,String password);
}
