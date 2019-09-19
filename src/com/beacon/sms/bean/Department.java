package com.beacon.sms.bean;
/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月28日下午6:37:58
 * 描述:二级学院
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
