package com.beacon.sms.bean;
/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月31日下午9:08:12
 * 描述:课程实体类
 */
public class Course {
	private int id;
	private String courseName;
	private int credit;
	private int courseTime;
	private String type;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public int getCredit() {
		return credit;
	}
	public void setCredit(int credit) {
		this.credit = credit;
	}
	public int getCourseTime() {
		return courseTime;
	}
	public void setCourseTime(int courseTime) {
		this.courseTime = courseTime;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "Course [id=" + id + ", courseName=" + courseName + ", credit=" + credit + ", courseTime=" + courseTime
				+ ", type=" + type + "]";
	}
	
}
