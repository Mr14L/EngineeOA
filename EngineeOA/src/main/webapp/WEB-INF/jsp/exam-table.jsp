<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">exam</strong> / <small>List</small></div>
      </div>

      <hr>

      <div class="am-g">
        
        <div class="am-u-sm-12 am-u-md-3">
          
        </div>
        <div class="am-u-sm-12 am-u-md-3">
          <div class="am-input-group am-input-group-sm">
            <input type="text" class="am-form-field">
          <span class="am-input-group-btn">
            <button class="am-btn am-btn-default" type="button">搜索</button>
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
                <th class="table-type">所需人数</th>
                <th class="table-type">实际人数</th>
                 <th class="table-date am-hide-sm-only">开始时间</th>
                  <th class="table-date am-hide-sm-only">结束时间</th>
                <th class="table-author">地点</th>
                <th class="table-set">操作</th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>1</td>
                <td>系统设计期末</td>
                <td>系统设计</td>
                <td class="am-hide-sm-only">3</td>
                <td class="am-hide-sm-only">2</td>
                <td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
                <td class="am-hide-sm-only">2014年9月5日 7:28:47</td>
                <td class="am-hide-sm-only">丹青628</td>
                <td>
                  <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <a href="${pageContext.request.contextPath}/exam/exam-modify" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span>修改</a>
                      <a href="${pageContext.request.contextPath}/exam/exam-user-apport" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-chain"></span>分配人员</a>
                      <a href="${pageContext.request.contextPath}/exam/exam-delete" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</a>
                    </div>
                  </div>
                </td>
              </tr>
              <tr>
                <td>1</td>
                <td>系统设计期末</td>
                <td>系统设计</td>
                <td class="am-hide-sm-only">3</td>
                <td class="am-hide-sm-only">2</td>
                <td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
                <td class="am-hide-sm-only">2014年9月5日 7:28:47</td>
                <td class="am-hide-sm-only">丹青628</td>
                <td>
                  <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <a href="${pageContext.request.contextPath}/exam/exam-modify" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span>修改</a>
                      <a href="${pageContext.request.contextPath}/exam/exam-user-apport" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-chain"></span>分配人员</a>
                      <a href="${pageContext.request.contextPath}/exam/exam-delete" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</a>
                    </div>
                  </div>
                </td>
              </tr>
              <tr>
                <td>1</td>
                <td>系统设计期末</td>
                <td>系统设计</td>
                <td class="am-hide-sm-only">3</td>
                <td class="am-hide-sm-only">2</td>
                <td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
                <td class="am-hide-sm-only">2014年9月5日 7:28:47</td>
                <td class="am-hide-sm-only">丹青628</td>
                <td>
                  <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <a href="${pageContext.request.contextPath}/exam/exam-modify" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span>修改</a>
                      <a href="${pageContext.request.contextPath}/exam/exam-user-apport" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-chain"></span>分配人员</a>
                      <a href="${pageContext.request.contextPath}/exam/exam-delete" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</a>
                    </div>
                  </div>
                </td>
              </tr>
              <tr>
                <td>1</td>
                <td>系统设计期末</td>
                <td>系统设计</td>
                <td class="am-hide-sm-only">3</td>
                <td class="am-hide-sm-only">2</td>
                <td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
                <td class="am-hide-sm-only">2014年9月5日 7:28:47</td>
                <td class="am-hide-sm-only">丹青628</td>
                <td>
                  <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <a href="${pageContext.request.contextPath}/exam/exam-modify" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span>修改</a>
                      <a href="${pageContext.request.contextPath}/exam/exam-user-apport" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-chain"></span>分配人员</a>
                      <a href="${pageContext.request.contextPath}/exam/exam-delete" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</a>
                    </div>
                  </div>
                </td>
              </tr>
              <tr>
                <td>1</td>
                <td>系统设计期末</td>
                <td>系统设计</td>
                <td class="am-hide-sm-only">3</td>
                <td class="am-hide-sm-only">2</td>
                <td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
                <td class="am-hide-sm-only">2014年9月5日 7:28:47</td>
                <td class="am-hide-sm-only">丹青628</td>
                <td>
                  <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <a href="${pageContext.request.contextPath}/exam/exam-modify" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span>修改</a>
                      <a href="${pageContext.request.contextPath}/exam/exam-user-apport" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-chain"></span>分配人员</a>
                      <a href="${pageContext.request.contextPath}/exam/exam-delete" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</a>
                    </div>
                  </div>
                </td>
              </tr>
              <tr>
                <td>1</td>
                <td>系统设计期末</td>
                <td>系统设计</td>
                <td class="am-hide-sm-only">3</td>
                <td class="am-hide-sm-only">2</td>
                <td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
                <td class="am-hide-sm-only">2014年9月5日 7:28:47</td>
                <td class="am-hide-sm-only">丹青628</td>
                <td>
                  <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <a href="${pageContext.request.contextPath}/exam/exam-modify" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span>修改</a>
                      <a href="${pageContext.request.contextPath}/exam/exam-user-apport" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-chain"></span>分配人员</a>
                      <a href="${pageContext.request.contextPath}/exam/exam-delete" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</a>
                    </div>
                  </div>
                </td>
              </tr>
              </tbody>
            </table>
            <div class="am-cf">
              共 15 条记录
              <div class="am-fr">
                <ul class="am-pagination">
                  <li class="am-disabled"><a href="#">«</a></li>
                  <li class="am-active"><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li><a href="#">»</a></li>
                </ul>
              </div>
            </div>
            <hr />
            <p>注：.....</p>
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
