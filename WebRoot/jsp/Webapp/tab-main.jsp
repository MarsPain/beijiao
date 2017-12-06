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
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title>此处就是显示的标题</title>
    <script src="js/mui.min.js"></script>
    <link href="css/mui.min.css" rel="stylesheet"/>
    <link href="css/tab-main.css" rel="stylesheet" />
    <script type="text/javascript" charset="UTF-8">
        mui.init();
    </script>
    <script type="text/javascript" src="js/jquery-2.1.0.js"></script>
    <script type="text/javascript" src="js/tab-main.js"></script>

  </head>
  
  <body>
   
   	<script type="text/javascript">
        mui('body').on('tap','a',function(){
		    window.top.location.href=this.href;
		});

    </script>
	
	<!--带侧滑菜单的框架-->
	<div class="mui-off-canvas-wrap mui-draggable">
	  	<!-- 菜单容器 -->
	  	<aside class="mui-off-canvas-left">
	    <div class="mui-scroll-wrapper">
	       	<div id="sideBar" class="mui-scroll">
		        <!-- 菜单具体展示内容 -->
		        <span id="sideBar_title">行业选择</span>
		        <ul id="sideBar_list" class="mui-table-view">
					<li class="mui-table-view-cell">
				        <a class="mui-navigate-right">热点关注</a>
				    </li>
				    <li class="mui-table-view-cell">
				        <a class="mui-navigate-right">机械化工</a>
				    </li>
				    <li class="mui-table-view-cell">
				        <a class="mui-navigate-right">交通汽车</a>
				    </li>
				    <li class="mui-table-view-cell">
				        <a class="mui-navigate-right">房产建材</a>
				    </li>
				    <li class="mui-table-view-cell">
				        <a class="mui-navigate-right">服装纺织</a>
				    </li>
				    <li class="mui-table-view-cell">
				        <a class="mui-navigate-right">IT互联网</a>
				    </li>
				    <li class="mui-table-view-cell">
				        <a class="mui-navigate-right">文化传媒</a>
				    </li>
				    <li class="mui-table-view-cell">
				        <a class="mui-navigate-right">医疗保健</a>
				    </li>
				    <li class="mui-table-view-cell">
				        <a class="mui-navigate-right">食品酒水</a>
				    </li>
				</ul>
	        </div>
	    </div>
	  	</aside>
	  	
		<!-- 主页面容器 -->
		<div class="mui-inner-wrap">
		    <!-- 头部（从左到右：侧滑按钮、标题、搜索框）-->
		    <header id="head" class="mui-bar mui-bar-nav">
		      	<a class="mui-icon mui-action-menu mui-icon-bars mui-pull-left"></a>
		      	<h1 id="head_title" class="mui-title">新政策网</h1>
		    </header>

		    <div class="mui-content mui-scroll-wrapper">
			<div class="mui-scroll">
			
			<!--导航栏：左侧是区域选择的下拉菜单，右侧是搜索框-->
			<div id="nav_wrap">
				<div id="nav_left_wrap">
					<div id="nav_left">
						<a href="#popover" id="openPopover" class="mui-btn mui-btn-primary mui-btn-block">发布机构</a>
					</div>
					<div id="popover" class="mui-popover">
						<ul class="mui-table-view">
							<li class="mui-table-view-cell"><a href="#">国务院</a></li>
							<li class="mui-table-view-cell"><a href="#">发展和改革委员会</a></li>
							<li class="mui-table-view-cell"><a href="#">工业和信息化部门</a></li>
							<li class="mui-table-view-cell"><a href="#">科学技术部门</a></li>
							<li class="mui-table-view-cell"><a href="#">人力资源和社会保障部门</a></li>
							<li class="mui-table-view-cell"><a href="#">商务部门</a></li>
							<li class="mui-table-view-cell"><a href="#">其他</a></li>
						</ul>
					</div>
				</div>
				
				<div id="search" class="mui-content">
				    <div class="mui-input-row mui-search">
					    <input type="search" class="mui-input-clear" placeholder="">
					</div>
			    </div>
			</div>

    
		    <!--图片轮播-->
		    <div id="img_policy" class="mui-slider">
			    <div class="mui-slider-group mui-slider-loop">
				    <!--支持循环，需要重复图片节点-->
				    <div class="mui-slider-item mui-slider-item-duplicate"><a href="policy-img.html"><img src="images/01.jpg" /></a></div>
				    <div class="mui-slider-item"><a href="policy-img.html"><img src="images/02.jpg" /></a></div>
				    <div class="mui-slider-item"><a href="policy-img.html"><img src="images/01.jpg" /></a></div>
				    <div class="mui-slider-item"><a href="policy-img.html"><img src="images/02.jpg" /></a></div>
				    <!--支持循环，需要重复图片节点-->
				    <div class="mui-slider-item mui-slider-item-duplicate"><a href="#"><img src="1.jpg" /></a></div>
			    </div>
			</div>
	
			<!--消息列表-->
			<div id="policy_list">
				<ul class="mui-table-view">
					<li class="mui-table-view-cell mui-media">
					    <a class="policy" href="policy.html">
					        <div class="mui-media-body">
					        	国务院
					            <p class='mui-ellipsis'>李克强对全国小微企业金融服务电视电话会议作出重要批示</p>
					        	<span class="time">2017-11-15</span>
					        </div>
					    </a>
					</li>
					<li class="mui-table-view-cell mui-media">
					    <a href="javascript:;">
					        <div class="mui-media-body">
								国务院
					            <p class='mui-ellipsis'>《习近平谈治国理政》第二卷中英文版出版发行</p>
					            <span class="time">2017-11-15</span>
					        </div>
					    </a>
					</li>
					<li class="mui-table-view-cell mui-media">
					    <a href="javascript:;">
					        <div class="mui-media-body">
								国务院
					            <p class='mui-ellipsis'>工商总局召开贯彻落实“证照分离”改革试点工作媒体通气会</p>
					            <span class="time">2017-11-15</span>
					        </div>
					    </a>
					</li>
					<li class="mui-table-view-cell mui-media">
					    <a href="javascript:;">
					        <div class="mui-media-body">
								国务院
					            <p class='mui-ellipsis'>工商总局召开贯彻落实“证照分离”改革试点工作媒体通气会</p>
					            <span class="time">2017-11-15</span>
					        </div>
					    </a>
					</li>
				</ul>
			</div>
			</div>
		   </div>
		</div>
	</div>
   
  </body>
</html>
