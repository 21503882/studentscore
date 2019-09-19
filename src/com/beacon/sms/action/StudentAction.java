package com.beacon.sms.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;
import com.beacon.sms.bean.DatagridBean;
import com.beacon.sms.bean.PageBean;
import com.beacon.sms.bean.Student;
import com.beacon.sms.bean.StudentSearchBean;
import com.beacon.sms.service.StudentService;
import com.beacon.sms.utils.JsonUtil;

/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月30日上午9:48:08
 * 描述:学生Action
 */
public class StudentAction {
	
	private Student student;
	
	private StudentService studentService;
	
	private JsonUtil jsonUtil;
	
	private String idString;
	private int page;
	private int rows;
	
	private StudentSearchBean studentSearchBean;
	
	public StudentSearchBean getStudentSearchBean() {
		return studentSearchBean;
	}

	public void setStudentSearchBean(StudentSearchBean studentSearchBean) {
		this.studentSearchBean = studentSearchBean;
	}

	public String getIdString() {
		return idString;
	}

	public void setIdString(String idString) {
		this.idString = idString;
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

	public JsonUtil getJsonUtil() {
		return jsonUtil;
	}

	public void setJsonUtil(JsonUtil jsonUtil) {
		this.jsonUtil = jsonUtil;
	}

	public StudentService getStudentService() {
		return studentService;
	}

	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public void add(){
		studentService.addStudent(student);
	}
	public void list(){

		if(studentSearchBean==null){
			studentSearchBean=new StudentSearchBean();
		}
		studentSearchBean.setPage(page);
		studentSearchBean.setRows(rows);
		System.out.println(studentSearchBean);
		List list=studentService.getStudentList(studentSearchBean);
		int total=studentService.getStudentListSize(studentSearchBean);
		DatagridBean<Student> datagridBean=new DatagridBean<Student>();
		datagridBean.setRows(list);
		datagridBean.setTotal(total);
		String result=JSON.toJSONString(datagridBean);
		System.out.println(result);
		jsonUtil.writeJson(result);
	}
	public void update(){
		System.out.println(student.getId());
		
		studentService.updateStudent(student);
	}
	public void delete(){
		String[] ids=idString.split(",");
		List<Integer> list=new ArrayList<Integer>();
		for(int i=0;i<ids.length;i++){
			list.add(Integer.parseInt(ids[i]));
		}
		
		studentService.deleteStudents(list);
	}
	public void getStudentMessage(){
		int studentId=((Student)ServletActionContext.getRequest().getSession().getAttribute("student")).getId();
		Student student=studentService.getStudentById(studentId);
		String result=JSON.toJSONString(student);
		System.out.println(result);
		jsonUtil.writeJson(result);
	}
	public void updateVoucher(){
		studentService.updateVoucher(student);
		
	}
}
