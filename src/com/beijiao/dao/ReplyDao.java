/**
 * 
 */
package com.beijiao.dao;

import java.util.List;
import java.util.Map;

import com.beijiao.model.Discuss;
import com.beijiao.model.File;
import com.beijiao.model.Reply;

/**
 * @author cmy
 *����4:26:12
 */
public interface ReplyDao {

	/*
	 * ��ѯ�ظ�
	 */
	public Reply selectReply(Integer replyId);
	public List<Reply> selectListReply();
	/*
	 * ��ӻظ�
	 */
	public int insertDiscuss(Reply reply);
	/*
	 * ɾ���ظ�
	 */
	public int deleteReply(int replyId);
	public List<Discuss> selectReplied();
	public List<Discuss> selectUnReply();
	public boolean updateReplyContent(Discuss dicuss);
	public List<Discuss> selectunRepliedById(int dicussId);
}
