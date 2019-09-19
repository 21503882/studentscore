package com.beacon.sms.dao;

import java.util.List;

import com.beacon.sms.bean.Teacher;
import com.beacon.sms.bean.TeacherSearchBean;

/**
 * 
 * ����:beacon
 * ��������:2017��10��31������6:38:26
 * ����:�����ʦ��ط����Ľӿ�
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
