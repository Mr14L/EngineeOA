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
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

  <div class="admin-content">
    <div class="admin-content-body">
      <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">人员</strong> / <small>List</small></div>
      </div>

      <hr>

      <div class="am-g">
        
        <div class="am-u-sm-12 am-u-md-3">
          
        </div>
        <div class="am-u-sm-12 am-u-md-3">
          <div class="am-input-group am-input-group-sm">
          </div>
        </div>
      </div>

       <div class="am-g">
        <div class="am-u-sm-12">
          <table class="am-table am-table-bd am-table-striped admin-content-table">
            <thead>
            <tr>
              <th>ID</th>
              <th>用户名</th>
              <th>完成情况</th>
              <th>完成时间</th>
              <th>操作</th>
            </tr>
            </thead>
            <tbody><%int i=0; %>
            <c:forEach items="${page.list}" var="u">
            	<tr><%i++; %>
            	<td><%=i %></td>
            	<td> ${u.name}</td>
            	<td>
            	<c:choose>
            	<c:when test="${u.reply.replyTime!=null && u.reply.task.id==task.id}">
            		<c:if test="${u.reply.task.endTime.isAfter(u.reply.replyTime) }">
            			<c:out  value="正常完成"></c:out> 
            		</c:if> 
            		<c:if test="${u.reply.task.endTime.isBefore(u.reply.replyTime) }">
            			<c:out value="超时完成"></c:out> 
            		</c:if>
            	</c:when>
            	<c:otherwise>
            		<c:out value="未完成"></c:out>
            	</c:otherwise>
            	</c:choose> 
            	</td>
            	<td> <c:if test="${u.reply.replyTime!=null}"> 
            		${u.reply.replyTime}
            		</c:if> 
            	</td>
              	<td>
                  	<div class="am-btn-toolbar">
                    	<div class="am-btn-group am-btn-group-xs">
                    	<c:if test="${task.taskType=='回复性任务' && u.reply.replyTime!=null}">
                    	<a href="${pageContext.request.contextPath}/user-task/findReply/email?email=${u.email}" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span>查看回复</a>
                    	</c:if>
                      	<c:if test="${task.taskType=='文件型任务' && u.reply.replyTime!=null}">
                      	<a href="${pageContext.request.contextPath}/task/task-download/email?email=${u.email}" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-chain"></span>下载附件</a>
                      	</c:if>
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
                  <li class="am-active"><a href="${pageContext.request.contextPath}/task/executeTask/${task.id }">第一页</a></li>
                  <li><a href="${pageContext.request.contextPath}/task/toPage?pagenow=${page.pageNow-1}&&id=${task.id}">上一页</a></li>
                  <li><a href="${pageContext.request.contextPath}/task/toPage?pagenow=${page.pageNow+1}&&id=${task.id}">下一页</a></li>
                  <li><a href="${pageContext.request.contextPath}/task/toPage?pagenow=${page.pageCount}&&id=${task.id}">最后一页</a></li>
                  <li><a href="#">»</a></li>
                </ul>
              </div>
            </div>
            <hr />
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
