<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Enginee OA</title>
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
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->


      <div class="admin-content">
    <div class="admin-content-body">
      <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">个人资料</strong> / <small>Personal information</small></div>
      </div>

      <hr/>

      <div class="am-g">
        <div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">
          <div class="am-panel am-panel-default">
          </div>

        </div>

        <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4">
          <form class="am-form am-form-horizontal">
            <div class="am-form-group">
              <label for="user-name" class="am-u-sm-3 am-form-label" >姓名 / Name</label>
                <label  for="user-name" class="am-u-sm-3 am-form-label"> ${u.name}</label>
              <div class="am-u-sm-9">
              </div>
            </div>
            <hr/>
            
            <div class="am-form-group">
              <label for="user-zhicheng" class="am-u-sm-3 am-form-label">职称 / Academic</label>
               <label for="user-zhicheng" class="am-u-sm-3 am-form-label">${u.academic}</label>
              <div class="am-u-sm-9">
              </div>
            </div>
 			 <hr/>
            <div class="am-form-group">
              <label for="user-email" class="am-u-sm-3 am-form-label">电子邮件 / Email</label>
              <label for="user-email" class="am-u-sm-5 am-form-label">${u.email}</label>
              <div class="am-u-sm-6">
              </div>
            </div>
			  <hr/>
            <div class="am-form-group">
              <label for="user-phone" class="am-u-sm-3 am-form-label">电话 / Telephone</label>
              <label for="user-phone" class="am-u-sm-4 am-form-label">${u.telephone}</label>
              <div class="am-u-sm-6">
              </div>
            </div>
			  <hr/>
            <div class="am-form-group">
              <label for="user-QQ" class="am-u-sm-3 am-form-label">QQ</label>
              <label for="user-QQ" class="am-u-sm-4 am-form-label">${u.qq}</label>
              <div class="am-u-sm-7">
              </div>
            </div>
			  <hr/>
            <div class="am-form-group">
              <label for="user-intro" class="am-u-sm-3 am-form-label">简介 / Intro</label>
              <label for="user-intro" class="am-u-sm-4 am-form-label">${u.intro}</label>
              <div class="am-u-sm-8">
	              </div>
              </div>
            </div>
			  <hr/>
            <div class="am-form-group">
              <div class="am-u-sm-9 am-u-sm-push-3">
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
 

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
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.1.min.js"></script>
</body>
</html>
