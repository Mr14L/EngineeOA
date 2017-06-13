<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		//判断原密码是否正确
		$("input[name='oldPassword']").change(function(){
			if($(this).val()!=$("input[name='oldPassword1']").val()){
				alert("原密码输入错误，请重新输入！");
			}
		});
		
		//判断新密码前后是否一致
		$("#password2").change(function(){
			if($("#password1").val()!=$(this).val()){
				alert("前后密码不一致请重新输入！");
				}
			});
		
		//提交修改
		$("#button1").click(function(){
			$.post("${pageContext.request.contextPath}/user/passwordUpdate",{"password":$("input[name='password1']").val()},
				function(data){
				alert("修改成功");
			});
		});
		
		//取消修改
		$("#button2").click(function(){
			$("input[name='oldPassword']").val("");
			$("#password1").val("");
			$("#password2").val("");
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
        <strong class="am-text-primary am-text-lg">修改密码</strong> 
        <small>Password</small>
      </div>
    </div>

    <hr>

    <div class="am-tabs am-margin" data-am-tabs>
      <ul class="am-tabs-nav am-nav am-nav-tabs">
        <li class="am-active"><a href="#tab1"></a></li>
      </ul>

      <div class="am-tabs-bd">
        <div class="am-tab-panel am-fade am-in am-active" id="tab1">
          <div class="am-g am-margin-top">
            <div class="am-u-sm-4 am-u-md-2 am-text-right">请输入原密码</div>
            
            <div class="am-u-sm-8 am-u-md-10">
            	<input type="hidden" name="oldPassword1" value="${user.password }"/>
             	<input type="password" name="oldPassword" />
            </div>
          </div>
          
          <div class="am-g am-margin-top">
            <div class="am-u-sm-4 am-u-md-2 am-text-right">请输入新密码</div>
            <div class="am-u-sm-8 am-u-md-10">
             	<input type="password" id="password1" name="password1" />
            </div>
          </div>
          
          <div class="am-g am-margin-top">
            <div class="am-u-sm-4 am-u-md-2 am-text-right">再次输入新密码</div>
            <div class="am-u-sm-8 am-u-md-10">
             	<input type="password" id="password2" name="password2"/>
            </div>
          </div>

         


        </div>

      

      </div>
    </div>

    <div class="am-margin">
      <button type="button" id="button1" class="am-btn am-btn-primary am-btn-xs">确认修改</button>
      <button type="button" id="button2" class="am-btn am-btn-primary am-btn-xs">放弃修改</button>
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
