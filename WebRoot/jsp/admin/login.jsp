<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link href="jsp/admin/css/style.css" rel="stylesheet" type="text/css" />
	<script language="JavaScript" src="jsp/admin/js/jquery.js"></script>
	<script src="jsp/admin/js/cloud.js" type="text/javascript"></script>
	
	<script language="javascript">
		$(function(){
	    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
		$(window).resize(function(){  
	    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	    })  
	});  
	</script> 
  </head>
  
  <body style="background-color:#1c77ac; background-image:url(jsp/admin/images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop">    
    <span>欢迎登录后台管理界面平台</span>    
    <!-- <ul>
    <li><a href="#">回首页</a></li>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>     -->
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo"></span> 
      <form action="admin/login" method="post"> 
    <div class="loginbox">     
	    <ul>
		    <li>
		    <input name="adminName" type="text" class="loginuser" value="" />
		    </li>
		    <li>
		    <input name="adminPassword" type="text" class="loginpwd" value=""/>
		    </li>
		    <li>
		    <input  type="submit" class="loginbtn" value="登录"  />
		    <label>
		    <input name="" type="checkbox" value="" checked="checked" />记住密码</label>
		    <label><a href="#">忘记密码？</a></label>
		    </li>
	    </ul>	 
    </div>
    </form>
    </div>
    
    <div class="loginbm">版权所有  北焦科创</div>
</body>
</html>
