<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
	
<%@page import="java.sql.*" %>


<!DOCTYPE html>
<head>
<meta charset="UTF-8">
</head>

<jsp:useBean id="DBC" class="WebProject.UserBean" scope="page">
</jsp:useBean>

	<%
		Connection cnn = DBC.DBconnect();

		String setName = request.getParameter("name");
		String setId = request.getParameter("id");
		String setPw = request.getParameter("password");
		String setBirth = request.getParameter("birth");
		String setPhone = request.getParameter("phone1") + request.getParameter("phone2") + request.getParameter("phone3");
		String setEmail = request.getParameter("email") + "@" + request.getParameter("email2");
	
		if( DBC.JoinUser(setName, setId, setPw, setBirth, setPhone, setEmail) ) {
	%>
		<script>
		alert("회원가입이 정상적으로 완료되었습니다."); 
		location.href="index.jsp";
		</script>
	<% } 
		else {
	%>
		<script>
		alert("입력하신 정보를 다시 한번 확인해주세요.");
		history.back();
		</script>
	<% } %>
<!-- End Of File -->