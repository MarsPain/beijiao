/**
 * 
 */
package com.beijiao.dao;

import java.util.List;

import com.beijiao.model.News;

/**
 * @author cmy
 *����11:11:38
 */
public interface NewsMapper {

	/*
	 * ��ѯ��������
	 */
	public News selectNews(int newsId);
	public List<News> selectListNews();
	
	/*
	 * �������
	 */
	public int addNews(News news);
	/*
	 * ɾ������
	 */
	public int deleteNews(int newsId);
	/*
	 * �޸�����
	 */
	public int changeNews(String newsContent);
	
	/**
	 * ���ó���ҳ�Ƽ�
	 */
	public int setHot(int a);
	
}
