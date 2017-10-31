/**
 * 
 */
package com.beijiao.dao;

import java.util.List;

import com.beijiao.model.Link;

/**
 * @author cmy
 *����11:11:38
 */
public interface LinkMapper {

	
	/*
	 * ��ѯ����
	 */
	public Link selectLink(int linkId);
	public List<Link> selectLIstLink();
	/*
	 * �����Ŀ�걨����
	 */
	public int addLink(Link link);
	/*
	 * ɾ������
	 */
	public int deleteLink(int linkId);
	/*
	 * �޸�����
	 */
	public int changeLink(Link link);
	public int changeLinkName(String linkName);
	public int changeLinkAddress(String linkAddress);
}
