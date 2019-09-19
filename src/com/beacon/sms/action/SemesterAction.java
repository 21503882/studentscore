package com.beacon.sms.action;

import java.util.List;

import com.alibaba.fastjson.JSON;
import com.beacon.sms.bean.Semester;
import com.beacon.sms.service.SemesterService;
import com.beacon.sms.utils.JsonUtil;

/**
 * 
 * 作者:beacon
 * 创建日期:2017年11月3日下午10:38:36
 * 描述:学期Action
 */
public class SemesterAction {
	private SemesterService semesterService;
	private JsonUtil jsonUtil;
	
	public JsonUtil getJsonUtil() {
		return jsonUtil;
	}

	public void setJsonUtil(JsonUtil jsonUtil) {
		this.jsonUtil = jsonUtil;
	}

	public SemesterService getSemesterService() {
		return semesterService;
	}

	public void setSemesterService(SemesterService semesterService) {
		this.semesterService = semesterService;
	}

	public void list(){
		List<Semester> list=semesterService.getSemesterList();
		String result=JSON.toJSONString(list);
		jsonUtil.writeJson(result);
	}
}
