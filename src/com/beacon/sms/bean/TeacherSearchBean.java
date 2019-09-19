package com.beacon.sms.bean;
/**
 * 
 * 作者:beacon
 * 创建日期:2017年11月3日上午9:20:03
 * 描述:教师搜索条件的实体类
 */
public class TeacherSearchBean extends PageBean {
	private String teacherNo;
	private String teacherName;
	private String sex;
	private int departmentId;
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}
	@Override
	public String toString() {
		return super.toString()+"TeacherSearchBean [teacherNo=" + teacherNo + ", teacherName=" + teacherName + ", sex=" + sex
				+ ", departmentId=" + departmentId + "]";
	}
	
}
