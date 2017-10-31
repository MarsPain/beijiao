<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'medialist.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link href="jsp/admin/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="jsp/admin/js/jquery.js"></script>
	<script language="javascript">
	$(function(){	
		//导航切换
		$(".imglist li").click(function(){
			$(".imglist li.selected").removeClass("selected")
			$(this).addClass("selected");
		})	
	})	
	</script>
	<script type="text/javascript">
	$(document).ready(function(){
	  $(".click").click(function(){
	  $(".tip").fadeIn(200);
	  });
	  
	  $(".tiptop a").click(function(){
	  $(".tip").fadeOut(200);
	});
	
	  $(".sure").click(function(){
	  $(".tip").fadeOut(100);
	});
	
	  $(".cancel").click(function(){
	  $(".tip").fadeOut(100);
	});
	
	});
	</script>
  </head>
  
  <body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">信息管理</a></li>
    <li><a href="#">浏览记录分析</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <!-- <div class="tools">
    	<ul class="toolbar">
        <li class="click"><span><img src="jsp/admin/images/t01.png" /></span>添加</li>
        <li class="click"><span><img src="jsp/admin/images/t02.png" /></span>修改</li>
        <li><span><img src="jsp/admin/images/t03.png" /></span>删除</li>
        <li><span><img src="jsp/admin/images/t04.png" /></span>统计</li>
      </ul>
        
      <ul class="toolbar1">
        <li><span><img src="jsp/admin/images/t05.png" /></span>设置</li>
      </ul>
    </div> -->
    
    
    <table class="imgtable">
    
    <thead>
    <tr>
    <th width="100px;">缩略图</th>
    <th>标题</th>
    <th>栏目</th>
    <th>权限</th>
    <th>发布人</th>
    <!-- <th>是否审核</th> -->
    <th>点击</th>
    </tr>
    </thead>
    
    <tbody>
    
    <tr>
    <td class="imgtd"><img src="jsp/admin/images/img11.jpg" /></td>
    <td><a href="#">全国工商和市场监管工作座谈会举行</a><p>发布时间：2017-9-22 09:25:18</p></td>
    <td>首页轮播<p>ID: 82122</p></td>
    <td>开放浏览</td>
    <td>admin</td>
    <!-- <td>已审核</td> -->
    <td>128</td>
    </tr>
    
    <tr>
    <td class="imgtd"><img src="jsp/admin/images/img12.jpg" /></td>
    <td><a href="#">张茅在世界地理标志大会上强调：推进地理标志工作助推“一带一路”建设</a><p>发布时间：2017-9-22 09:25:18</p></td>
    <td>首页轮播<p>ID: 82122</p></td>
    <td>开放浏览</td>
    <td>admin</td>
    <!-- <td><i>未审核</i></td> -->
    <td>235</td>
    </tr>
    
    <tr>
    <td class="imgtd"><img src="" /></td>
    <td><a href="#">国务院关于修改《建设项目环境保护管理条例》的决定</a><p>发布时间：2017-9-22 09:25:18</p></td>
    <td>热点关注<p>ID: 82122</p></td>
    <td>开放浏览</td>
    <td>admin</td>
    <!-- <td>已审核</td> -->
    <td>100</td>
    </tr>
    
    <tr>
    <td class="imgtd"><img src="" /></td>
    <td><a href="#">李克强主持召开国务院常务会议</a><p>发布时间：2017-9-22 09:25:18</p></td>
    <td>热点关注<p>ID: 82122</p></td>
    <td>开放浏览</td>
    <td>admin</td>
    <!-- <td>已审核</td> -->
    <td>96</td>
    </tr>
    
    <tr>
    <td class="imgtd"><img src="" /></td>
    <td><a href="#">国务院关于修改《建设项目环境保护管理条例》的决定</a><p>发布时间：2017-9-22 09:25:18</p></td>
    <td>热点关注<p>ID: 82122</p></td>
    <td>开放浏览</td>
    <td>admin</td>
    <!-- <td>已审核</td> -->
    <td>45</td>
    </tr>
    
    </tbody>
    
    </table>
    
    
    
    
    
   
    <div class="pagin">
    	<div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        <li class="paginItem"><a href="javascript:;">1</a></li>
        <li class="paginItem current"><a href="javascript:;">2</a></li>
        <li class="paginItem"><a href="javascript:;">3</a></li>
        <li class="paginItem"><a href="javascript:;">4</a></li>
        <li class="paginItem"><a href="javascript:;">5</a></li>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <li class="paginItem"><a href="javascript:;">10</a></li>
        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
    
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="jsp/admin/images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    
    
    
    
    </div>
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="jsp/admin/images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    
<script type="text/javascript">
	$('.imgtable tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
