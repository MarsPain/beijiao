/**
 * 
 */
package com.beijiao.service;

import java.util.List;

import com.beijiao.model.Link;

/**
 * @author cmy
 *����11:15:37
 */
public interface LinkService {

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
	/*
	 * �޸�����
	 */
	public int changeLink(Link link);
}
