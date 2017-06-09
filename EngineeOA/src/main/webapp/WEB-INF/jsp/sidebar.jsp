<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>Sidebar | Amaze UI Example</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="alternate icon" type="image/png" href="${pageContext.request.contextPath}/assets/i/favicon.png">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.min.css"/>
  <style>
    @media only screen and (min-width: 641px) {
      .am-offcanvas {
        display: block;
        position: static;
        background: none;
      }

      .am-offcanvas-bar {
        position: static;
        width: auto;
        background: none;
        -webkit-transform: translate3d(0, 0, 0);
        -ms-transform: translate3d(0, 0, 0);
        transform: translate3d(0, 0, 0);
      }
      .am-offcanvas-bar:after {
        content: none;
      }

    }

    @media only screen and (max-width: 640px) {
      .am-offcanvas-bar .am-nav>li>a {
        color:#ccc;
        border-radius: 0;
        border-top: 1px solid rgba(0,0,0,.3);
        box-shadow: inset 0 1px 0 rgba(255,255,255,.05)
      }

      .am-offcanvas-bar .am-nav>li>a:hover {
        background: #404040;
        color: #fff
      }

      .am-offcanvas-bar .am-nav>li.am-nav-header {
        color: #777;
        background: #404040;
        box-shadow: inset 0 1px 0 rgba(255,255,255,.05);
        text-shadow: 0 1px 0 rgba(0,0,0,.5);
        border-top: 1px solid rgba(0,0,0,.3);
        font-weight: 400;
        font-size: 75%
      }

      .am-offcanvas-bar .am-nav>li.am-active>a {
        background: #1a1a1a;
        color: #fff;
        box-shadow: inset 0 1px 3px rgba(0,0,0,.3)
      }

      .am-offcanvas-bar .am-nav>li+li {
        margin-top: 0;
      }
    }

    .my-head {
      margin-top: 40px;
      text-align: center;
    }

    .my-button {
      position: fixed;
      top: 0;
      right: 0;
      border-radius: 0;
    }
    .my-sidebar {
      padding-right: 0;
      border-right: 1px solid #eeeeee;
    }

    .my-footer {
      border-top: 1px solid #eeeeee;
      padding: 10px 0;
      margin-top: 10px;
      text-align: center;
    }
  </style>
</head>
<body>
<header class="am-g my-head">
  <div class="am-u-sm-12 am-article">
    <h1 class="am-article-title">永远的蝴蝶</h1>
    <p class="am-article-meta">陈启佑（台湾）</p>
  </div>
