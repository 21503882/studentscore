package com.beacon.sms.bean;

import java.util.List;

/**
 * 
 * ����:beacon
 * ��������:2017��10��31������4:14:20
 * ����:��ҳʵ����
 */
public class DatagridBean<T> {
	private List<T> rows;
	private int total;
	public List<T> getRows() {
		return rows;
	}
	public void setRows(List<T> rows) {
		this.rows = rows;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	@Override
	public String toString() {
		return "PageBean [rows=" + rows + ", total=" + total + "]";
	}
	
	
}
