/**
 * 
 */
package com.beijiao.service;

import java.util.List;

import com.beijiao.model.Reply;

/**
 * @author cmy
 *����4:32:02
 */
public interface ReplyService {

	/*
	 * ��ѯ�ظ�
	 */
	public Reply selectReply(int replyId);
	public List<Reply> selectListReply();
	/*
	 * ��ӻظ�
	 */
	public int insertDiscuss(Reply reply);
	/*
	 * ɾ���ظ�
	 */
	public int deleteReply(int replyId);
}

