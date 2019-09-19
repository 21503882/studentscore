package com.beacon.sms.service;

import java.util.List;

import com.beacon.sms.bean.Semester;
import com.beacon.sms.dao.SemesterDao;

/**
 * 
 * 作者:beacon
 * 创建日期:2017年11月3日下午10:39:14
 * 描述:处理学期的逻辑类
 */
public interface SemesterService {
	
	

	public List<Semester> getSemesterList();
}
