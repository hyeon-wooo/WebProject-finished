<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.oreilly.servlet.*" %>

<jsp:useBean id="DBC" class="WebProject.UserBean" scope="page"></jsp:useBean>

<% 
DBC.DBconnect();
request.setCharacterEncoding("UTF-8");
%>


<!DOCTYPE html>

<%
String savePath = application.getRealPath("imgContainer");
int maxSize = 1024*1024*10;

MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF-8");


String type = multi.getParameter("radio");
String fileName = multi.getFilesystemName("uploadFile");

int up = DBC.Upload(multi.getParameter("title"), savePath, fileName, multi.getParameter("content"), (String)session.getAttribute("loginId"), type);

if ( up == 1 ) {
	 %><script>alert("업로드 성공")</script> <%
	
	if (type.equals("goSave")) {
		%> <script>location.href="saveBoard.jsp?pageNum=1"</script> <%	
	}
	
	else if (type.equals("goLost")) {
		%> <script>location.href="lostBoard.jsp?pageNum=1"</script> <%
	}
}
%>

