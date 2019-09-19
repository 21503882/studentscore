package com.beacon.sms.dao;

import java.util.List;

import com.beacon.sms.bean.Semester;

/**
 * 
 * 作者:beacon
 * 创建日期:2017年11月3日下午10:41:49
 * 描述:关于学期的相关接口
 */
public interface SemesterDao {
	public List<Semester> getSemesterList();
}
