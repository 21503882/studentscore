package com.beacon.sms.dao;

import java.util.List;

import com.beacon.sms.bean.Score;
import com.beacon.sms.bean.ScoreSearchBean;

/**
 * 
 * ����:beacon
 * ��������:2017��11��6������9:42:17
 * ����:�ɼ���ط����Ľӿ�
 */
public interface ScoreDao {
	public void addScore(Score score);
	public List<Score> getScoreListByTeacherId(ScoreSearchBean scoreSearchBean);
	public int getScoreListSizeByTeacherId(ScoreSearchBean scoreSearchBean);
	public void updateScore(Score score);
	public void deleteScoreByTeachingId(int teachingId);
}
