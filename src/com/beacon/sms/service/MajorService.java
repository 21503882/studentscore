package com.beacon.sms.service;

import java.util.List;

import com.beacon.sms.bean.Class;
import com.beacon.sms.bean.Major;
import com.beacon.sms.dao.MajorDao;
import com.beacon.sms.utils.DateUtil;
import com.beacon.sms.utils.StringUtil;

/**
 * 
 * ����:beacon
 * ��������:2017��10��28������9:35:52
 * ����:רҵ���߼���
 */
public interface MajorService {
	
	

	public List getDepartmentList();
	public List getMajorList(int id);
	public void addClass(int majorId,String className);
	public List getClazz(int majorId);
	
}
