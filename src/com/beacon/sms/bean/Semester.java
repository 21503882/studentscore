package com.beacon.sms.bean;
/**
 * 
 * 作者:beacon
 * 创建日期:2017年11月3日下午10:40:02
 * 描述:学期实体类
 */
public class Semester {
	private int id;
	private String semesterName;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSemesterName() {
		return semesterName;
	}
	public void setSemesterName(String semesterName) {
		this.semesterName = semesterName;
	}
	@Override
	public String toString() {
		return "Semester [id=" + id + ", semesterName=" + semesterName + "]";
	}
	
}
