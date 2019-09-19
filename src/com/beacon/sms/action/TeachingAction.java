package com.beacon.sms.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;
import com.beacon.sms.bean.DatagridBean;
import com.beacon.sms.bean.Teacher;
import com.beacon.sms.bean.TeacherSearchBean;
import com.beacon.sms.bean.Teaching;
import com.beacon.sms.bean.TeachingSearchBean;
import com.beacon.sms.service.TeachingService;
import com.beacon.sms.utils.JsonUtil;
import com.sun.jndi.toolkit.ctx.StringHeadTail;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

/**
 * 
 * 作者:beacon
 * 创建日期:2017年11月4日上午10:02:28
 * 描述:授课Action
 */
public class TeachingAction {
	private TeachingService teachingService;
	private JsonUtil jsonUtil;
	private Teaching teaching;
	private String idString;
	private TeachingSearchBean teachingSearchBean;
	private int page;
	private int rows;
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
	
	public TeachingSearchBean getTeachingSearchBean() {
		return teachingSearchBean;
	}
	public void setTeachingSearchBean(TeachingSearchBean teachingSearchBean) {
		this.teachingSearchBean = teachingSearchBean;
	}
	public String getIdString() {
		return idString;
	}
	public void setIdString(String idString) {
		this.idString = idString;
	}
	public Teaching getTeaching() {
		return teaching;
	}
	public void setTeaching(Teaching teaching) {
		this.teaching = teaching;
	}
	public JsonUtil getJsonUtil() {
		return jsonUtil;
	}
	public void setJsonUtil(JsonUtil jsonUtil) {
		this.jsonUtil = jsonUtil;
	}
	public TeachingService getTeachingService() {
		return teachingService;
	}
	public void setTeachingService(TeachingService teachingService) {
		this.teachingService = teachingService;
	}
	public void list(){
		if(teachingSearchBean==null){
			teachingSearchBean =new TeachingSearchBean();
		}
		teachingSearchBean.setPage(page);
		teachingSearchBean.setRows(rows);
		List<Teaching> list=teachingService.getTeachingList(teachingSearchBean);
		int total=teachingService.getTeachingListSize(teachingSearchBean);
		DatagridBean<Teaching> datagridBean=new DatagridBean<Teaching>();
		datagridBean.setRows(list);
		datagridBean.setTotal(total);
		System.out.println(teachingSearchBean);
		String result=JSON.toJSONString(datagridBean);
		System.out.println(result);
		jsonUtil.writeJson(result);
	}
	public void add(){
		teachingService.addTeaching(teaching);
	}
	public void update(){
		teachingService.updateTeaching(teaching);
	}
	public void delete(){
		String[] ids=idString.split(",");
		List<Integer> list=new ArrayList<Integer>();
		for(int i=0;i<ids.length;i++){
			list.add(Integer.parseInt(ids[i]));
		}
 		teachingService.deleteTeaching(list);
	}
	public void getTeachingDetail(){
		int teacherId=((Teacher) ServletActionContext.getRequest().getSession().getAttribute("teacher")).getId();
		System.out.println(teacherId);
		if(teachingSearchBean==null){
			teachingSearchBean=new TeachingSearchBean();
		}
		teachingSearchBean.setPage(page);
		teachingSearchBean.setRows(rows);
		teachingSearchBean.setTeacherId(teacherId);
		System.out.println(teachingSearchBean.toString());
		List<Teaching> list=teachingService.getTeachingByTeacherId(teachingSearchBean);
		int total=teachingService.getTeachingByTeacherIdSize(teachingSearchBean);
		DatagridBean<Teaching> datagridBean=new DatagridBean<Teaching>();
		datagridBean.setRows(list);
		datagridBean.setTotal(total);
		String result = JSON.toJSONString(datagridBean);
		System.out.println(result);
		jsonUtil.writeJson(result);
	}
}
