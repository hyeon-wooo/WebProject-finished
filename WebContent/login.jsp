<%-- 
* DB root 계정 password는 0000
* DB 버전 8.0
* JDBC 버전 8.0
* 연결하려는 스키마 이름 : webp 
--%>

<%--
* UserBeans 이용
* request로 넘어온 username과 password를 DB의 데이터와 대조 후
* 일치하면 세션 제공
* 불일치하면 alert
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>





<!DOCTYPE html>
<head>
<meta charset="UTF-8">
</head>

<%-- DB Connect --%>
<jsp:useBean id="DBC" class="WebProject.UserBean" scope="page">
<%

%>
</jsp:useBean>


<%
Connection cnn = null;
cnn = DBC.DBconnect();

if( DBC.login(request.getParameter("inputId"), request.getParameter("inputPassword")) ) {

		session.setAttribute("loginId", request.getParameter("inputId"));
		session.setMaxInactiveInterval(1000); 
		%> 
		<script>
		location.href = "index.jsp";
		</script>
<%	
}

else {
%>
<script>
alert('아이디 혹은 비밀번호를 다시 확인해주세요.');
history.back();
</script>
<% } %>

