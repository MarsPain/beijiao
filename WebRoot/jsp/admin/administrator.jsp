<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'administrator.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link href="jsp/admin/css/style.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">用户管理</a></li>
    <li><a href="#">管理员账号管理</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
      <form method="post" action="">
		<ul class="forminfo">
			<li><label>原始密码</label><input name="" type="text"
				class="dfinput" /><i>标题不能超过20个字符</i></li>
			<li><label>新密码</label><input name="" type="text" class="dfinput" /><i>标题不能超过20个字符</i></li>
			<li><label>确认新密码</label><input name="" type="text"
				class="dfinput" /><i>标题不能超过20个字符</i></li>
			<li><label>&nbsp;</label><input name="" type="button"
				class="btn" value="提交" /></li>
		</ul>
      </form>
	</div>
</body>
</html>
