package com.beacon.sms.dao;

import java.util.List;

import com.beacon.sms.bean.PageBean;
import com.beacon.sms.bean.Student;
import com.beacon.sms.bean.StudentSearchBean;

/**
 * 
 * ����:beacon
 * ��������:2017��10��30������9:58:17
 * ����:����ѧ������ؽӿڷ���
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
