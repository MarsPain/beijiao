<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user.jsp' starting page</title>
    
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
    <li><a href="#">用户管理</a></li>
    <li><a href="#">用户账号管理</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    	<ul class="toolbar">
            <!-- <li class="click"><span><img src="jsp/admin/images/t01.png" /></span>添加</li>
            <li class="click"><span><img src="jsp/admin/images/t02.png" /></span>修改</li>
            <li><span><img src="jsp/admin/images/t04.png" /></span>统计</li> -->
            <li><span><img src="jsp/admin/images/t03.png" /></span>删除</li>
        </ul>
        
        <!-- <ul class="toolbar1">
            <li><span><img src="jsp/admin/images/t05.png" /></span>设置</li>
        </ul> -->
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <!-- <th>编号<i class="sort"><img src="jsp/admin/images/px.gif" /></i></th> -->
        <th>用户名</th>
        <th>最近登录时间</th>
        <!-- <th>籍贯</th> -->
        <th>注册时间</th>
        <!-- <th>是否审核</th> -->
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <!-- <td>20130908</td> -->
        <td>user1</td>
        <td>2017-09-09 15:05</td>
        <!-- <td>江苏南京</td> -->
        <td>2017-09-09 15:05</td>
        <!-- <td>已审核</td> -->
        <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink"> 删除</a></td>
        </tr> 
        
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <!-- <td>20130907</td> -->
        <td>user2</td>
        <td>2017-09-08 14:02</td>
        <!-- <td>山东济南</td> -->
        <td>2017-09-08 14:02</td>
        <!-- <td>未审核</td> -->
        <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink">删除</a></td>
        </tr>
        
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <!-- <td>20130906</td> -->
        <td>user3</td>
        <td>2017-09-07 13:16</td>
        <!-- <td>江苏无锡</td> -->
        <td>2017-09-07 13:16</td>
        <!-- <td>未审核</td> -->
        <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink">删除</a></td>
        </tr>
        
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <!-- <td>20130905</td> -->
        <td>user4</td>
        <td>2017-10-06 10:36</td>
        <!-- <td>北京市</td> -->
        <td>2017-10-06 10:36</td>
        <!-- <td>已审核</td> -->
        <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink">删除</a></td>
        </tr>
        
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <!-- <td>20130904</td> -->
        <td>user5</td>
        <td>2017-10-05 13:25</td>
        <!-- <td>江苏南京</td> -->
        <td>2017-10-05 13:25</td>
        <!-- <td>已审核</td> -->
        <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink">删除</a></td>
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
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
