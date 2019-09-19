package com.beacon.sms.dao;

import java.util.List;

import com.beacon.sms.bean.Class;

/**
 * 
 * ����:beacon
 * ��������:2017��10��28������9:33:53
 * ����:����רҵ����ؽӿڷ���
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
