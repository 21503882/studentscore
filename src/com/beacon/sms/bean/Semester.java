package com.beacon.sms.bean;
/**
 * 
 * ����:beacon
 * ��������:2017��11��3������10:40:02
 * ����:ѧ��ʵ����
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
