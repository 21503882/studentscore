package com.beacon.sms.bean;

public class CourseSearchBean extends PageBean{
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return super.toString()+"CourseSearchBean [name=" + name + "]";
	}
	
}
