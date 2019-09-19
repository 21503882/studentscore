package com.beacon.sms.dao;

import java.util.List;

import com.beacon.sms.bean.Teaching;
import com.beacon.sms.bean.TeachingSearchBean;

/**
 * 
 * ����:beacon
 * ��������:2017��11��4������10:05:04
 * ����:�����ڿ���ط����Ľӿ�
 */
public interface TeachingDao {
	public List<Teaching> getTeachingList(TeachingSearchBean teachingSearchBean);
	public int getTeachingListSize(TeachingSearchBean teachingSearchBean);
	public void addTeaching(Teaching teaching);
	public void updateTeaching(Teaching teaching);
	public void deleteTeaching(int teachingId);
	public List<Teaching> getTeachingByTeacherId(TeachingSearchBean teachingSearchBean);
	public int getTeachingByTeacherIdSize(TeachingSearchBean teachingSearchBean);
}
