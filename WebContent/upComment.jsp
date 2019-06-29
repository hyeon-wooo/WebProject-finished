<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>

    
<jsp:useBean id="DBC" class="WebProject.UserBean" scope="page"> </jsp:useBean>
<% 
request.setCharacterEncoding("utf-8");
DBC.DBconnect(); 

String articleNo = (String)application.getAttribute("articleNo");
String commentTable = (String)application.getAttribute("tableName");
String name = (String)session.getAttribute("loginId");
String comment = request.getParameter("comment");

String table = null;
if (commentTable.equals("comment_save")) table = "save_page";
else if (commentTable.equals("comment_lost")) table = "lost_page";

DBC.UploadComment(articleNo, commentTable, name, comment);
%>

<!DOCTYPE>

<script>
location.href="article.jsp?no=<%= articleNo %>&boardType=<%= table %>";
</script>