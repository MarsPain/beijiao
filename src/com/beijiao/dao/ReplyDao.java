/**
 * 
 */
package com.beijiao.dao;

import java.util.List;

import com.beijiao.model.Discuss;
import com.beijiao.model.Reply;

/**
 * @author cmy
 *����4:26:12
 */
public interface ReplyDao {

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
