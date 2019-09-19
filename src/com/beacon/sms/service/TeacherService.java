package com.beacon.sms.service;

import java.util.List;

import com.beacon.sms.bean.Admin;
import com.beacon.sms.bean.Teacher;
import com.beacon.sms.bean.TeacherSearchBean;
import com.beacon.sms.dao.LoginDao;
import com.beacon.sms.dao.TeacherDao;
import com.beacon.sms.utils.DateUtil;
import com.beacon.sms.utils.StringUtil;

/**
 * 
 * ����:beacon
 * ��������:2017��10��31������6:37:23
 * ����:�����ʦ���߼���
 */
public interface TeacherService {


	public void addTeacher(Teacher teacher);
	public List<Teacher> getTeacherList(TeacherSearchBean teacherSearchBean);
	public int getTeacherListSize(TeacherSearchBean teacherSearchBean);
	public void updateTeacher(Teacher teacher);
	public void deleteTeacher(List<Integer> ids);
	public List<Teacher> getTeacherOfDepart(int departmentId);
	public Teacher getTeacher(int teacherId);
	public void updateVoucher(int id,String voucher);
	public Teacher getTeacherByNo(String teacherNo);
}
