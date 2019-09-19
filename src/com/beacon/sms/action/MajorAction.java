package com.beacon.sms.action;

import com.alibaba.fastjson.JSON;
import com.beacon.sms.service.MajorService;
import com.beacon.sms.utils.JsonUtil;

/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月28日下午9:27:07
 * 描述:专业Action
 */
public class MajorAction {
	private int departmentId;
	private int majorId;
	private String className;
	private MajorService majorService;
	private JsonUtil jsonUtil;
	
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public int getMajorId() {
		return majorId;
	}
	public void setMajorId(int majorId) {
		this.majorId = majorId;
	}
	public JsonUtil getJsonUtil() {
		return jsonUtil;
	}
	public void setJsonUtil(JsonUtil jsonUtil) {
		this.jsonUtil = jsonUtil;
	}
	public int getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}
	public MajorService getMajorService() {
		return majorService;
	}
	public void setMajorService(MajorService majorService) {
		this.majorService = majorService;
	}
	
	public void  getMajor(){
		String result=JSON.toJSONString(majorService.getMajorList(departmentId));
		jsonUtil.writeJson(result);
	}
	public void getDepart(){
		String result=JSON.toJSONString(majorService.getDepartmentList());
		jsonUtil.writeJson(result);
	}
	public void addClass(){
		majorService.addClass(majorId, className);
	}
	public void getClazz(){
		String result=JSON.toJSONString(majorService.getClazz(majorId));
		jsonUtil.writeJson(result);
	}
}
