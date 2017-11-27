<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'polInterprete_detail.jsp' starting page</title>
    
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
    <li><a href="#">首页</a></li>
    <li><a href="#">查看政策解读</a></li>
    </ul>
    </div>
    
    <div class="detail">
      <c:if test="${not empty polInterpre}">
      <div class="title">   
		<p> ${polInterpre.polInterpreTitle}</p>
		<span id="source">发布时间:${polInterpre.polInterpreTime}&nbsp;&nbsp;&nbsp;&nbsp;政策解读作者：${polInterpre.polInterpreAuthor}&nbsp;&nbsp;&nbsp;&nbsp;政策解读来源：${polInterpre.polInterpreSource}</span>
		<hr>
      </div>
      <div class="content">
        <p>${polInterpre.polInterpreContent}
       </p>
      </div>
	  <br/><br/>
      </c:if>
    </div>
        
  </body>
</html>
