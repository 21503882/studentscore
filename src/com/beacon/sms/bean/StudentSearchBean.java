package com.beacon.sms.bean;
/**
 * 
 * ����:beacon
 * ��������:2017��11��2������6:04:23
 * ����:ѧ������������ʵ����
 */
public class StudentSearchBean  extends PageBean{
	private String studentNo;
	private String studentName;
	private String sex;
	public String getStudentNo() {
		return studentNo;
	}
	public void setStudentNo(String studentNo) {
		this.studentNo = studentNo;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	@Override
	public String toString() {
		return super.toString()+"StudentSearchBean [studentNo=" + studentNo + ", studentName=" + studentName + ", sex=" + sex + "]";
	}
	
	
}
