package com.beacon.sms.bean;
/**
 * 
 * ����:beacon
 * ��������:2017��10��28������6:37:58
 * ����:����ѧԺ
 */
public class Department {
	private  int id;
	private String name;
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
	@Override
	public String toString() {
		return "Department [id=" + id + ", name=" + name + "]";
	}
	
}
