<%@page import="com.poscodx.guestbook.dao.GuestBookDao"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="com.poscodx.guestbook.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String no = request.getParameter("no");	
	String password = request.getParameter("password");
	
	GuestBookVo vo = new GuestBookDao().findByNo(Integer.parseInt(no));
	
	if(vo.getPassword().equals(password)){
		new GuestBookDao().deleteByNo(Integer.parseInt(no));
	} 

	response.sendRedirect("/guestbook01");
%>
