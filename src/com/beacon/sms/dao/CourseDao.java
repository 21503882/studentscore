package com.beacon.sms.dao;

import java.util.List;

import com.beacon.sms.bean.Course;
import com.beacon.sms.bean.CourseSearchBean;
import com.beacon.sms.bean.PageBean;

/**
 * 
 * ����:beacon 
 * ��������:2017��10��31������9:21:12
 * ����:�γ���ط����Ľӿ�
 */
public interface CourseDao {
	public void addCourse(Course course);

	public void updateCourse(Course course);

	public void deleteCourse(int id);

	public List<Course> getCourseList(CourseSearchBean courseSearchBean);
	
	public int getCourseListSize(CourseSearchBean courseSearchBean);
	public List<Course> getCourseList1(); 
}
