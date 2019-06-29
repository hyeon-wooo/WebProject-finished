<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
    <link rel="stylesheet" href="location.css" type="text/css">
    <meta charset="utf-8">


    <title>FINDNEWHOME-유기견 등록& 찾기</title>

<style>
.dropbtn {
         margin-left:5px;
margin-top:6.5px;
    color: #676b68;
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
              <a class="nav-link disabled" href="location.jsp" style="color:white;">LOCATION</a>
            </li>
            <li class="nav-item">
              <a class="nav-link disabled" href="registration.jsp" >REGISTRATION</a>
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
<br /><br /><br /><br />
    <aside id="left">
    <h1 style="width: 223px">서울지역</h1>
    <ul>

    <li id="curPage"><a href="lo2.jsp">서울</a></li>
    <li><a href="location.jsp">인천</a></li>
    <li><a href="lo3.jsp">경기</a></li>
    <li><a href="lo4.jsp">강원&충청</a></li>
    <li><a href="lo5.jsp">경북&경남</a></li>
    </ul>
</aside>
    <section>
        <div>
            <ul>
                <li>
<h5><b>서울유기동물입양센터</b></h5>
서울 중랑구 용마산로139나길 83(신내동 273-20)

<div id="daumRoughmapContainer1541096795898" class="root_daum_roughmap root_daum_roughmap_landing"></div>

<script charset="UTF-8" class="daum_roughmap_loader_script" src="http://dmaps.daum.net/map_js_init/roughmapLoader.js"></script>

<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1541096795898",
		"key" : "qotm",
		"mapWidth" : "300",
		"mapHeight" : "150"
	}).render();
</script>
                </li>
            </ul>
        </div>
<div>
    <ul>
        <li>
            <h5><b>구호동물입양센터 퇴계로점</b></h5>
서울 중구 동호로 320(쌍림동 106-3)


<div id="daumRoughmapContainer1541097010585" class="root_daum_roughmap root_daum_roughmap_landing"></div>

<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1541097010585",
		"key" : "qotn",
		"mapWidth" : "300",
		"mapHeight" : "150"
	}).render();
</script>
        </li>
    </ul>
</div>
    </section>

</body>
</html>
