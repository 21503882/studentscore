package com.beacon.sms.bean;
/**
 * 
 * 作者:beacon
 * 创建日期:2017年11月2日下午5:47:35
 * 描述:分页实体类
 */
public class PageBean {
	private int page;
	private int rows;
	private int start;
	
	public int getStart() {
		start=(page-1)*rows;
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	@Override
	public String toString() {
		return "PageBean [page=" + page + ", rows=" + rows + ", start=" + start + "]";
	}
	
	
	
}
