package com.beacon.sms.bean;
/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月28日下午6:39:28
 * 描述:专业
 */
public class Major {
	private int id;
	private String name;
	private Department department;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	@Override
	public String toString() {
		return "Major [id=" + id + ", name=" + name + ", department=" + department + "]";
	}
	
}
