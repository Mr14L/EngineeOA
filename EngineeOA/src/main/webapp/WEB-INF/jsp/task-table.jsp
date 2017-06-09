<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">任务完成情况</strong> / <small>Task</small></div>
      </div>

      <ul class="am-avg-sm-1 am-avg-md-4 am-margin am-padding am-text-center admin-content-list ">
        <li><a href="#" class="am-text-success"><span class="am-icon-btn am-icon-file-text"></span><br/>发布任务数<br/>20</a></li>
        <li><a href="#" class="am-text-warning"><span class="am-icon-btn am-icon-briefcase"></span><br/>正在进行任务<br/>5</a></li>
        <li><a href="#" class="am-text-danger"><span class="am-icon-btn am-icon-recycle"></span><br/>过期任务<br/>15</a></li>
        <li><a href="#" class="am-text-secondary"><span class="am-icon-btn am-icon-user-md"></span><br/>完成任务次数<br/>3000</a></li>
      </ul>

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
              <th>管理</th>
            </tr>
            </thead>
            <tbody>
            <tr>
            <td>1</td>
            <td><a href="${pageContext.request.contextPath}/task/task-execute" title="查看完成信息">参加志愿者比赛</a></td>
            <td>文件类</td>
            <td>2017/6/9</td>
            <td>2017/7/1</td>
              <td>
                <div class="am-dropdown" data-am-dropdown>
                  <button class="am-btn am-btn-default am-btn-xs am-dropdown-toggle" data-am-dropdown-toggle><span class="am-icon-cog"></span> <span class="am-icon-caret-down"></span></button>
                  <ul class="am-dropdown-content">
                    <li><a href="${pageContext.request.contextPath}/task/task-remove">删除</a></li>
                  </ul>
                </div>
              </td>
            </tr>
            <tr>
            <td>1</td>
            <td><a href="${pageContext.request.contextPath}/task/task-execute" title="查看完成信息">参加志愿者比赛</a></td>
            <td>文件类</td>
            <td>2017/6/9</td>
            <td>2017/7/1</td>
              <td>
                <div class="am-dropdown" data-am-dropdown>
                  <button class="am-btn am-btn-default am-btn-xs am-dropdown-toggle" data-am-dropdown-toggle><span class="am-icon-cog"></span> <span class="am-icon-caret-down"></span></button>
                  <ul class="am-dropdown-content">
                    <li><a href="${pageContext.request.contextPath}/task/task-remove">删除</a></li>
                  </ul>
                </div>
              </td>
            </tr>
            
            <tr>
            <td>1</td>
            <td><a href="${pageContext.request.contextPath}/task/task-execute" title="查看完成信息">参加志愿者比赛</a></td>
            <td>文件类</td>
            <td>2017/6/9</td>
            <td>2017/7/1</td>
              <td>
                <div class="am-dropdown" data-am-dropdown>
                  <button class="am-btn am-btn-default am-btn-xs am-dropdown-toggle" data-am-dropdown-toggle><span class="am-icon-cog"></span> <span class="am-icon-caret-down"></span></button>
                  <ul class="am-dropdown-content">
                    <li><a href="${pageContext.request.contextPath}/task/task-remove">删除</a></li>
                  </ul>
                </div>
              </td>
            </tr>
            
            <tr>
            <td>1</td>
            <td><a href="${pageContext.request.contextPath}/task/task-execute" title="查看完成信息">参加志愿者比赛</a></td>
            <td>文件类</td>
            <td>2017/6/9</td>
            <td>2017/7/1</td>
              <td>
                <div class="am-dropdown" data-am-dropdown>
                  <button class="am-btn am-btn-default am-btn-xs am-dropdown-toggle" data-am-dropdown-toggle><span class="am-icon-cog"></span> <span class="am-icon-caret-down"></span></button>
                  <ul class="am-dropdown-content">
                    <li><a href="${pageContext.request.contextPath}/task/task-remove">删除</a></li>
                  </ul>
                </div>
              </td>
            </tr>
            
            <tr>
            <td>1</td>
            <td><a href="${pageContext.request.contextPath}/task/task-execute" title="查看完成信息">参加志愿者比赛</a></td>
            <td>文件类</td>
            <td>2017/6/9</td>
            <td>2017/7/1</td>
              <td>
                <div class="am-dropdown" data-am-dropdown>
                  <button class="am-btn am-btn-default am-btn-xs am-dropdown-toggle" data-am-dropdown-toggle><span class="am-icon-cog"></span> <span class="am-icon-caret-down"></span></button>
                  <ul class="am-dropdown-content">
                    <li><a href="${pageContext.request.contextPath}/task/task-remove">删除</a></li>
                  </ul>
                </div>
              </td>
            </tr>
            
          
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
