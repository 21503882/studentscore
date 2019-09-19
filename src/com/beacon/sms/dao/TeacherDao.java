package com.beacon.sms.dao;

import java.util.List;

import com.beacon.sms.bean.Teacher;
import com.beacon.sms.bean.TeacherSearchBean;

/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月31日下午6:38:26
 * 描述:处理教师相关方法的接口
 */
public interface TeacherDao {
	public void addTeacher(Teacher teacher);
	public void setTeacherNo(int teacherId,String teacherNo);
	public List<Teacher> getTeacherList(TeacherSearchBean teacherSearchBean);
	public int getTeacherListSize(TeacherSearchBean teacherSearchBean);
	public void updateTeacher(Teacher teacher);
	public void deleteTeacher(int teacherId);
	public String getTeacherNo(int id);
	public List<Teacher> getTeacherOfDepart(int departmentId);
	public Teacher getTeacherByNo(String teacherNo);
	public Teacher getTeacherById(int teacherId);
	public void updateVoucher(int id,String voucher);
}
