package com.beacon.sms.dao;

import java.util.List;

import com.beacon.sms.bean.Score;
import com.beacon.sms.bean.ScoreSearchBean;

/**
 * 
 * 作者:beacon
 * 创建日期:2017年11月6日上午9:42:17
 * 描述:成绩相关方法的接口
 */
public interface ScoreDao {
	public void addScore(Score score);
	public List<Score> getScoreListByTeacherId(ScoreSearchBean scoreSearchBean);
	public int getScoreListSizeByTeacherId(ScoreSearchBean scoreSearchBean);
	public void updateScore(Score score);
	public void deleteScoreByTeachingId(int teachingId);
}
