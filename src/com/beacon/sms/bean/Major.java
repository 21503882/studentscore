package com.beacon.sms.bean;
/**
 * 
 * ����:beacon
 * ��������:2017��10��28������6:39:28
 * ����:רҵ
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
