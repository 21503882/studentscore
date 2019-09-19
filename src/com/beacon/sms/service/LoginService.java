package com.beacon.sms.service;

import javax.servlet.http.HttpServletRequest;

import com.beacon.sms.bean.Admin;
import com.beacon.sms.dao.LoginDao;
import com.beacon.sms.utils.ValidateCodeUtil;

/**
 * 
 * ����:beacon 
 * ��������:2017��10��22������9:32:44 
 * ����:��¼���߼���
 */
public interface LoginService {
	
	public boolean isExist(String userName, String password);

	public boolean isRightCode(HttpServletRequest request, String validateCode);
	
	public void updatePassword(String userName,String password);
	public Admin getAdmin(String userName,String password);


	

}
