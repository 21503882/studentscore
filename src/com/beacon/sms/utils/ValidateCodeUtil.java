package com.beacon.sms.utils;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.java2d.loops.DrawRect;

/**
 * 
 * 作者:beacon
 * 创建日期:2017年10月21日上午9:35:34
 * 描述:验证码工具类
 */
public class ValidateCodeUtil {
	private static final int WIDTH=120;
	private static final int HEIGHT=34;
	public boolean checkValidateCode(HttpServletRequest request,String checkCode){
		boolean result=false;
		String code=(String) request.getSession().getAttribute("validateCode");
		if(code!=null&&code.equals(checkCode)){
			result=true;
		}
		return result;
	}
	public String generateValidateCode(){
		String codes="abcdefghijklmnopqrstuvwxyz0123456789";
		StringBuilder stringBuilder=new StringBuilder();
		for(int i=0;i<4;i++){
			String code=codes.charAt(new Random().nextInt(codes.length()))+"";
			stringBuilder.append(code);
		}
		return stringBuilder.toString();
	}
	public void generateValidateImage(HttpServletResponse response,String validateCode){
		response.setContentType("image/jpeg");
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
		BufferedImage bufferedImage=new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_INT_RGB);
		Graphics graphics=bufferedImage.getGraphics();
		drawRect(graphics);
		drawBackground(graphics);
		drawImageCode(graphics,validateCode);
		try {
			
			ImageIO.write(bufferedImage, "jpg", response.getOutputStream());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private void drawImageCode(Graphics graphics, String validateCode) {
		// TODO Auto-generated method stub
		int x=10;
		Font font=new Font(Font.DIALOG, Font.ITALIC, 20);
		graphics.setFont(font);
		for(int i=0;i<validateCode.length();i++){
			int r=new Random().nextInt(255);
			int g=new Random().nextInt(255);
			int b=new Random().nextInt(255);
			graphics.setColor(new Color(r, g, b));
			graphics.drawString(validateCode.charAt(i)+"", x, 25);
			x+=30;
		}
		
	}
	private void drawBackground(Graphics graphics) {
		// TODO Auto-generated method stub
		graphics.setColor(Color.WHITE);
		graphics.fillRect(1, 1, WIDTH-2, HEIGHT-2);
	}
	private void drawRect(Graphics graphics) {
		// TODO Auto-generated method stub
		graphics.setColor(Color.BLACK);
		graphics.drawRect(0, 0, WIDTH, HEIGHT);
	}
}
