package com.beacon.sms.service;

import java.util.List;

import com.beacon.sms.bean.Admin;
import com.beacon.sms.bean.PageBean;
import com.beacon.sms.bean.Student;
import com.beacon.sms.bean.StudentSearchBean;
import com.beacon.sms.dao.LoginDao;
import com.beacon.sms.dao.MajorDao;
import com.beacon.sms.dao.StudentDao;
import com.beacon.sms.utils.StringUtil;

/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月30日上午9:57:45
 * 描述:处理学生相关的逻辑类
 */
public interface StudentService {
	
	
	

	

	
	public void addStudent(Student student);
	public List getStudentList(int page,int rows);
	public List getStudentList(StudentSearchBean studentSearchBean);
	public void updateStudent(Student student);
	public void deleteStudents(List<Integer> ids);
	public int  getStudentListSize(StudentSearchBean studentSearchBean);
	public Student getStudentByNo(String studentNo);
	public Student getStudentById(int studentId);
	public void updateVoucher(Student student);
	
	
}
