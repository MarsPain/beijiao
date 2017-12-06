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
    <link href="css/tab-classification.css" rel="stylesheet" />
    <script type="text/javascript" charset="UTF-8">
        mui.init();
    </script>
    <script type="text/javascript" src="js/jquery-2.1.0.js"></script>
    <script type="text/javascript" src="js/tab-classification.js"></script>

  </head>
  
  <body>
   
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
		      	<h1 id="head_title" class="mui-title">分类浏览</h1>
		    </header>

			<!--正文部分-->
		    <div class="mui-content mui-scroll-wrapper">
			<div class="mui-scroll">
   				<!--选项卡结构-->
   				<div id="tab_wrap">
   					<!--选项卡选择按钮-->
   					<div id="tab_options">
   						<ul>
							<li>
	   							<button id="first_tab_option" type="button" class="mui-btn mui-btn-primary mui-btn-outlined">政策解读</button>
	   							<button id="second_tab_option" type="button" class="mui-btn mui-btn-primary mui-btn-outlined">媒体聚焦</button>
	   							<button id="third_tab_option" type="button" class="mui-btn mui-btn-primary mui-btn-outlined">咨询答疑</button>
   							</li>
   						</ul>
   					</div>
   					
   					<!--选项卡内容-->
   					<div id="tab_content">
   						<!--第一页选项卡-->
   						<div id="first_tab">
   							<ul class="mui-table-view">
   								<li id="test" class="mui-table-view-cell mui-media">
								    <a href="javascript:;">
								        <div class="mui-media-body">
								        	中国工商报
								            <p class='mui-ellipsis'>总局反垄断与反不正当竞争执法局局长就新《反不正当竞争法》接受记者专访</p>
								        	<span class="time">2017-11-15</span>
								        </div>
								    </a>
								</li>
								<li id="test" class="mui-table-view-cell mui-media">
								    <a href="javascript:;">
								        <div class="mui-media-body">
								        	中国工商报
								            <p class='mui-ellipsis'>总局反垄断与反不正当竞争执法局局长就新《反不正当竞争法》接受记者专访</p>
								        	<span class="time">2017-11-15</span>
								        </div>
								    </a>
								</li>
   							</ul>
   						</div>
   						
   						<!--第二页选项卡-->
   						<div id="second_tab">
   							<ul class="mui-table-view">
   								<li id="test" class="mui-table-view-cell mui-media">
								    <a href="javascript:;">
								        <div class="mui-media-body">
								        	国家工商总局
								            <p class='mui-ellipsis'>国家工商总局就2017年前三季度市场环境形势情况举行发布会</p>
								        	<span class="time">2017-11-15</span>
								        </div>
								    </a>
								</li>
								<li id="test" class="mui-table-view-cell mui-media">
								    <a href="javascript:;">
								        <div class="mui-media-body">
								        	国家工商总局
								            <p class='mui-ellipsis'>国家工商总局就2017年前三季度市场环境形势情况举行发布会</p>
								        	<span class="time">2017-11-15</span>
								        </div>
								    </a>
								</li>
   							</ul>
   						</div>
   						
   						<!--第三页选项卡-->
   						<div id="third_tab">
   							<ul class="mui-table-view">
   								<li id="test" class="mui-table-view-cell mui-media">
								    <a href="javascript:;">
								        <div class="mui-media-body">
								        	五证合一
								            <p class='mui-ellipsis'>五证合一是哪五证</p>
								        	<span class="time">2017-11-15</span>
								        	<button type="button" class="mui-btn mui-btn-primary mui-btn-outlined answer">查看回复</button>
								        	<div style="border:1px dashed #ebebeb; border-style:dotted; display: none;"></div>
											<p class='mui-ellipsis answer_detail'>您好，“五证”指工商营业执照、统计登记证、组织机构代码证、税务登记证、社会保险登记证。</p>
								        </div>
								    </a>
								</li>
								<li id="test" class="mui-table-view-cell mui-media">
								    <a href="javascript:;">
								        <div class="mui-media-body">
								        	五证合一
								            <p class='mui-ellipsis'>五证合一是哪五证</p>
								        	<span class="time">2017-11-15</span>
								        	<button type="button" class="mui-btn mui-btn-primary mui-btn-outlined answer">查看回复</button>
								        	<div style="border:1px dashed #ebebeb; border-style:dotted;"></div>
											<p class='mui-ellipsis answer_detail'>您好，“五证”指工商营业执照、统计登记证、组织机构代码证、税务登记证、社会保险登记证。</p>
								        </div>
								    </a>
								</li>
   							</ul>
   						</div>
   					</div>
   				</div>
   				
			</div>
		   </div>
		</div>
	</div>
   
  </body>
</html>
