package com.beacon.sms.bean;
/**
 * 
 * ����:beacon
 * ��������:2017��11��4������9:42:14
 * ����:�ڿ�ʵ����
 */
public class Teaching {
	private int id;
	private Teacher teacher;
	private Class class1;
	private Semester semester;
	private Course course;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	public Class getClass1() {
		return class1;
	}
	public void setClass1(Class class1) {
		this.class1 = class1;
	}
	public Semester getSemester() {
		return semester;
	}
	public void setSemester(Semester semester) {
		this.semester = semester;
	}
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	@Override
	public String toString() {
		return "Teaching [id=" + id + ", teacher=" + teacher + ", class1=" + class1 + ", semester=" + semester
				+ ", course=" + course + "]";
	}
	
}
