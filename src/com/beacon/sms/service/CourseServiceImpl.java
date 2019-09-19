package com.beacon.sms.service;

import java.util.List;

import com.beacon.sms.bean.Course;
import com.beacon.sms.bean.CourseSearchBean;
import com.beacon.sms.dao.CourseDao;

public class CourseServiceImpl implements CourseService{
private CourseDao courseDao;
	
	public CourseDao getCourseDao() {
		return courseDao;
	}

	public void setCourseDao(CourseDao courseDao) {
		this.courseDao = courseDao;
	}

	public void addCourse(Course course){
		courseDao.addCourse(course);
	}

	public void updateCourse(Course course) {
		courseDao.updateCourse(course);
	}

	public void deleteCourse(List<Integer> list) {
		for(int i=0;i<list.size();i++){
			courseDao.deleteCourse(list.get(i));
		}
	}

	public List<Course> getCourseList(CourseSearchBean courseSearchBean) {
		// TODO Auto-generated method stub
		return courseDao.getCourseList(courseSearchBean);
	}
	public int getCourseListSize(CourseSearchBean courseSearchBean){
		return courseDao.getCourseListSize(courseSearchBean);
	}
	public List<Course> getCourseList(){
		return courseDao.getCourseList1();
	}
}
