package com.beacon.sms.bean;
/**
 * 
 * ����:beacon
 * ��������:2017��10��30������10:12:51
 * ����:��ַʵ����
 */
public class Address {
	private String province;
	private String city;
	private String county;
	private String detailedAddress;
	private String address;
	
	public String getAddress() {
		
		this.address=province+"ʡ"+city+"��"+county+detailedAddress;
		
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCounty() {
		return county;
	}
	public void setCounty(String county) {
		this.county = county;
	}
	public String getDetailedAddress() {
		return detailedAddress;
	}
	public void setDetailedAddress(String detailedAddress) {
		this.detailedAddress = detailedAddress;
	}
	@Override
	public String toString() {
		return "Address [province=" + province + ", city=" + city + ", county=" + county + ", detailedAddress="
				+ detailedAddress + ", address=" + address + "]";
	}
	
	
}
