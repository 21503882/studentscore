package com.beacon.sms.service;

import java.util.List;

import com.beacon.sms.bean.Score;
import com.beacon.sms.bean.ScoreSearchBean;
import com.beacon.sms.dao.ScoreDao;

/**
 * 
 * 作者:beacon
 * 创建日期:2017年11月6日上午10:37:01
 * 描述:处理关于成绩的逻辑类
 */
public interface ScoreService {
	
	

	public List<Score> getScoreList(ScoreSearchBean scoreSearchBean);
	public int getScoreListSize(ScoreSearchBean scoreSearchBean);
	public void updateScore(Score score);
}
