<%@ page language="java" pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
<%
String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
%>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<%=path %>/assets/jquery/jquery-1.9.1.min.js"></script>
<title>陶爱堡</title>
</head>
<body>
<a href="taoai/FirstPage.jsp">跳转FirstPage.jsp</a>
<a href="taoai/TotalPage.jsp">跳转TotalPage.jsp</a>

</body>
<script type="text/javascript">

</script>
</html>