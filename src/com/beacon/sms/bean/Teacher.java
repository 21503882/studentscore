package com.beacon.sms.bean;
/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月31日下午5:29:12
 * 描述:教师实体类
 */
public class Teacher {
	private int id;
	private String teacherNo;
	private String teacherName;
	private String cellphone;
	private String sex;
	private String birthday;
	private Department department;
	private String education;
	private Address address;
	private String idCard;
	private String voucher;
	
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getVoucher() {
		return voucher;
	}
	public void setVoucher(String voucher) {
		this.voucher = voucher;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTeacherNo() {
		return teacherNo;
	}
	public void setTeacherNo(String teacherNo) {
		this.teacherNo = teacherNo;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public String getCellphone() {
		return cellphone;
	}
	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Teacher [id=" + id + ", teacherNo=" + teacherNo + ", teacherName=" + teacherName + ", cellphone="
				+ cellphone + ", sex=" + sex + ", birthday=" + birthday + ", department=" + department + ", education="
				+ education + ", address=" + address + ", idCard=" + idCard + ", voucher=" + voucher + "]";
	}
	
	
}
