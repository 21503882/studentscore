package com.beacon.sms.utils;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

/**
 * 
 * ����:beacon
 * ��������:2017��10��28������10:42:42
 * ����:Json��ع�����
 */
public class JsonUtil {
	public void writeJson(String result) {
		HttpServletResponse response=ServletActionContext.getResponse();
		try {
			PrintWriter printWriter=response.getWriter();
			printWriter.write(result);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
