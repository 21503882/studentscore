package com.beacon.sms.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月22日上午10:25:53
 * 描述:字符集拦截器
 */
public class EncodingFilter implements Filter {

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request2=(HttpServletRequest) request;
		HttpServletResponse response2=(HttpServletResponse) response;
		request2.setCharacterEncoding("UTF-8");
		response2.setCharacterEncoding("UTF-8");
		chain.doFilter(request2, response2);
	}

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
