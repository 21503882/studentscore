package com.beacon.sms.service;

import java.util.List;

import com.beacon.sms.bean.Course;
import com.beacon.sms.bean.CourseSearchBean;
import com.beacon.sms.bean.PageBean;
import com.beacon.sms.dao.CourseDao;

/**
 * 
 * 作者:beacon 创建日期:2017年10月31日下午9:20:40 描述:处理课程的相关逻辑类
 */
public interface CourseService {
	void addCourse(Course course);

	void updateCourse(Course course);

	void deleteCourse(List<Integer> list);

	List<Course> getCourseList(CourseSearchBean courseSearchBean);

	int getCourseListSize(CourseSearchBean courseSearchBean);

	List<Course> getCourseList();
}
