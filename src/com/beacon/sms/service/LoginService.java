package com.beacon.sms.service;

import javax.servlet.http.HttpServletRequest;

import com.beacon.sms.bean.Admin;
import com.beacon.sms.dao.LoginDao;
import com.beacon.sms.utils.ValidateCodeUtil;

/**
 * 
 * 作者:beacon 
 * 创建日期:2017年10月22日上午9:32:44 
 * 描述:登录的逻辑类
 */
public interface LoginService {
	
	public boolean isExist(String userName, String password);

	public boolean isRightCode(HttpServletRequest request, String validateCode);
	
	public void updatePassword(String userName,String password);
	public Admin getAdmin(String userName,String password);


	

}
