/**
 * 
 */
package com.beijiao.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.beijiao.dao.UserMapper;
import com.beijiao.model.Discuss;
import com.beijiao.model.News;
import com.beijiao.model.PClass;
import com.beijiao.model.PolInterpre;
import com.beijiao.model.Policy;
import com.beijiao.model.User;
import com.beijiao.service.DiscussService;
import com.beijiao.service.NewsService;
import com.beijiao.service.PClassService;
import com.beijiao.service.PolInterpreService;
import com.beijiao.service.PolicyService;
import com.beijiao.service.UserService;

/**
 * @author cmy lh
 *time 2:29:29
 */

@Controller
@RequestMapping("/index")
public class LoginController {

	@Resource
	private UserService userService;
	@Resource
	private PolicyService policyService;
	@Resource
	private PolInterpreService polInterpreService;
	@Resource
	private NewsService newsService;
	@Resource
	//如果不注解则会报空指针的错误
	private DiscussService discussService;
	@Resource
	private PClassService pclassService;
	/*
	 * test
	 */
	@RequestMapping("toindex")
	public String Login(Model model){
		
		
		//to index ,getpolicys,getdifferentTypePolicy,get朝阳policy
		List<Policy> policy1=policyService.selectPolicyType("国家");
		model.addAttribute("policy1", policy1);
		List<Policy> policy2=policyService.selectPolicyType("市");
		model.addAttribute("policy2", policy2);
		List<Policy> policy3=policyService.selectPolicyType("区");
		model.addAttribute("policy3", policy3);
		//三级联动查询
		List<Policy> areas=policyService.selectPolicyArea("朝阳区");
		for(int i=0;i<areas.size();i++){
			areas.get(i).setPolTitle(areas.get(i).getPolTitle().substring(0, 16));
	     }
		model.addAttribute("areas", areas);
		//getPolInterpre
		List<PolInterpre> polInterpres=polInterpreService.selectListPolInterpre();		
		model.addAttribute("polInterpres",polInterpres);
		//getNews
		List<News> hot=newsService.selectListNews();
		List<News> hots=null;
		if(hot.size()>10){
		    hots=hot.subList(0, 9);
		}else{
			hots=hot;
		}
		model.addAttribute("hots", hots);		
		//getDiscuss
		List<Discuss> discussion=discussService.selectListDiscuss();
		model.addAttribute("discussion", discussion);
		//filedown
		List<Policy> files=policyService.getLimitFile();		
		for(int i=0;i<files.size();i++){
		  if(files.get(i).getPolTitle().length()>17){
			files.get(i).setPolTitle(files.get(i).getPolTitle().substring(0, 16));
		   }
		}
		model.addAttribute("files", files);
		return "index";
	}
	
	@RequestMapping("test")
	public String test(){
	
	    return "admin/main";
	}

	
	/*
	 * login
	 */
	@RequestMapping("login")
	public String login(HttpSession session,String username,String password,Model model){
		
		/*ModelAndView mav=new ModelAndView();*/
		Map map=new HashMap();
		map.put("username1",username);
		map.put("password",password);	
		System.out.println(map);
		User user=userService.login(map);
		//System.out.println(user+"user");
		if(user!=null){	
			//getUser
			model.addAttribute("user", user);
			session.setAttribute("user", user);
			return "forward:toIndex";
		}else{
			/*mav.setViewName("test");
			return mav;*/
			return "login";
		}
				
	}
	
	/*
	 **register
	 */
	@RequestMapping("register1")
	public String SignIn(User user){
		int success=userService.userResigster(user);
		if(success!=0){
			
			return "success";
		}else{
			
			return "";
		}
	}
	@RequestMapping("register2")
	public ModelAndView register(User user){
		
		System.out.println(user);
		ModelAndView mac=new ModelAndView();
		int success=userService.userResigster(user);
		if(success!=0){
			mac.setViewName("success");
			return mac;
		}else{
			mac.setViewName("");
			return mac;
		}
		
	}
	/**
	 * changePawd
	 */
	@RequestMapping("changepawd")
	public String changePassword(int userId,String password,Model model){
		
		String oldPassword=userService.selectPawd(userId);
		if(password!=oldPassword){
		     int success=userService.changepswd(userId, password,oldPassword);
             if(success!=0){
			    return "success";
		     }else{
			    return "";
		    }
		}else{
			String notice="新密码不能与旧密码相同";
			model.addAttribute("notice", notice);
			return "";
		}
        
	}
	
	
	/*
	 * 获取所有的用户表
	 */
	@RequestMapping("getAllUser")
	public String getAllUser(Model model){
		List<User> users=userService.getAllUser();
		model.addAttribute("users", users);
		return "admin/user";
	}
	
	
	public static void main(String[] args){
		LoginController policy=new LoginController();
		policy.test();
	}	
	
}
