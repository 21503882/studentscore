package com.beacon.sms.bean;

import java.util.List;

/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月31日下午4:14:20
 * 描述:分页实体类
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
