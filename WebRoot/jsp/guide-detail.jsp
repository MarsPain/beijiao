<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>申报指南三级页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	

  </head>
  
  <body>
  <!-- <iframe style="width: 100%; height: 236px" scrolling="no" 
  frameborder="0" src="header.html"></iframe> -->
  <div class="top">
		<div class="wrap">
			<span class="fl">欢迎您来到<a href="#" title="" target="_blank">新政策网</a></span>
			<span class="fr"><a href="#" title="" target="_blank">请登录</a>&nbsp;&nbsp;<a href="#" title="" target="_blank">立即注册</a></span>
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
          <li><a href="index.html" title="">首页</a></li>
          <li><a href="#" title="">行业政策</a>
            <ul class="second_nav">
              <li><a href="industry.html">农业</a></li>
              <li><a href="industry2.html">金融业</a></li>
              <li><a href="#">服务业</a></li>
              <li><a href="#">医疗业</a></li>
            </ul>
          </li>
          <li><a href="interpretation.html" title="">政策解读</a></li>
          <li><a href="guide.html" title="">申报指南</a></li>
          <li><a href="#" title="">活动通知</a></li>
          <li><a href="enquire.html" title="">咨询答疑</a></li>
        </ul>
      </div> 
    </div>
	</div>

  <div id="content">
    <div id="title">
      <span>农民专业合作社分支机构设立登记</span>
      <table border="1">
        <tr>
          <th>办理地点：</td>
          <td>海淀区东北旺南路29号上地办公中心西侧（二层）</td>
          <th>办理时间：</td>
          <td>工作日 上午9：00-12：00 下午13：30-17：00 </td>
        </tr>
        <tr>
          <th>承诺期限：</td>
          <td>4个工作日</td>
          <th>咨询电话：</td>
          <td>160315/52807859 </td>
        </tr>
      </table>
    </div>
    
    <div id="introduce">
      <span>事项介绍</span>
      <ul>
        <li><span class="title">事项名称：</span><span class="content">农民专业合作社分支机构设立登记</span></li>
        <li><span class="title">法定实施主体：</span><span class="content">北京市工商行政管理局海淀分局 </span></li>        
        <li><span class="title">主体范围：</span><span class="content">农业合作社、可代理办理 </span></li>
        <li><span class="title">办事依据：</span><span class="content">《中华人民共和国农民专业合作社法》第十三条；</span></li>
        <li><span class="title">办理地点：</span><span class="content">海淀区东北旺南路29号上地办公中心西侧（二层） </span></li>
        <li><span class="title">办公时间：</span><span class="content">工作日 上午9：00-12：00 下午13：30-17：00  </span></li>
        <li><span class="title">咨询电话：</span><span class="content">160315/52807859</span></li>
        <li><span class="title">投诉电话：</span><span class="content">010-82692065</span></li>
        <li><span class="title">法定期限：</span><span class="content">10个工作日</span></li>
        <li><span class="title">承诺期限：</span><span class="content">4个工作日</span></li>
        <li><span class="title">收费依据和标准：</span><span class="content">不收费</span></li>
        <li><span class="title">办理结果：</span><span class="content">营业执照</span></li>
        <li><span class="title">有效期限：</span><span class="content">依上级单位经营期限 </span></li>
      </ul>
      <br/>
    </div>

    <div id="condition">
      <span>办理条件</span>
      <ul>
        <li>1.无</li>
        <li>1.无</li>
        <li>1.无</li>
      </ul>
      <br/>
    </div>

    <div id="stuff">
        <span>申请材料</span>
        <ul>

        </ul>
        <br/>
      </div>

    <br/>
    <br/>
    <br/>
	</div>
	
	<!-- 左侧导航栏 -->
	<!-- <div id="subnav">
		<li id="title"><span>导航栏</span></li>
		<ul id="subnav_tag">
			<li><a href="gjzc.html">国家政策</a></li>
			<li><a href="city.html">市级政策</a></li>
			<li><a href="district.html">地方政策</a></li>
			<li><a href="media.html" title="">媒体聚焦</a></li>
			<li><a href="interpretation.html" title="">政策解读</a></li>			
			<li><a href="file.html" title="">文件发布</a></li>		
		</ul>
	</div> -->
  </body>
</html>
