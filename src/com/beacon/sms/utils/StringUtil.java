package com.beacon.sms.utils;
/**
 * 
 * ����:beacon
 * ��������:2017��10��29������3:24:29
 * ����:�����ַ����Ĺ�����
 */
public class StringUtil {
	public String num2String(int num){
		if(num<10){
			return "0"+num;
		}
		return num+"";
	}
}
