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
			if($("#count").html()<=$("#icount").html()){
				alert("监考人员已满，不需添加");
				return false;
			}
		});	
		
		
		$("#button").mouseover(function(){
			var str = "${pageContext.request.contextPath}/exam/findByExamName?examName="+$("#examname").val();
			$("#button").attr("href", str);
			
		});
		var pageNow = 1;
		
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
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">exam</strong> / <small>List</small></div>
      </div>

      <hr>

      <div class="am-g">
        
        <div class="am-u-sm-12 am-u-md-3">
          
        </div>
        <div class="am-u-sm-12 am-u-md-3">
          <div class="am-input-group am-input-group-sm">
            <input id="examname" type="text" class="am-form-field" placeholder="考试名称">
          <span class="am-input-group-btn">
          <a id="button" class="am-btn am-btn-default"
           href="#" >搜索</a>
          </span>
          </div>
        </div>
      </div>

      <div class="am-g">
        <div class="am-u-sm-12">
          <form class="am-form">
            <table class="am-table am-table-striped am-table-hover table-main">
              <thead>
              <tr>
                <th class="table-id">ID</th>
                <th class="table-type">考试名称</th>
                <th class="table-type">考试科目</th>
                <th  class="table-type">所需人数</th>
                <th  class="table-type">实际人数</th>
                <th class="table-date am-hide-sm-only">开始时间</th>
                <th class="table-date am-hide-sm-only">结束时间</th>
                <th class="table-author">地点</th>
                <th class="table-set">操作</th>
              </tr>
              </thead>
              <tbody>
              <c:forEach items="${list}" var="info">
              <tr>
                <td> ${info.id } </td>
                <td>${info.examName }</td>
                <td>${info.subjectName }</td>
                <td id="count" class="am-hide-sm-only">${info.count }</td>
                <td id="icount" class="am-hide-sm-only">${info.incount}</td>
                <td class="am-hide-sm-only">${info.startTime }</td>
                <td class="am-hide-sm-only">${info.endTime }</td>
                <td class="am-hide-sm-only">${info.place }</td>
                <td>
                  <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <a href="${pageContext.request.contextPath}/exam/modifyExam/${info.id }" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span>修改</a>
                      <a id="a" href="${pageContext.request.contextPath}/exam/apportUser/${info.id}" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-chain"></span>分配人员</a>
                      <a href="${pageContext.request.contextPath}/exam/deleteExam?id=${info.id }&pageNow=${page.pageNow}" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</a>
                    </div>
                  </div>
                </td>
              </tr>
              </c:forEach>
              </tbody>
            </table>
            <div class="am-cf">
              共  ${page.pageCount} 页          当前页为 第 ${page.pageNow}页 
              <div class="am-fr">
                <ul class="am-pagination">
                  <li class="am-disabled"><a href="#">«</a></li>
                  <li class="am-active"><a href="${pageContext.request.contextPath}/exam/listExam">第一页</a></li>
                  <li><a href="${pageContext.request.contextPath}/exam/toPage/${page.pageNow-1}">上一页</a></li>
                  <li><a href="${pageContext.request.contextPath}/exam/toPage/${page.pageNow+1}">下一页</a></li>
                  <li><a href="${pageContext.request.contextPath}/exam/toPage/${page.pageCount}">最后一页</a></li>
                  <li><a href="#">»</a></li>
                </ul>
              </div>
            </div>
            <hr />
          </form>
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
