<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js fixed-layout">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Amaze UI Admin index Examples</title>
  <meta name="description" content="这是一个 index 页面">
  <meta name="keywords" content="index">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin.css">
</head>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.11.1.min.js"></script>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

  <div class="admin-content">
    <div class="admin-content-body">
      <div class="am-cf am-padding">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">需要完成任务</strong> / <small>Task</small></div>
      </div>

      <div class="am-g">
        <div class="am-u-sm-12">
          <table class="am-table am-table-bd am-table-striped admin-content-table">
            <thead>
            <tr>
              <th>ID</th>
              <th>任务标题</th>
              <th>任务类型</th>
              <th>开始时间</th>
              <th>结束时间</th>
              <th>处理</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${tlist}" var="t">
           
            <tr>
            <td> ${t.id}</td>
            <td> ${t.title}</td>
            <td> ${t.taskType}</td>
            <td>${t.startTime}</td>
            <td>${t.endTime}</td>
               <td>
                  <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <a href="${pageContext.request.contextPath}/user-task/taskUserReply/${t.id}" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-chain"></span>去完成</a>
                      <c:if test="${t.taskType=='文件型任务'}">
                      <a href="${pageContext.request.contextPath}/user-task/task-user-download" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-download"></span>下载</a>
                    </c:if>
                    </div>
                  </div>
                </td>
            </tr>
            </c:forEach>
            
          
            </tbody>
          </table>
        </div>
      </div>

</div>


<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
</body>
</html>
