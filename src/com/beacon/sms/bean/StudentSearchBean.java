package com.beacon.sms.bean;
/**
 * 
 * 作者:beacon
 * 创建日期:2017年11月2日下午6:04:23
 * 描述:学生搜索条件的实体类
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
