package com.beacon.sms.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;
import com.beacon.sms.bean.Admin;
import com.beacon.sms.bean.DatagridBean;
import com.beacon.sms.bean.Teacher;
import com.beacon.sms.bean.TeacherSearchBean;
import com.beacon.sms.service.TeacherService;
import com.beacon.sms.utils.JsonUtil;

/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月31日下午6:36:20
 * 描述:教师Action
 */
public class TeacherAction {
	private TeacherService teacherService;
	private Teacher teacher;
	private JsonUtil jsonUtil;
	private String idString;
	private TeacherSearchBean teacherSearchBean;
	private int page;
	private int rows;
	private int departmentId;
	
	public int getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
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

	public TeacherSearchBean getTeacherSearchBean() {
		return teacherSearchBean;
	}

	public void setTeacherSearchBean(TeacherSearchBean teacherSearchBean) {
		this.teacherSearchBean = teacherSearchBean;
	}

	public String getIdString() {
		return idString;
	}

	public void setIdString(String idString) {
		this.idString = idString;
	}

	public JsonUtil getJsonUtil() {
		return jsonUtil;
	}

	public void setJsonUtil(JsonUtil jsonUtil) {
		this.jsonUtil = jsonUtil;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public TeacherService getTeacherService() {
		return teacherService;
	}

	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}

	public void add(){
		System.out.println(teacher.toString());
		teacherService.addTeacher(teacher);
	}
	public void list(){
		if(teacherSearchBean==null){
			teacherSearchBean=new TeacherSearchBean();
			System.out.println("null");
		}
		System.out.println(teacherSearchBean.toString());
		teacherSearchBean.setPage(page);
		teacherSearchBean.setRows(rows);
		List<Teacher> list=teacherService.getTeacherList(teacherSearchBean);
		int total=teacherService.getTeacherListSize(teacherSearchBean);
		DatagridBean<Teacher> datagridBean=new DatagridBean<Teacher>();
		datagridBean.setRows(list);
		datagridBean.setTotal(total);
		String result=JSON.toJSONString(datagridBean);
		System.out.println(result);
		jsonUtil.writeJson(result);
	}
	public void update(){
		System.out.println(teacher);
		teacherService.updateTeacher(teacher);
		
	}
	public void delete(){
		String[] ids=idString.split(",");
		List<Integer> list=new ArrayList<Integer>();
		for(int i=0;i<ids.length;i++){
			list.add(Integer.parseInt(ids[i]));
		}
		teacherService.deleteTeacher(list);
	}
	public void getTeacherOfDepart(){
		String result=JSON.toJSONString(teacherService.getTeacherOfDepart(departmentId));
		jsonUtil.writeJson(result);
	}
	public void  getTeacherMessage(){
		HttpServletRequest request=ServletActionContext.getRequest();
		int teacherId=((Teacher) request.getSession().getAttribute("teacher")).getId();
		Teacher teacher=teacherService.getTeacher(teacherId);
		String result=JSON.toJSONString(teacher);
		System.out.println(result);
		jsonUtil.writeJson(result);
	}
	public void updateVoucher(){
		int id=teacher.getId();
		String voucher=teacher.getVoucher();
		teacherService.updateVoucher(id, voucher);
	}
	
}
