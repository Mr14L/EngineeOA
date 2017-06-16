<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Amaze UI Admin table Examples</title>
  <meta name="description" content="这是一个 table 页面">
  <meta name="keywords" content="table">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin.css">
</head>
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#a").click(function(){
		$.post("${pageContext.request.contextPath}/exam/examApportAdd",{"id":$("#email").html(),"examId":$("#hidden").val()},
				function(data){
				if(data.status ==200){
					location.href="${pageContext.request.contextPath}/exam/listExam";
				}else{
					alert("添加失败");
					return;
				}
		});
		$("#button").mouseover(function(){
			var str = "${pageContext.request.contextPath}/user/findByUserName?name="+$("#username").val();
			$("#button").attr("href", str);
			
		});
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
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">监考人员</strong> / <small>List</small></div>
      </div>

      <hr>

      <div class="am-g">
        <div class="am-u-sm-12 am-u-md-6">
          <div class="am-btn-toolbar">
            
          </div>
        </div>
        <div class="am-u-sm-12 am-u-md-3">
          <div class="am-input-group am-input-group-sm">
            <input id="username" type="text" class="am-form-field" placeholder="输入姓名">
          <span class="am-input-group-btn">
          	<a href="#" id="button" class="am-btn am-btn-default">搜索</a>
          </span>
          </div>
        </div>
      </div>

<div class="am-g">
        <div class="am-u-sm-12">
        <input id="hidden" type="hidden" value="${examId }">
          <table class="am-table am-table-bd am-table-striped admin-content-table">
            <thead>
            <tr>
              <th>ID</th>
              <th>用户名</th>
              <th>邮箱</th>
              <th>手机号</th>
              <th>同时监考</th>
              <th class="table-set">操作</th>
            </tr>
            </thead>
            <tbody>
            <%int i=0; %>
            <c:forEach items="${userList }" var="u">
            <tr><%i++; %>
            <td><%=i %></td>
            <td>${u.name }</td> 
            <td id="email">${u.email }</td>
            <td>${ u.telephone }</td>
            <td> ${u.ecount} </td>
             <td>
                  <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <a id="a" href="#"><span class="am-icon-paperclip">添加</span></a>
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
