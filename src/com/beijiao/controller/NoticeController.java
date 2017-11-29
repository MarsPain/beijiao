package com.beijiao.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.beijiao.model.Notice;
import com.beijiao.service.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {

	@Resource
	private NoticeService noticeService;
	
	@RequestMapping("toNotice")
	public String toNotice(int noticeId,Model model){
		Notice notice=noticeService.selectNotice(noticeId);
		if(notice!=null){
		model.addAttribute("notice", notice);
			return "notice";
		}else{
			return "";
		}
	}
	
	@RequestMapping("toNotices")
	public String toNotices(Model model){
		List<Notice> notices=noticeService.selectListNotice();
		model.addAttribute("notices", notices);
		return "notice-list";
	}
	
	@RequestMapping("addNotice")
	public String addNotice(Notice notice,Model model){
		int n=noticeService.insertNotice(notice);
		if(n!=0){
		    return "";	 
	    }else{
	    	return "forward:";
	         }
	}	
	
	@RequestMapping("changeNotice")
	public String changeNotice(Notice notice,Model model){
		int n=noticeService.updateNotice(notice);
		if(n!=0){
		    return "";	 
	    }else{
	    	return "forward:";
	         }
	}
	
	@RequestMapping("deleteNotice")
	public String deleteNotice(int noticeId,Model model){
		int n=noticeService.deleteNotice(noticeId);
		if(n!=0){
		    return "";	 
	    }else{
	    	return "forward:";
	         }
	}
	
	  
}
