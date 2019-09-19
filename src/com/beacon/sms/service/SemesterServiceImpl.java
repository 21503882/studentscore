package com.beacon.sms.service;

import java.util.List;

import com.beacon.sms.bean.Semester;
import com.beacon.sms.dao.SemesterDao;

public class SemesterServiceImpl implements SemesterService {
	private SemesterDao semesterDao;

	public SemesterDao getSemesterDao() {
		return semesterDao;
	}

	public void setSemesterDao(SemesterDao semesterDao) {
		this.semesterDao = semesterDao;
	}

	public List<Semester> getSemesterList() {
		return semesterDao.getSemesterList();
	}
}
