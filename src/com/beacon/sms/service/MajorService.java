package com.beacon.sms.service;

import java.util.List;

import com.beacon.sms.bean.Class;
import com.beacon.sms.bean.Major;
import com.beacon.sms.dao.MajorDao;
import com.beacon.sms.utils.DateUtil;
import com.beacon.sms.utils.StringUtil;

/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月28日下午9:35:52
 * 描述:专业的逻辑类
 */
public interface MajorService {
	
	

	public List getDepartmentList();
	public List getMajorList(int id);
	public void addClass(int majorId,String className);
	public List getClazz(int majorId);
	
}
