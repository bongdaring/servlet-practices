<%@page import="servlets.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UserVo vo0 = new UserVo();
	vo0.setNo(0L);
	vo0.setName("둘리0");
	
	pageContext.setAttribute("vo", vo0);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>scope(객체의 존속 범위)</h4>
	${vo.no } <br>
	${vo.name } <br>
	
	== request scope =================<br>
	${requestScope.no } <br>
	${requestScope.name } <br>
	
	== session scope =================<br>
	${sessionScope.no } <br>
	${sessionScope.name } <br>
	
	== application scope =================<br>
	${applicationScope.no } <br>
	${applicationScope.name } <br>
	
</body>
</html>