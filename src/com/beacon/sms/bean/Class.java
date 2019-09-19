package com.beacon.sms.bean;
/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月29日上午10:26:18
 * 描述:班级实体类
 */
public class Class {
	private int id;
	private String classNo;
	private Major major;
	private String className;
	private String status;
	private String joinTime;
	private int studentNum;
	
	public int getStudentNum() {
		return studentNum;
	}
	public void setStudentNum(int studentNum) {
		this.studentNum = studentNum;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getClassNo() {
		return classNo;
	}
	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}
	public Major getMajor() {
		return major;
	}
	public void setMajor(Major major) {
		this.major = major;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getJoinTime() {
		return joinTime;
	}
	public void setJoinTime(String joinTime) {
		this.joinTime = joinTime;
	}
	@Override
	public String toString() {
		return "Class [id=" + id + ", classNo=" + classNo + ", major=" + major + ", className=" + className
				+ ", status=" + status + ", joinTime=" + joinTime + ", studentNum=" + studentNum + "]";
	}
	
	
}
