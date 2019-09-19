package com.beacon.sms.service;

import java.util.List;

import com.beacon.sms.bean.Course;
import com.beacon.sms.bean.CourseSearchBean;
import com.beacon.sms.bean.PageBean;
import com.beacon.sms.dao.CourseDao;

/**
 * 
 * ����:beacon ��������:2017��10��31������9:20:40 ����:����γ̵�����߼���
 */
public interface CourseService {
	void addCourse(Course course);

	void updateCourse(Course course);

	void deleteCourse(List<Integer> list);

	List<Course> getCourseList(CourseSearchBean courseSearchBean);

	int getCourseListSize(CourseSearchBean courseSearchBean);

	List<Course> getCourseList();
}
