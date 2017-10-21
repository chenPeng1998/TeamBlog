<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/21
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/png" href="images/logo.png">
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <title>能干微博</title>
</head>
<body>
<!-- 头部导航 -->
<div class="plc-top">
    <div class="top-main">
        <div class="logo">
            <img src="images/logo.png"/>
        </div>
        <div class="search">
            <input type="text"/>
            <img src="images/search.png"/>
        </div>
        <div class="position">
            <ul>
                <li class="shouye"><a>首页</a></li>
                <li><a>视频</a></li>
                <li><a>游戏</a></li>
                <li><a href="myhomepage.html">个人主页</a></li>
            </ul>
        </div>
        <div>
            <img src=""/>
            <img src=""/>
        </div>
    </div>
</div>
<!-- 页面主体 -->
<div class="wb-main">
    <!-- 页面内容主体 -->
    <div class="wb-main2">
        <!-- 左侧导航区 -->
        <div class="main-l">
            <ul>
                <li>首页</li>
                <li>我的收藏</li>
                <li>我的赞</li>
                <li>好友圈</li>
                <li>特别关注</li>
                <li>名人明星</li>
            </ul>
        </div>
        <!-- 内容区 -->
        <div class="main-index">
            <!-- 发布博文区 -->
            <div class="index-input">
                <!-- 博文内容 -->
                <input type="text" class="input" style="background-color: rgba(255, 255, 255,0.3) "/>
                <div class="index-chose">
                    <ul>
                        <li>表情</li>
                        <li>图片</li>
                        <li>视频</li>
                        <li>话题</li>
                        <li>头条文章</li>
                        <li>...</li>
                        <li>
                            <select>
                                <option>公开</option>
                                <option>好友圈</option>
                                <option>仅自己可见</option>
                                <option>群可见</option>
                            </select>
                        </li>
                    </ul>
                    <input type="button" value="发布"/>
                </div>
            </div>
            <!-- 博文展示区导航 -->
            <div class="show">
                <ul>
                    <li class="show-top">全部</li>
                    <li class="show-top">原创</li>
                    <li class="show-top">图片</li>
                    <li class="show-top">视频</li>
                    <li class="show-top">音乐</li>
                    <li class="show-top">文章</li>
                </ul>
                <input type="text"/>
            </div>
            <!-- 博文展示区内容 -->
            <div class="show-main">
                <div>
                    <div class="show-img">
                        <img src="images/head.png"/>
                    </div>
                    <div class="main-m">
                        <p>电竞自媒体</p>
                        <p>10月13日 16:15</p>
                        <p>#英雄联盟s7#推特上那么乐观的Perkz面对出局也流下了男儿泪!心疼...电子竞技就是这么残酷...</p>
                        <img src="images/main-img.png"/>
                    </div>
                </div>
                <div class="show-foot">
                    <ul>
                        <li>收藏</li>
                        <li>351</li>
                        <li>914</li>
                        <li>3442</li>
                    </ul>
                </div>
            </div>
            <div class="show-main">
                <div>
                    <div class="show-img">
                        <img src="images/head.png"/>
                    </div>
                    <div class="main-m">
                        <p>电竞自媒体</p>
                        <p>10月13日 16:15</p>
                        <p>#英雄联盟s7#推特上那么乐观的Perkz面对出局也流下了男儿泪!心疼...电子竞技就是这么残酷...</p>
                        <img src="images/main-img.png"/>
                    </div>
                </div>
                <div class="show-foot">
                    <ul>
                        <li>收藏</li>
                        <li>351</li>
                        <li>914</li>
                        <li>3442</li>
                    </ul>
                </div>
            </div>
            <div class="show-main">
                <div>
                    <div class="show-img">
                        <img src="images/head.png"/>
                    </div>
                    <div class="main-m">
                        <p>电竞自媒体</p>
                        <p>10月13日 16:15</p>
                        <p>#英雄联盟s7#推特上那么乐观的Perkz面对出局也流下了男儿泪!心疼...电子竞技就是这么残酷...</p>
                        <img src="images/main-img.png"/>
                    </div>
                </div>
                <div class="show-foot">
                    <ul>
                        <li>收藏</li>
                        <li>351</li>
                        <li>914</li>
                        <li>3442</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- 个人信息和推荐 -->
        <div class="main-r">
            <!-- 个人信息展示区 -->
            <div class="person-infor">
                <div>
                    <img src="images/person-img.png"/>
                </div>
                <div class="person-main">
                    <p>碧落赋vs天帝</p>
                    <div class="person-head">
                        <img src="images/person-head.png"/>
                    </div>
                    <div class="pm">
                        <p>11</p>
                        <p>关注</p>
                    </div>
                    <div class="pm2">
                        <p>32</p>
                        <p>粉丝</p>
                    </div>
                    <div class="pm">
                        <p>14</p>
                        <p>微博</p>
                    </div>
                </div>
            </div>
            <!-- 热门推荐区 -->
            <div class="r-hot">
                <div class="hot-top">
                    <p>热门话题</p>
                    <input type="button" value="换一换"/>
                </div>
                <div class="hot-content">
                    <ul>
                        <li>热巴易烊千玺同框</li>
                        <li>易烊千玺 晚上不洗澡</li>
                        <li>angelababy倪妮景甜</li>
                        <li>这位家长简直就是一股清流</li>
                        <li>宋茜 尖叫</li>
                    </ul>
                </div>
            </div>
            <div class="r-hot">
                <div class="hot-top">
                    <p>热门话题</p>
                    <input type="button" value="换一换"/>
                </div>
                <div class="hot-content">
                    <ul>
                        <li>热巴易烊千玺同框</li>
                        <li>易烊千玺 晚上不洗澡</li>
                        <li>angelababy倪妮景甜</li>
                        <li>这位家长简直就是一股清流</li>
                        <li>宋茜 尖叫</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 版权区 -->
<div class="copyright">
    Copyright © 2009-2017 WEIBO 北京微梦创科网络技术有限公司
</div>
<!-- 回顶部按钮 -->
<div class="return">
    <a href="#">返回顶部</a>
</div>
</body>
</html>
