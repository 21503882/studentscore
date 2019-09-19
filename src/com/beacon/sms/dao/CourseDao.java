package com.beacon.sms.dao;

import java.util.List;

import com.beacon.sms.bean.Course;
import com.beacon.sms.bean.CourseSearchBean;
import com.beacon.sms.bean.PageBean;

/**
 * 
 * 作者:beacon 
 * 创建日期:2017年10月31日下午9:21:12
 * 描述:课程相关方法的接口
 */
public interface CourseDao {
	public void addCourse(Course course);

	public void updateCourse(Course course);

	public void deleteCourse(int id);

	public List<Course> getCourseList(CourseSearchBean courseSearchBean);
	
	public int getCourseListSize(CourseSearchBean courseSearchBean);
	public List<Course> getCourseList1(); 
}
