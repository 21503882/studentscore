package com.beacon.sms.bean;
/**
 * 
 * 作者:beacon
 * 创建日期:2017年11月6日上午9:35:48
 * 描述:成绩实体类
 */
public class Score {
	private int id;
	private Teaching teaching;
	private Student student;
	private int score;
	private int flag;
	
	public Teaching getTeaching() {
		return teaching;
	}
	public void setTeaching(Teaching teaching) {
		this.teaching = teaching;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}

	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	@Override
	public String toString() {
		return "Score [id=" + id + ", teaching=" + teaching + ", student=" + student + ", score=" + score + ", flag="
				+ flag + "]";
	}
	
	
}
