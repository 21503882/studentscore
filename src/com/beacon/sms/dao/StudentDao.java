package com.beacon.sms.dao;

import java.util.List;

import com.beacon.sms.bean.PageBean;
import com.beacon.sms.bean.Student;
import com.beacon.sms.bean.StudentSearchBean;

/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月30日上午9:58:17
 * 描述:关于学生的相关接口方法
 */
public interface StudentDao {
	public void add(Student student);
	public void setStudentNo(int id,String studentNo);
	public List getStudentList(int start,int rows);
	public List getStudentList1(StudentSearchBean studentSearchBean);
	public int getStudentListSize(StudentSearchBean studentSearchBean);
	public void updateStudent(Student student);
	public int getClassId(int id);
	public void deleteStudent(int studentId);
	public String getStudentNo(int id);
	public Student getStudentByNo(String studentNo);
	public List<Integer> getListOfStudentIdByClassId(int classId);
	public Student getStudentById(int studentId);
	public void updateVoucher(Student student);
	
}
