/**
 * 
 */
package com.beijiao.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.beijiao.model.File;
import com.beijiao.model.Reply;
import com.beijiao.service.ReplyService;



/**
 * @author cmy
 *����2:10:51
 */
@Controller
@RequestMapping("/reply")
public class ReplyController {

	@Resource
	private ReplyService replyService;
	/*��ѯ����*/
	@RequestMapping("getReply")
	public String getReply(Model model,int replyId){
		Reply reply=replyService.selectReply(replyId);
		model.addAttribute("reply", reply);
		return "success";
	}
	/*��ѯ���л���*/
	@RequestMapping("getListReply")
	public String getListReply(Model model){
		List<Reply> replys=replyService.selectListReply();
		model.addAttribute("replys", replys);
		return "success";
	}
	/*��ӻ���*/
	@RequestMapping("addReply")
	public String addReply(Reply reply){
		int n=replyService.insertDiscuss(reply);
		if(n!=0){
			return "forward:getListReply";
		}else{
			return "";
		}		
	}
	/*ɾ������*/
	@RequestMapping("deleteReply")
	public String deleteReply(int replyId){
		int n=replyService.deleteReply(replyId);
		if(n!=0){
			return "forward:getListReply";
		}else{
			return "";
		}	
	}
	
}
