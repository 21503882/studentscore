package com.beacon.sms.bean;
/**
 * 
 * ����:beacon
 * ��������:2017��11��4������9:31:40
 * ����:�����ڿ�����������ʵ����
 */
public class TeachingSearchBean extends PageBean {
	private int teacherId;
	private String teacherNo;
	private String teacherName;
	private String classNo;
	private String className;
	private String courseName;
	private int semesterId;
	
	public int getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}
	public String getTeacherNo() {
		return teacherNo;
	}
	public void setTeacherNo(String teacherNo) {
		this.teacherNo = teacherNo;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public String getClassNo() {
		return classNo;
	}
	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public int getSemesterId() {
		return semesterId;
	}
	public void setSemesterId(int semesterId) {
		this.semesterId = semesterId;
	}
	@Override
	public String toString() {
		return super.toString()+ "TeachingSearchBean [teacherId=" + teacherId + ", teacherNo=" + teacherNo + ", teacherName="
				+ teacherName + ", classNo=" + classNo + ", className=" + className + ", courseName=" + courseName
				+ ", semesterId=" + semesterId + "]";
	}
	
	
	
}
