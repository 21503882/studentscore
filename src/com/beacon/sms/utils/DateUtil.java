package com.beacon.sms.utils;

import java.util.Calendar;

/**
 * 
 * ����:beacon
 * ��������:2017��10��29������3:08:28
 * ����:����ʱ�����ڵĹ�����
 */
public class DateUtil {
	public String getYear(){
		Calendar calendar=Calendar.getInstance();
		return calendar.get(Calendar.YEAR)+"";
	}
}
