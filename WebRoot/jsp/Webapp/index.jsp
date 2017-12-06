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
    <title></title>
    <script src="js/mui.min.js"></script>
    <link href="css/mui.min.css" rel="stylesheet"/>
    <script type="text/javascript" charset="utf-8">
      	mui.init();
    </script>
    <script type="text/javascript" src="js/jquery-2.1.0.js"></script>

  </head>
  
  <body>
  
    	<div class="mui-content">
	    <nav id="bar" class="mui-bar mui-bar-tab">
	        <a class="mui-tab-item mui-active" href="tab-main.html" data-id="main">
	            <span class="mui-icon mui-icon-home"></span>
	            <span class="mui-tab-label">首页</span>
	        </a>
	        <a class="mui-tab-item" href="tab-classification.html" data-id="classification">
	            <span class="mui-icon mui-icon-more"></span>
	            <span class="mui-tab-label">分类浏览</span>
	        </a>
	        <a id="message" class="mui-tab-item" href="tab-message.html" data-id="message">
	            <span class="mui-icon mui-icon-chatboxes"></span>
	            <span id="message_number" class="mui-badge mui-badge-primary">12</span>
	            <span class="mui-tab-label">消息</span>   
	        </a>
	        <a class="mui-tab-item" href="tab-personal.html" data-id="personal">
	            <span class="mui-icon mui-icon-person"></span>
	            <span class="mui-tab-label">个人</span>
	        </a>
	    </nav>
    </div>
    
    <script src="js/mui.min.js"></script>
    <script>
        mui.init();
        mui.plusReady(function() {
            var self = plus.webview.currentWebview();
            var current = '';
            var styles = {
                top: '0',
                bottom: '51px'
            };
            var tabsConfig = {
                main: {
                    url: 'tab-main.html',
                    styles: styles,
                    default: true
                },
                classification: {
                    url: 'tab-classification.html',
                    styles: styles
                },
                message: {
                    url: 'tab-message.html',
                    styles: styles
                },
                personal: {
                    url: 'tab-personal.html',
                    styles: styles
                }
            };
            var tabs = {};
            for (id in tabsConfig) {
                tabs[id] = plus.webview.create(tabsConfig[id].url, id, tabsConfig[id].styles);
                if (tabsConfig[id]['default']) {
                    self.append(tabs[id]);
                    current = id;
                }
            }
            mui('#bar').on('tap', 'a', function(e) {
                if (current == this.dataset.id) {
                    mui.fire(tabs[current], 'scroll2top');
                    return;
                }
                tabs[this.dataset.id].show();
                tabs[current].hide();
                current = this.dataset.id;
            });
        });
    </script>
  </body>
</html>
