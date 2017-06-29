<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Amaze UI Admin form Examples</title>
  <meta name="description" content="这是一个form页面">
  <meta name="keywords" content="form">
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
<script type="text/javascript">
	$(function(){
		
		//提交保存
		$("#button1").click(function(){
			$.post("${pageContext.request.contextPath}/user-task/reply",
					{"tid":$("#t").val(),"replyContent":$("textarea[name='replyContent']").val()},
				function(data){
				alert("修改成功");
				location.href="${pageContext.request.contextPath}/user-task/toTaskUserTable";
			});
		});
		
		
		$("#button2").click(function(){
			$("textarea[name='replyContent']").val("");
			$("input[type='file']").val("");
			return;
		});  
	});
</script>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

  <div class="admin-content">
  <div class="admin-content-body">
    <div class="am-cf am-padding am-padding-bottom-0">
      <div class="am-fl am-cf">
        <strong class="am-text-primary am-text-lg">完成任务</strong> /
        <small>Task</small>
      </div>
    </div>

    <hr>

    <div class="am-tabs am-margin" data-am-tabs>
      <ul class="am-tabs-nav am-nav am-nav-tabs">
        		<li>Task</li>
      </ul>
      </div>

      
            <div  >
          <form class="am-form">
            <div class="am-g am-margin-top">
              <div class="am-u-sm-4 am-u-md-2 am-text-right">
                	任务标题
              </div>
              <div class="am-u-sm-8 am-u-md-4">
              <input type="hidden" id="t" value="${task.id }">
               <td> ${task.title}</td>
              </div>
              <div class="am-hide-sm-only am-u-md-6"></div>
            </div>

           
			
            <div class="am-g am-margin-top-sm">
              <div class="am-u-sm-12 am-u-md-2 am-text-right admin-form-text">
                内容描述
              </div>
              <div class="am-u-sm-12 am-u-md-10 " >
              <td> ${task.content}</td>
              </div>
            </div>
            <c:if test="${task.taskType=='回复性任务'}">
            <div class="am-g am-margin-top-sm">
              <div class="am-u-sm-12 am-u-md-2 am-text-right admin-form-text">
                回复任务
              </div>
              <div class="am-u-sm-12 am-u-md-10 " >
              <textarea rows="3" cols="5" name="replyContent"></textarea>
              </div>
            </div>
            
            <div class="am-margin">
      <button type="button" id="button1" class="am-btn am-btn-primary am-btn-xs">提交保存</button>
      <button type="button" id="button2" class="am-btn am-btn-primary am-btn-xs">放弃保存</button>
    </div>
            </c:if>
          </form>
          </div>
          <c:if test="${task.taskType=='文件型任务' }">
        <div class="am-g am-margin-top">
            <div class="am-u-sm-4 am-u-md-2 am-text-right">
             上传文件
            </div>
            <div class="am-u-sm-8 am-u-md-10">
                <div class="am-form-group am-form-icon">
                <input type="file" >
                      <p class="am-form-help">请选择要上传的文件...</p>
                 </div>
            </div>
          </div>
          <div class="am-margin">
      <button type="button" id="button1" class="am-btn am-btn-primary am-btn-xs">提交保存</button>
      <button type="button" id="button2" class="am-btn am-btn-primary am-btn-xs">放弃保存</button>
      </div>
          </c:if>
          
              
          
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
