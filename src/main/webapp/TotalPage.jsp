<%@ page language="java" pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="assets/CSS/fanye/book.css">
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="assets/jquery/fanye/book.js"></script>
<title>taoai</title>
</head>
<body>
	<section id="knowledge" class="viewBlock">
		<div class="bookBox">
			<a class="lastBtn"><</a> <a class="nextBtn">></a>
			<div class="bookPage frist">
				<img src="assets/images/fanye/dataImg1.png" />
			</div>
			<div class="bookPage runPage">
				<div class="bookWord">
					<span>Glacier</span> red in the glacier. <span class="pageNumber">1</span>
				</div>
				<img src="assets/images/fanye/dataImg2.png" />
			</div>
			<div class="bookPage runPage">
				<div class="bookWord">
					<span>Surface</span> water supply, the . <span class="pageNumber">2</span>
				</div>
				<img src="assets/images/fanye/dataImg3.png" />
			</div>
			<div class="bookPage runPage">
				<div class="bookWord">
					<span>Groundwater</span>itions, good . <span class="pageNumber">3</span>
				</div>
				<img src="assets/images/fanye/dataImg4.png" />
			</div>
			<div class="bookPage last">
				<div class="bookWord">
					<span>Ocean</span>nts for only 2%.</span> <span class="pageNumber">4</span>
				</div>
			</div>
		</div>
	</section>
</body>
</html>