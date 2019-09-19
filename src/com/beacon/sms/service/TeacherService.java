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
 * 作者:beacon
 * 创建日期:2017年10月31日下午6:37:23
 * 描述:处理教师的逻辑类
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
