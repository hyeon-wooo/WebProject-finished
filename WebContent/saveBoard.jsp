<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.ResultSet, WebProject.*"%>
	
<jsp:useBean id="DBC" class="WebProject.UserBean" scope="page"> </jsp:useBean>
<% DBC.DBconnect(); %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous" />

<link rel="stylesheet" href="location.css" type="text/css">

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

<style>
 table {
    width: 100%;
    border-top: 1px solid gray;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid gray;
    padding: 10px;
  }
  th {
    background-color:#decc90;
}
.dropbtn {
         margin-left:5px;
margin-top:6.5px;
    color: white;
background-color:#343a40;
    font-size: 17px;
    border: none;
}

/* The container <div> - needed to position the dropdown content */
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

.pagenumber:hover {color: mint;}
</style>



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
    
    
	  <h1 style="margin-top:100px; margin-left:200px; width:350px;">유기견을 <br>
            보호하고 있습니다</h1>
<hr>

    <section>
    <div style="margin-left:50px;">
	<table style="margin-left:150px; width:100%;">
	<thead>
	<tr>
	<th style="width:10px;"> no </th> <th style="width:300px;"> 제목 </th> <th> 게시자 </th> <th> 게시 일자 </th> <th> 조회수 </th>
	</tr>
	</thead>
	
	
	<% 
	ResultSet rs = null;
	double temp = (double)DBC.getCountRecords("save_page");
	int endPage = (int)Math.ceil( (temp / 10.0) );
	
	String strPage = request.getParameter("pageNum");
	
	if (strPage != null) {
		int curPage = Integer.parseInt(strPage);
		rs = DBC.getSelectRs("save_page", curPage);
		
		while (rs.next()) {
			int no = rs.getInt(1);
			String title = rs.getString(2);
			String name = rs.getString(3);
			String date = rs.getString(4);
			int hit = rs.getInt(5);
	
	
	%> 
			<tr>
			<td><%= no %></td>
			<td><a href="article.jsp?no=<%= no %>&boardType=save_page"><%= title %></a></td>
			<td><%= name %></td>
			<td><%= date %></td>
			<td><%= hit %></td>
			</tr>
	<%
		}
	}
	%>
	
	</table>

	</div>
	
	<div align="center">
	<% for (int i = 1; i<=endPage; i++) { %>
		<a class="pagenumber" style="color:black" href="saveBoard.jsp?pageNum=<%= i %>"><%= i %></a>
	<% } %>
	</div>
	</section>
</body>
</html>