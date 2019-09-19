package com.beacon.sms.action;

import java.util.List;

import com.alibaba.fastjson.JSON;
import com.beacon.sms.bean.Semester;
import com.beacon.sms.service.SemesterService;
import com.beacon.sms.utils.JsonUtil;

/**
 * 
 * ����:beacon
 * ��������:2017��11��3������10:38:36
 * ����:ѧ��Action
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
