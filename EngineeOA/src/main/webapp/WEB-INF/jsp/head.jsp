<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>  ^_^ Enginee OA</title>
  <meta name="description" content="这是一个 user 页面">
  <meta name="keywords" content="user">
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
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.1.min.js"></script>
  <script type="text/javascript">
  $(function(){

      $("a").click(function(){
        var ss = $(this).attr("id");
       $("#frame").attr("src",ss);
      })
  })
  </script>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

<header class="am-topbar am-topbar-inverse admin-header">
  <div class="am-topbar-brand">
    <strong>Enginee</strong> <small>教务管理</small>
  </div>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
      <!-- <li><a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span class="am-badge am-badge-warning">5</span></a></li> -->
      <li class="am-dropdown" data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
          <span class="am-icon-users"></span> 教授 <span class="am-icon-caret-down"></span>
        </a>
    
      </li>
      <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>

</header>

<div class="am-cf admin-main">
  <!-- sidebar start -->
  <div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
    <div class="am-offcanvas-bar admin-offcanvas-bar">
      <ul class="am-list admin-sidebar-list">
        <li><a href="javascript:;" id="${pageContext.request.contextPath}/content/admin-index"><span class="am-icon-home"></span> 首页</a></li>
        <li class="admin-parent">
          <a class="am-cf" data-am-collapse="{target: '#collapse-nav'}"><span class="am-icon-file"></span> 个人模块 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
          <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
            <li><a  href="javascript:;"  id="${pageContext.request.contextPath}/content/admin-user" class="am-cf"><span class="am-icon-check"></span> 个人资料<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
            <li><a  href="javascript:;"  id="${pageContext.request.contextPath}/content/admin-modify" class="am-cf"><span class="am-icon-edit"></span> 修改信息<span class="am-icon-star am-fr am-margin-right "></span></a></li>
            <li><a  href="javascript:;"  id="${pageContext.request.contextPath}/content/admin-password-modify" class="am-cf"><span class="am-icon-eraser"></span> 修改密码<span class="am-fr am-margin-right "></span></a></li>
            <li><a href="javascript:;" id="${pageContext.request.contextPath}/content/admin-gallery"><span class="am-icon-th"></span> 相册页面<span class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
          </ul>
        </li>
        
        <li class="admin-parent">
          <a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><span class="am-icon-subscript"></span> 监考模块 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
          <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
            <li><a  href="javascript:;"  id="${pageContext.request.contextPath}/exam/exam-add" class="am-cf"><span class="am-icon-check"></span>添加监考信息<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
            <li><a href="javascript:;" id="${pageContext.request.contextPath}/exam/exam-table"><span class="am-icon-align-left"></span> 监考信息总览</a></li>
          </ul>
        </li>
        
         <li class="admin-parent">
          <a class="am-cf" data-am-collapse="{target: '#collapse-nav3'}"><span class="am-icon-columns"></span> 任务模块<span class="am-icon-angle-right am-fr am-margin-right"></span></a>
          <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav3">
            <li><a  href="javascript:;"  id="${pageContext.request.contextPath}/task/task-add" class="am-cf"><span class="am-icon-check"></span>发布回复类任务<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
            <li><a  href="javascript:;"  id="${pageContext.request.contextPath}/task/task-file-add" class="am-cf"><span class="am-icon-list-alt"></span> 发布文件类任务<span class="am-icon-star am-fr am-margin-right "></span></a></li>
             <li><a href="javascript:;" id="${pageContext.request.contextPath}/task/task-table"><span class="am-icon-align-left"></span>任务完成情况</a></li>
          </ul>
        </li>
                <li><a href="javascript:;" id="${pageContext.request.contextPath}/content/admin-author"><span class="am-icon-table"></span> 权限管理</a></li>
                <li><a href="javascript:;" id="${pageContext.request.contextPath}/user-task/task-user-table"><span class="am-icon-calendar"></span>查看个人任务</a></li>
        <li><a href="javascript:;" id="${pageContext.request.contextPath}/content/admin-log"><span class="am-icon-calendar"></span> 系统日志</a></li>
        <li><a href="javascript:;"><span class="am-icon-sign-out"></span> 注销</a></li>
      </ul>

      <div class="am-panel am-panel-default admin-sidebar-panel">
        <div class="am-panel-bd">
          <p><span class="am-icon-bookmark"></span> 坚持</p>
          <p>也许我们,装着的目标太多,所以忘了执着. </p><p>—— Lmdestiny</p>
        </div>
      </div>

    </div>
  </div>
  <!-- sidebar end -->

  <!-- content start -->
  <div class="admin-content">
  <iframe id="frame" src="${pageContext.request.contextPath}/content/admin-help" width="100%" height="100%"></iframe>
     <footer class="admin-content-footer">
      <hr>
      <p class="am-padding-left">© 2017 AllMobilize, Inc. Licensed under MIT license.</p>
    </footer>
  </div>
  </div>


  <!-- content end -->

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
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
