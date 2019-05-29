<%@ page language="java" pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="" type="image/x-icon">
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<!--雪花-->
<script src="assets/jquery/firstpage/snow.js"></script>
<%-- <script type="text/javascript" src="<%=path %>/assets/jquery/jquery-1.9.1.min.js"></script> --%>
<title>taoai</title>
<style style="text/css">
* {
	margin: 0;
	padding: 0;
}

body {
	background: url("assets/images/firstpage/1.jpg");
	background-size: cover;
}
/*start top*/
div .top {
	width: 400px;
	height: 50px;
	margin: 60px auto;
	font-size: 30px;
	font-family: "华文行楷";
	color: #fff;
	background: -webkit-linear-gradient(45deg, #ff0000, #ffcc00, #ffff99, #33ccff,
		#00ff33, #6600ff, #333399);
	-webkit-background-clip: text;
}
/*end top*/
/*start box*/
div .box {
	width: 310px;
	height: 310px;
	margin: auto;
	perspective: 800px; /*景深*/
}

div .box .pic {
	position: relative;
	transform-style: preserve-3d; /*3d环境*/
	animation: play 10s linear infinite; /*动画名称 执行时间 匀速 无限执行 play调用的是@keyframes play*/
}

div .box ul li {
	list-style: none;
	position: absolute;
	top: 0;
	left: 0;
}
/*start box*/
/*定义一个关键帧*/
@keyframes play {
	from {transform: rotateY(0deg);
}

to {
	transform: rotateY(360deg);
}

}
/*start text*/
#text {
	width: 500px;
	height: 180px;
	color: #6fade1;
	margin: auto;
	font-size: 24px;
	font-family: "方正喵呜体";
}
/*end text*/
</style>
</head>
<body>
	<div id="bstyle">
		<!--start top-->
		<div class="top">
			<marquee behavior="alternate">时光不老，我们不散</marquee>
		</div>
		<!--end top-->
		<!--start box-->
		<div class="box">
			<div class="pic">
				<ul>
					<li><img src="assets/images/firstpage/1.png" width=""
						height="" alt="" /></li>
					<li><img src="assets/images/firstpage/2.png" width=""
						height="" alt="" /></li>
					<li><img src="assets/images/firstpage/3.png" width=""
						height="" alt="" /></li>
					<li><img src="assets/images/firstpage/4.png" width=""
						height="" alt="" /></li>
					<li><img src="assets/images/firstpage/5.png" width=""
						height="" alt="" /></li>
					<li><img src="assets/images/firstpage/6.png" width=""
						height="" alt="" /></li>
				</ul>
			</div>
		</div>
		<!--end box-->
		<!--start text-->
		<div id="text"></div>
		<div id="to_detial">
			<a href="TotalPage.jsp" style="text-decoration:none"><span id="a_text"></span></a>
		</div>
	</div>

	<!--end text-->
	<audio src="assets/musics/firstpage/music.mp3" hidden="true"
		autoplay="true" loop="true"></audio>
	<script>
		var swidth = $(window).width(); //浏览器当前窗口可视区域宽度
		var sheight = $(window).height(); //浏览器当前窗口可视区域高度
	    var styleElement = document.getElementById("bstyle");
	    styleElement.style.setProperty('width',swidth);
	    styleElement.style.setProperty('height',(sheight-100));
      	/* alert("swidth="+swidth+";sheight="+(sheight-300)); */
      	
      	// 设置“浏览我们的点滴”CSS
      	var styleElement = document.getElementById("to_detial");
      	styleElement.style.setProperty('float','right');
      	styleElement.style.setProperty('position','fixed');
      	styleElement.style.setProperty('top',((sheight-200)/2));
      	styleElement.style.setProperty('left',(swidth-200));
	    styleElement.style.setProperty('width','180px');
	    styleElement.style.setProperty('height','30px');
	    styleElement.style.setProperty('font-size','24px');
	    
		$(".pic ul li").each(function(i) {//遍历
			var deg = 360
			/$(".pic ul li").size(); //size个数
			//当前的li对象 添加css样式
			$(this).css({
				"transform" : "rotateY(" + deg * i + "deg) translateZ(216px)"
			});

			$.fn.snow({
				minSize : 10,
				maxSize : 15,
				newOn : 500,
				flakeColor : "#ffffff"
			});
		});

		var i = 0;
		var str = "能够遇见你是我最大的幸运，有了你生活变得丰富多彩，有了你，世界变得如此迷人；你是我的世界，我的世界是你，对我来说，不是在最美好的时光遇见了你，而是遇见你后都是最美好的时光！";
		var a_str = "浏览我们的点滴";
		function typing() {
			//获取div
			var mydiv = document.getElementById("text");
			mydiv.innerHTML += str.charAt(i);
			i++;
			var id = setTimeout(typing, 100);
			if (i == str.length) {
				clearTimeout(id);
			}
			
		}
		var j = 0;
	   function a_typing() {
			var myhref = document.getElementById("a_text");
			myhref.innerHTML += a_str.charAt(j);
			j++;
			var a_id = setTimeout(a_typing, 100);
			if (j == a_str.length) {
				clearTimeout(a_id);
			}
			
		}
	   window.onload=function(){   
		 res = typing();
		 a_typing();  
		}    
	</script>

</body>
</html>