</header>
<hr class="am-article-divider"/>
<div class="am-g am-g-fixed">
  <div class="am-u-md-9 am-u-md-push-3">
    <div class="am-g">
      <div class="am-u-sm-11 am-u-sm-centered">
        <div class="am-cf am-article">
          <div class="am-align-left">
            <img src="http://s.amazeui.org/media/i/demos/bing-1.jpg" alt="" width="240">
          </div>
          <div>
            那时候刚好下着雨，柏油路面湿冷冷的，还闪烁着青、黄、红颜色的灯火。我们就在骑楼下躲雨，看绿色的邮筒孤独地站在街的对面。我白色风衣的大口袋里有一封要寄给南部的母亲的信。樱子说她可以撑伞过去帮我寄信。我默默点头。
          </div>
          <p>“谁叫我们只带来一把小伞哪。”她微笑着说，一面撑起伞，准备过马路帮我寄信。从她伞骨渗下来的小雨点，溅在我的眼镜玻璃上。</p><p>随着一阵拔尖的煞车声，樱子的一生轻轻地飞了起来。缓缓地，飘落在湿冷的街面上，好像一只夜晚的蝴蝶。</p>
          <p>虽然是春天，好像已是秋深了。</p>
          <div class="am-align-right"><img src="http://s.amazeui.org/media/i/demos/bing-2.jpg" alt="" width="240"></div>
          <p>她只是过马路去帮我寄信。这简单的行动，却要叫我终身难忘了。我缓缓睁开眼，茫然站在骑楼下，眼里裹着滚烫的泪水。世上所有的车子都停了下来，人潮涌向马路中央。没有人知道那躺在街面的，就是我的，蝴蝶。这时她只离我五公尺，竟是那么遥远。更大的雨点溅在我的眼镜上，溅到我的生命里来。</p>
          <p>为什么呢？只带一把雨伞？</p>
          <p>然而我又看到樱子穿着白色的风衣，撑着伞，静静地过马路了。她是要帮我寄信的。那，那是一封写给南部母亲的信。我茫然站在骑楼下，我又看到永远的樱子走到街心。其实雨下得并不大，却是一生一世中最大的一场雨。而那封信是这样写的，年轻的樱子知不知道呢？</p>
          <blockquote>妈：我打算在下个月和樱子结婚。</blockquote>
          <hr class="am-article-divider">
          <h2>作者简介</h2>
          <p>《永远的蝴蝶》作者陈启佑，笔名渡也、江山之助，台湾省嘉义市人，中国文化大学中国文学博士，曾任教于嘉义农专、台湾教育学院。</p>
          <hr class="am-article-divider">
          <h2>文章赏析</h2>
          <h3>赏析一</h3>
          <p>《永远的蝴蝶》就像一支低沉而哀怨的悲曲，幽幽道来，委婉动人。读罢此文，脑海中一直浮现着这样一个场景：阴雨中，樱子如蝴蝶般轻轻飞了起来，又缓缓落到了街面上。雨是冰凉的，街面是湿冷的，蝴蝶的飘飞是凄美的，又是令人伤痛的。</p>
          <h3>赏析二</h3>
          <p>文章有几点尤值得我们好好品味。一是作品以“雨”为线索，贯穿全文的始终。悲剧因“雨”而生，小说开篇写“雨”，正是对不幸和灾难起因的一个交代。樱子遭遇不幸后，又写“更大的雨点溅在我的眼镜上，溅到我的生命里来”，“成为一生一世的一场雨”。显然，“雨”又成为泪水和痛苦的象征。同时，以“雨”贯穿全文，也造成笼罩全文的阴冷凄凉的氛围。二是作家善于反复运用细节。如三次写到“站在骑楼下”，以此使“我”的情感思绪变化的脉络和层次更加清楚明显；两次写到樱子“穿着白色的风衣，撑着伞”，这是对“我”的心理刻画，突出了樱子美丽清纯的形象，也表达了“我”对樱子永不磨灭的爱。三是高超的谋篇布局技巧。直到作品的结尾处才告诉读者信的内容，这样构思，无疑加重了作品的悲剧色彩，让人哀痛欲绝，心不堪受。正因为作家善于谋篇布局，匠心独运，作品才有了很强的感染力。</p>
          <p><small>朗读并背诵全文</small></p>
        </div>
        <hr/>
        <ul class="am-comments-list">
          <li class="am-comment">
            <a href="#link-to-user-home">
              <img src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg?imageView/1/w/96/h/96/q/80" alt="" class="am-comment-avatar" width="48" height="48">
            </a>
            <div class="am-comment-main">
              <header class="am-comment-hd">
                <div class="am-comment-meta">
                  <a href="#link-to-user" class="am-comment-author">某人</a> 评论于 <time datetime="2013-07-27T04:54:29-07:00" title="2013年7月27日 下午7:54 格林尼治标准时间+0800">2014-7-12 15:30</time>
                </div>
              </header>
              <div class="am-comment-bd">
                <p>《永远的蝴蝶》一文，还吸收散文特长，多采用第一人称，淡化情节，体现一种思想寄托和艺术追求。</p>
              </div>
            </div>
          </li>
          <li class="am-comment">
            <a href="#link-to-user-home">
              <img src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg?imageView/1/w/96/h/96/q/80" alt="" class="am-comment-avatar" width="48" height="48">
            </a>
            <div class="am-comment-main">
              <header class="am-comment-hd">
                <div class="am-comment-meta">
                  <a href="#link-to-user" class="am-comment-author">路人甲</a> 评论于 <time datetime="2013-07-27T04:54:29-07:00" title="2013年7月27日 下午7:54 格林尼治标准时间+0800">2014-7-13 0:03</time>
                </div>
              </header>
              <div class="am-comment-bd">
                <p>感觉仿佛是自身的遭遇一样，催人泪下</p>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="am-u-md-3 am-u-md-pull-9 my-sidebar">
    <div class="am-offcanvas" id="sidebar">
      <div class="am-offcanvas-bar">
        <ul class="am-nav">
          <li><a href="#">永远的蝴蝶</a></li>
          <li class="am-nav-header">目录</li>
          <li><a href="#">原文</a></li>
          <li><a href="#">作者简介</a></li>
          <li><a href="#">文章赏析</a></li>
          <li><a href="#">读者评论</a></li>
        </ul>
      </div>
    </div>
  </div>
  <a href="#sidebar" class="am-btn am-btn-sm am-btn-success am-icon-bars am-show-sm-only my-button" data-am-offcanvas><span class="am-sr-only">侧栏导航</span></a>
</div>

<footer class="my-footer">
  <p>sidebar template<br><small>© Copyright XXX. by the AmazeUI Team.</small></p>
</footer>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
</body>
</html>
