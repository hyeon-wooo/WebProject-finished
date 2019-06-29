<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.ResultSet, java.util.*" 
    session="true" %>
   
<jsp:useBean id="DBC" class="WebProject.UserBean" scope="page"> </jsp:useBean>
<% DBC.DBconnect();

String no = request.getParameter("no");
String table = request.getParameter("boardType");
String commentTable = null;
if (table.equals("save_page")) commentTable = "comment_save";
else if (table.equals("lost_page")) commentTable = "comment_lost";
 
application.setAttribute("articleNo", no); 				// upComment로 넘길 값
application.setAttribute("tableName", commentTable);	// upComment로 넘길 값


ResultSet rs = DBC.LoadArticle(no, table);
rs.next();
String imgPath =rs.getString(2);  
int b = imgPath.indexOf("imgContainer");
String realPath = null;
if (b != -1) realPath = imgPath.substring(b).replace("\\", "/");
else realPath = "C:/Users/user/e.png";
%>
<!-- 이 위로는 볼 필요 없고 -->

<!DOCTYPE html>
<html>
<head>
<style>
hr{border:3px solid #decc90;}
div{border:none;}
.dropbtn {
         margin-left:5px;
margin-top:6.5px;
    color: white;
background-color:#343a40;
    font-size: 17px;
    border: none;
}
.dropdown {
    position: relative;
    display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
    display: none;
    position: absolute;
    min-width: 160px;
    background-color:white;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color:#decc90;}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {display: block;}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {background-color: #decc90;}

th{background-color:#decc90;}
p{margin-left:100px;}
</style>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous" />
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../../../favicon.ico">

<title>FINDNEWHOME-유기견 등록& 찾기</title>

<!-- Bootstrap core CSS -->
<link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="carousel.css" rel="stylesheet" />
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	  <header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="index.jsp">FINDNEWHOME</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
          
            <li class="nav-item">
              <a class="nav-link disabled" href="index.jsp">HOME</a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link disabled" href="location.jsp">LOCATION</a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link disabled" href="registration.jsp">REGISTRATION</a>
            </li>
            
 <div class="dropdown">
  <li class="dropbtn">BOARD</>
  <div class="dropdown-content">
    <a href="saveBoard.jsp?pageNum=1">보호 게시판</a>
    <a href="lostBoard.jsp?pageNum=1">찾는 게시판</a>
</div>
</div>

              <li class="nav-item">
              <% if ( session.getAttribute("loginId") == null ) { %>
                  <a class="nav-link disabled" href="login.html" style="background-color: #decc90; margin-left: 500px; width: 100px; border: none; border-radius: 10px; text-align: center; color: white;">Log In</a>
                  <% }
              else {%>
              <a class="nav-link disabled" href="logout.jsp" style="background-color: #decc90; margin-left: 500px; width: 100px; border: none; border-radius: 10px; text-align: center; color: white;">Log Out</a>
              <% } %>
            </li>
            
            </ul>
        </div>
      </nav>
    </header>
<section>

<%-- 게시물 제목 박스 --%>
<div align="left" style="margin-top:100px; border:none;">
&nbsp&nbsp&nbsp<h2 style="margin-left:250px;"><%= rs.getString(1) %></h2>  
<p style="margin-left:850px;">게시날짜&nbsp :&nbsp <%= rs.getString(4) %></p>
</div>
 <hr style="width:70%; border:3px solid #decc90;align:center;"/>
 

<%-- 게시물 본문 ( 첨부이미지 + 본문 내용 ) 박스 --%>
<div style="margin-left:250px;">
<img src="<%= realPath %>" height="400px" style="align:center;">
     <%--본문 --%>
<BR><br><Br>
<%= rs.getString(3) %>
<BR>
</div>

<BR>
<HR style="width:900px;">
<BR>
<div style="margin-left:250px;">댓글</div>
<br>
<%-- 댓글 출력 박스 --%>
<div align="center">
<table>

<%
rs = DBC.LoadComment(no, commentTable);
while (rs.next()) {
	%><tr>
	<th style=" width:100px;height:35px; border:none; "> 작성자</th>
	<th style="width:400px; background-color: #f4e8c2;border:none;"> 내용</th>
	<th style="width:100px; border:none;"> 작성 날짜</th></tr>
	<tr>
	<td style="width:100px;height:30px; border:none;"><%=rs.getString(1)%></td>
	<td style="width:400px; border:none;"><%=rs.getString(2)%></td>
	<td style="width:100px; border:none;"><%=rs.getString(3)%></td>
	</tr>
<%
}
%>
</table>
<br><br>
</div>


<%-- 댓글 입력 박스 --%>
<div align="center">

<form action="upComment.jsp" method="post">
<input type="text" name=comment style="width:400px;" placeholder="댓글을 입력해주세요">
<input type="submit" value="등록" style="width:100px; height:30px;margin-left:30px;border-radius:25px; background-color:#decc90;">
</form>

</div>

</section>
<br><br><br>
</body>
</html>

