<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    

    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<title></title>
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
	<link href="css/mui.min.css" rel="stylesheet" />
	<link href="css/login.css" rel="stylesheet" />

  </head>
  
  <body>
   
   		<script src="js/mui.min.js"></script>
		<script type="text/javascript">
			mui.init()
		</script>
		<script type="text/javascript" src="js/jquery-2.1.0.js"></script>
    	<script type="text/javascript" src="js/login.js"></script>
    	
    	<!-- 头部（从左到右：返回按钮、标题）-->
	    <header id="head" class="mui-bar mui-bar-nav">
	      	<a id="back" href="tab-personal.html"><button type="button" class="mui-btn mui-btn-primary mui-btn-outlined">返回</button></a>
	      	<h1 id="head_title" class="mui-title">登录</h1>
	    </header>
	    
	    <!--正文部分-->
	    <!--登录表单-->
	    <div class="mui-content">
			<form id='login-form' class="mui-input-group">
				<div class="mui-input-row">
					<label>账号</label>
					<input id='account' type="text" class="mui-input-clear mui-input" placeholder="请输入账号">
				</div>
				<div class="mui-input-row">
					<label>密码</label>
					<input id='password' type="password" class="mui-input-clear mui-input" placeholder="请输入密码">
				</div>
			</form>
			
			<form id="login_automatic" class="mui-input-group">
				<ul class="mui-table-view mui-table-view-chevron">
					<li class="mui-table-view-cell">
						自动登录
						<div id="autoLogin" class="mui-switch">
							<div class="mui-switch-handle"></div>
						</div>
					</li>
				</ul>
			</form>
			
			<div id="login_button" class="mui-content-padded">
				<button id='login' class="mui-btn mui-btn-block mui-btn-primary">登录</button>
				<div class="link-area">
					<a href="register.html" id='reg'>注册账号</a>
					<span class="spliter">|</span>
					<a id='forgetPassword'>忘记密码</a>
				</div>
			</div>
			
		</div>
   
  </body>
</html>
