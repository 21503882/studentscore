package com.beacon.sms.service;

import java.util.List;

import com.beacon.sms.bean.Score;
import com.beacon.sms.bean.ScoreSearchBean;
import com.beacon.sms.dao.ScoreDao;

/**
 * 
 * ����:beacon
 * ��������:2017��11��6������10:37:01
 * ����:������ڳɼ����߼���
 */
public interface ScoreService {
	
	

	public List<Score> getScoreList(ScoreSearchBean scoreSearchBean);
	public int getScoreListSize(ScoreSearchBean scoreSearchBean);
	public void updateScore(Score score);
}
