<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.ResultSet, WebProject.*, java.sql.*" %>

<jsp:useBean id="DBC" class="WebProject.UserBean" scope="page"> </jsp:useBean>
<% 
ResultSet rs = null;
DBC.DBconnect(); 
rs = DBC.LoadMain();

String imgPath = null;  
int b = 0;
String realPath = null;
%>

<!doctype html>
<html lang="en">
  <head>

    <meta charset="utf-8">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>


    <title>FINDNEWHOME-유기견 등록& 찾기</title>

    <!-- Bootstrap core CSS -->
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
      <style>
          h3{float:left;}
          #m{position:relative;
          right:-800px;
              top: -250px;
              height: 300px;
              width: 300px;
          }
          img.border-shadow{
    border:1px solid #cccccc;
    box-shadow: 0 6px 10px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    border-radius:10px;
}

 .dropbtn {
         margin-left:5px;
         margin-top:6.5px;
         color: #676b68;
         background-color:#343a40;
         font-size: 17px;
         border: none;
         }

.dropdown {
    position: relative;
    display: inline-block;
}


.dropdown-content {
    display: none;
    position: absolute;
    min-width: 160px;
    background-color:white;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}


.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color:#decc90;}


.dropdown:hover .dropdown-content {display: block;}


.dropdown:hover .dropbtn {background-color: #decc90;}

      </style>
  </head>
  <body>

      <header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="index.html">FINDNEWHOME</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item">
              <a class="nav-link disabled" href="index.jsp" style="color:white;">HOME</a>
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

    <main role="main">



        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="first-slide" src="back2.png" alt="First slide" width="1600" height="550">
            <div class="container">
              <div class="carousel-caption text-left">
                <h1>집을 잃은 강아지들의<br />새로운 보금자리를 찾아주세요</h1><br />
                <p> 빠르고 간편한 신고 한 번이면 충분합니다</p>

              </div>
            </div>
          </div>
            </div>
    </main>
      <br /><br /><br /><br />
    <div align="center" id="center">
        <h2>보호중인 동물들</h2>
        <p>최근 등록된 순서입니다</p>
    </div>
      <section>

          <div align="center">
          	  <% if (rs != null) { 
          	  		while (rs.next()) {
	          	  		imgPath =rs.getString(2);
	          	  		if ( imgPath.length() > 10 ) {
	          	  			b = imgPath.indexOf("imgContainer");
	          	  			realPath = imgPath.substring(b).replace("\\", "/");
	          	  		}
          	  		
          	  %>
	          	    
          	  		<table style="border:1px solid #cccccc; width:800px; box-shadow:2px 0px 1px solid #cccccc;">
          	  		<tr>
          	  		<td align="center"style="height:400px;"><a href="atticle.jsp?no=<%=rs.getInt(1)%>&boardType=save_page">
		          	    <img class="border-shadow" src="<%= realPath %>" height="300px" width="400px"></a></td>
		          	<td style="width:300px;height:400px;" align="top"><%= rs.getString(3) %></td>
          	  		</tr><br>
          	  		</table>
          	  <% }} %>
          	  
              
     </section>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../assets/js/vendor/popper.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.min.js"></script>
 <br />
    <hr />
    <br />
    <footer align="center">
        @copyright 2018 java wp2
    </footer>
    <br /> </body>

</html>
