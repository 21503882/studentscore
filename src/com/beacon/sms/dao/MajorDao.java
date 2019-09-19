package com.beacon.sms.dao;

import java.util.List;

import com.beacon.sms.bean.Class;

/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月28日下午9:33:53
 * 描述:关于专业的相关接口方法
 */
public interface MajorDao {
	public List getDepartmentList();
	public List getMajorListById(int id);
	public void addClass(Class class1);
	public int getDepartIdByMajorId(int majorId);
	public void setClassNo(String classNo,int id);
	public List getClazzList(int majorId);
	public void addStudentNum(int classId);
	public Class  getClazz(int classId);
	public void reduceStudentNum(int classId);
}
