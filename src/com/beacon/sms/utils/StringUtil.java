package com.beacon.sms.utils;
/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月29日下午3:24:29
 * 描述:关于字符串的工具类
 */
public class StringUtil {
	public String num2String(int num){
		if(num<10){
			return "0"+num;
		}
		return num+"";
	}
}
