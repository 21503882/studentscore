package com.beacon.sms.bean;
/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月29日下午7:32:02
 * 描述:学生实体类
 */
public class Student {
	private int id ;
	private String studentNo;
	private String studentName;
	private Address address;
	private String sex;
	private String birthday;
	private String origin;
	private String cellphone;
	private String idCard;
	private String imageUrl;
	private String status;
	private String politics;
	private Class class1;
	private String voucher;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStudentNo() {
		return studentNo;
	}
	public void setStudentNo(String studentNo) {
		this.studentNo = studentNo;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
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
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getCellphone() {
		return cellphone;
	}
	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPolitics() {
		return politics;
	}
	public void setPolitics(String politics) {
		this.politics = politics;
	}
	public Class getClass1() {
		return class1;
	}
	public void setClass1(Class class1) {
		this.class1 = class1;
	}
	public String getVoucher() {
		return voucher;
	}
	public void setVoucher(String voucher) {
		this.voucher = voucher;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", studentNo=" + studentNo + ", studentName=" + studentName + ", address="
				+ address + ", sex=" + sex + ", birthday=" + birthday + ", origin=" + origin + ", cellphone="
				+ cellphone + ", idCard=" + idCard + ", imageUrl=" + imageUrl + ", status=" + status + ", politics="
				+ politics + ", class1=" + class1 + ", voucher=" + voucher + "]";
	}
	
	
}
