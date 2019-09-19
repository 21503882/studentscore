package com.beacon.sms.utils;

import java.util.Calendar;

/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月29日下午3:08:28
 * 描述:关于时间日期的工具类
 */
public class DateUtil {
	public String getYear(){
		Calendar calendar=Calendar.getInstance();
		return calendar.get(Calendar.YEAR)+"";
	}
}
