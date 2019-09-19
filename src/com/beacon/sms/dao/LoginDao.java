package com.beacon.sms.dao;

import com.beacon.sms.bean.Admin;

/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月22日上午9:32:28
 * 描述:登录的相关接口方法
 */
public interface LoginDao {
	public String getPassword(String userName);
	public void addAdmin(Admin admin);
	public Admin getAdmin(String userName,String password);
	public void deleteAdmin(String userName);
	public void updatePassword(String userName,String password);
}
