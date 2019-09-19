package com.beacon.sms.utils;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.struts2.ServletActionContext;

import com.beacon.sms.bean.Address;
import com.beacon.sms.bean.Class;
import com.beacon.sms.bean.Course;
import com.beacon.sms.bean.Score;
import com.beacon.sms.bean.Semester;
import com.beacon.sms.bean.Student;
import com.beacon.sms.bean.Teacher;
import com.beacon.sms.bean.Teaching;

/**
 * 
 * 作者:beacon 创建日期:2017年11月8日下午4:21:49 描述:处理Excel的工具类
 */
public class ExcelUtil {
	private String[] headers = { "学年学期", "学号", "姓名", "所在班级", "课程名称", "成绩" };

	public List<Student> readStudentExcel(InputStream inputStream) throws IOException {
		List<Student> list = new ArrayList<Student>();
		HSSFWorkbook hssfWorkbook = new HSSFWorkbook(inputStream);
		Sheet sheet = hssfWorkbook.getSheetAt(0);
		for (int i = 1; i <= sheet.getLastRowNum(); i++) {
			Row row = sheet.getRow(i);
			Student student = new Student();
			student.setStudentName(row.getCell(0).getStringCellValue());
			student.setSex(row.getCell(1).getStringCellValue());
			Address address = new Address();
			address.setProvince(row.getCell(2).getStringCellValue());
			address.setCity(row.getCell(3).getStringCellValue());
			address.setCounty(row.getCell(4).getStringCellValue());
			address.setDetailedAddress(row.getCell(5).getStringCellValue());
			student.setAddress(address);
			student.setBirthday(row.getCell(6).getStringCellValue());
			student.setOrigin(row.getCell(7).getStringCellValue());
			Cell cell = row.getCell(8);
			cell.setCellType(HSSFCell.CELL_TYPE_STRING);
			String content = cell.getStringCellValue();
			student.setCellphone(content);
			cell = row.getCell(9);
			cell.setCellType(HSSFCell.CELL_TYPE_STRING);
			content = cell.getStringCellValue();
			student.setIdCard(content);
			student.setPolitics(row.getCell(10).getStringCellValue());
			list.add(student);
		}
		return list;
	}

	public List<Teacher> readTeacherExcel(InputStream inputStream) throws IOException {
		List<Teacher> list = new ArrayList<Teacher>();
		HSSFWorkbook hssfWorkbook = new HSSFWorkbook(inputStream);
		Sheet sheet = hssfWorkbook.getSheetAt(0);
		for (int i = 1; i <= sheet.getLastRowNum(); i++) {
			Row row = sheet.getRow(i);
			Teacher teacher = new Teacher();
			teacher.setTeacherName(row.getCell(0).getStringCellValue());
			Cell cell = row.getCell(1);
			cell.setCellType(HSSFCell.CELL_TYPE_STRING);
			String content = cell.getStringCellValue();
			teacher.setCellphone(content);
			teacher.setSex(row.getCell(2).getStringCellValue());
			teacher.setBirthday(row.getCell(3).getStringCellValue());
			teacher.setEducation(row.getCell(4).getStringCellValue());
			cell = row.getCell(5);
			cell.setCellType(HSSFCell.CELL_TYPE_STRING);
			content = cell.getStringCellValue();
			teacher.setIdCard(content);
			Address address = new Address();
			address.setProvince(row.getCell(6).getStringCellValue());
			address.setCity(row.getCell(7).getStringCellValue());
			address.setCounty(row.getCell(8).getStringCellValue());
			address.setDetailedAddress(row.getCell(9).getStringCellValue());
			teacher.setAddress(address);
			list.add(teacher);
		}
		return list;
	}

	public void exportExcel(List<Score> list) throws IOException {
		HSSFWorkbook hssfWorkbook = new HSSFWorkbook();
		Sheet sheet = hssfWorkbook.createSheet("学生成绩表");
		Row header = sheet.createRow(0);
		for (int i = 0; i < headers.length; i++) {
			header.createCell(i).setCellValue(headers[i]);
		}
		for (int i = 0; i < list.size(); i++) {
			Row row = sheet.createRow(i + 1);
			Score score = list.get(i);
			Teaching teaching = score.getTeaching();
			Student student = score.getStudent();
			int fenshu = score.getScore();
			Semester semester = teaching.getSemester();
			Class class1 = student.getClass1();
			Course course = teaching.getCourse();
			row.createCell(0).setCellValue(semester.getSemesterName());
			row.createCell(1).setCellValue(student.getStudentNo());
			row.createCell(2).setCellValue(student.getStudentName());
			row.createCell(3).setCellValue(class1.getClassName());
			row.createCell(4).setCellValue(course.getCourseName());
			row.createCell(5).setCellValue(fenshu);
		}
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/vnd.ms-excel");
		response.setHeader("Content-disposition", "attachment;filename=score.xls");
		OutputStream ouputStream = response.getOutputStream();
		hssfWorkbook.write(ouputStream);
		ouputStream.flush();
		ouputStream.close();

	}

	public InputStream getExcelInputStream(List<Score> list) throws IOException {
		HSSFWorkbook hssfWorkbook = new HSSFWorkbook();
		Sheet sheet = hssfWorkbook.createSheet("学生成绩表");
		Row header = sheet.createRow(0);
		for (int i = 0; i < headers.length; i++) {
			header.createCell(i).setCellValue(headers[i]);
		}
		for (int i = 0; i < list.size(); i++) {
			Row row = sheet.createRow(i + 1);
			Score score = list.get(i);
			Teaching teaching = score.getTeaching();
			Student student = score.getStudent();
			int fenshu = score.getScore();
			Semester semester = teaching.getSemester();
			Class class1 = student.getClass1();
			Course course = teaching.getCourse();
			row.createCell(0).setCellValue(semester.getSemesterName());
			row.createCell(1).setCellValue(student.getStudentNo());
			row.createCell(2).setCellValue(student.getStudentName());
			row.createCell(3).setCellValue(class1.getClassName());
			row.createCell(4).setCellValue(course.getCourseName());
			row.createCell(5).setCellValue(fenshu);
		}
		ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
		hssfWorkbook.write(byteArrayOutputStream);
		byte[] buffer = byteArrayOutputStream.toByteArray();
		ByteArrayInputStream byteArrayInputStream=new ByteArrayInputStream(buffer);
		return byteArrayInputStream;

	}
}
