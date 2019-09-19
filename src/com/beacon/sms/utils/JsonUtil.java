package com.beacon.sms.utils;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月28日下午10:42:42
 * 描述:Json相关工具类
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
