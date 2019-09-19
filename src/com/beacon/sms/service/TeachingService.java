package com.beacon.sms.service;

import java.util.List;

import com.beacon.sms.bean.Course;
import com.beacon.sms.bean.Score;
import com.beacon.sms.bean.Semester;
import com.beacon.sms.bean.Student;
import com.beacon.sms.bean.Teacher;
import com.beacon.sms.bean.Teaching;
import com.beacon.sms.bean.TeachingSearchBean;
import com.beacon.sms.dao.ScoreDao;
import com.beacon.sms.dao.StudentDao;
import com.beacon.sms.dao.TeachingDao;

/**
 * 
 * ����:beacon
 * ��������:2017��11��4������10:03:54
 * ����:�����ڿε�����߼���
 */
public interface TeachingService {

	public List<Teaching> getTeachingList(TeachingSearchBean teachingSearchBean);
	
	public int getTeachingListSize(TeachingSearchBean teachingSearchBean);
	public void addTeaching(Teaching teaching);
	public void updateTeaching(Teaching teaching);

	public void addScore(Teaching teaching);
	public void deleteTeaching(List<Integer> ids);
	public List<Teaching> getTeachingByTeacherId(TeachingSearchBean teachingSearchBean);
	public int getTeachingByTeacherIdSize(TeachingSearchBean teachingSearchBean);
}
