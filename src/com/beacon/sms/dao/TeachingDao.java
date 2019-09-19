package com.beacon.sms.dao;

import java.util.List;

import com.beacon.sms.bean.Teaching;
import com.beacon.sms.bean.TeachingSearchBean;

/**
 * 
 * 作者:beacon
 * 创建日期:2017年11月4日上午10:05:04
 * 描述:处理授课相关方法的接口
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
