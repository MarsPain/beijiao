<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    
    <title>My JSP 'picPolicy.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <link href="css/content.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="js/banner1.js"></script>
  </head>
  
  <body>
  <!-- <iframe style="width: 100%; height: 236px" scrolling="no" 
  frameborder="0" src="header.html"></iframe> -->
  <div class="top">
		<div class="wrap">
		<span class="fl">欢迎您来到<a href="/" title="" target="_blank">新政策网</a></span>		
		<c:choose>  
        <c:when test="${not empty sessionScope.get('session')}">
        <span class="fr"><a href="#" title="">${sessionScope.get('session').username}</a>&nbsp;&nbsp;<a href="index/logout" title="" target="_blank">[退出]</a></span>  
        </c:when>  
        <c:otherwise>  
            <span class="fr"><a href="jsp/login.jsp" title="">请登录</a>&nbsp;&nbsp;<a href="#" title="" target="_blank">立即注册</a></span>  
        </c:otherwise>  
        </c:choose>
	</div>
	</div>
	<!--top end-->

	<!--header begin-->
	<div class="header">
		<div class="wrap">
			<!-- <a href="#" title="" target="_blank"><img src="images/ad1.jpg" width="1004" height="40" /></a> -->
				<div class="search_box">
					<a href="#" title="" target="_blank"><img src="images/logo.jpg" width="389" height="53"  alt="" class="fl"/></a>  
					<div class="search">
						<div id="lenu1">
							<ul>
								<li class="hover" onmousemove="setTab(1,0)">政策<span>|</span></li>
								<!-- (<li onmousemove="setTab(1,1)">用户<span>|</span></li>) -->
							</ul>
						</div>
					<div class="lain1_box" id="lain1">
						<ul class="block">
							<li><input type="text"  value="请输入政策名称" onFocus="if(this.value=='请输入政策名称'){this.value='';}" onBlur="if(this.value==''){this.value='请输入政策名称';}" class="sertxt" /><input type="button" value="搜索" name=""  class="serbtn"/></li>
						</ul>
						<ul>
						  <li><input type="text"  value="请输入用户名称" onFocus="if(this.value=='请输入用户名称'){this.value='';}" onBlur="if(this.value==''){this.value='请输入用户名称';}" class="sertxt" /><input type="button" value="搜索" name=""  class="serbtn"/></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
			 
		<div class="nav">
		<div class="wrap"> 
			<ul class="nav_left">
				<li><a href="/" title="">首页</a></li>
				<li><a href="#" title="">行业政策</a>
					<ul class="second_nav">
						<li>
						<a href="policy/toIndustryPolicy?pClassName=机械化工">机械化工</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassName=交通汽车">交通汽车</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassName=房产建材">房产建材</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassName=服装纺织">服装纺织</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassName=IT互联网">IT互联网</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassName=文化传媒">文化传媒</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassName=医药">医药</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassName=食品">食品</a>
						</li>
						<li>
						<a href="policy/toIndustryPolicy?pClassName=农林渔牧">农林渔牧</a>
						</li>					
					</ul>
				</li>                    
				<li><a href="polInterpre/tolistPolInterpre" title="">政策解读</a></li>
				<li><a href="affair/toAllAffair" title="">申报指南</a></li>
				<li><a href="notice/toNotices" title="">通知公告</a></li>
				<li><a href="consult/getallconsult" title="">咨询答疑</a>
				  <ul class="second_nav">
				  <li>
					<a href="consult/getallconsult">咨询答疑</a>
					</li>
					<li>
					<a href="jsp/consult.jsp">我要咨询</a>
					</li>
				   </ul>
				</li>
			</ul>
		</div> 
	</div>
    </div>

  <div class="content">
    <div class="detail">
    <c:if test="${not empty picPol}">
      <div class="title">
		<p>${picPol.picPolTitle}</p>
		<span id="source">发布时间：${picPol.picPolTime}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp信息来源：${picPol.picPolSource}</span>
		<hr>
      </div>
		 <img src="${picPol.picPolFile}" >
		<hr>
		<p>${picPol.picPolContent}</p>
	 </c:if>
	<!--  </div> -->
		<div class="footer">
			<ul>
				<li class="li_left">
					版权所有&nbsp;|&nbsp;
					<span><a href="" title="">北焦科创高科技孵化器（北京）有限公司&nbsp;&nbsp;京ICP备123456号</a></span>
				</li>
				<li class="li_right">
					地址&nbsp;|&nbsp;
					<span><a href="" title="">北京市朝阳区化工路59号院4号楼4-5层</a></span>
				<li class="li_left">
					技术支持&nbsp;|&nbsp;
					<span><a href="" title="">北焦科创</a></span>
					</li>
				<li class="li_right">
					邮政编码&nbsp;|&nbsp;
					<span><a href="" title="">100020</a></span>
				</li>
			</ul>
		</div>
				<!--footer end-->
	</div>
</div>

	
		<!-- 左侧导航栏 -->
		<!-- 左侧导航栏 -->
	<div id="subnav">
	<ul>
		<li id="title"><span>导航栏</span></li>
	</ul>
		<ul id="subnav_tag">
			<li><a href="policy/toPolicyType?polDrade='国家'">国家政策</a></li>
			<li><a href="policy/toPolicyType?polDrade='市'">市级政策</a></li>
			<li><a href="policy/toPolicyType?polDrade='区'">地方政策</a></li>
			<li><a href="news/tolistNews" title="">媒体聚焦</a></li>
			<li><a href="polInterpre/toAllPolInterpre" title="">政策解读</a></li>			
			<li><a href="policy/toAllFile" title="">文件发布</a></li>		
		</ul>
	</div>
</body>
</html>
