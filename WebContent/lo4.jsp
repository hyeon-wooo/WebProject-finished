<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>

    <title></title>
    <title></title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
      <link rel="stylesheet" href="location.css" type="text/css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>FINDNEWHOME-유기견 등록& 찾기</title>

    <!-- Bootstrap core CSS -->
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
        <style>

        li{list-style:none;}

        div{
        margin-left:0px;
        margin-right:60px;
        }
        section{
        float:left;
        margin-top:50px;
        margin-left:100px;
        }
        aside#left{
        float:left;
        margin-left:200px;
        width:200px;
        }
        #left ul{
        list-style:none;
        font-size:20px;
        width: 250px;
        margin-left: -40px;
        }
        #left ul li{
        background: #decc90 ;
        line-height:50px;

        }
        #left ul li a{
        color:black;
        text-decoration:none;
        display:block;
        }
        #left ul li a:visited{
        color:black;
        }

        #left ul li a:hover{
        color: #515778 ;}
        #left ul li a{
        color:black;
        text-decoration:none;
        display:block;
        }
        #left ul li a:visited{
        color:black;
        }

        #left ul li a:hover{
        color:#515778 ;}
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
    <h1 style="width: 223px">강원&충청지역</h1>
    <ul>

    <li><a href="lo2.jsp">서울</a></li>
    <li><a href="location.jsp">인천</a></li>
    <li><a href="lo3.jsp">경기</a></li>
    <li id="curPage"><a href="lo4.jsp">강원&경남</a></li>
    <li><a href="lo5.jsp">경북&경남</a></li>
    </ul>
    </aside>
    <section>
        <div>
            <ul>
                <li>
<h5><b>천안시유기동물보호소</b></h5>
충남 천안시 동남구 북면 상동1길 43

<div id="daumRoughmapContainer1541098614609" class="root_daum_roughmap root_daum_roughmap_landing"></div>
<script charset="UTF-8" class="daum_roughmap_loader_script" src="http://dmaps.daum.net/map_js_init/roughmapLoader.js"></script>
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1541098614609",
		"key" : "qotr",
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
 <h5><b>원주유기동물 보호관리센터</b></h5>
Tel.033-731-1119 <br />
강원 원주시 호저면 칠봉로 110-6

<div id="daumRoughmapContainer1541098878231" class="root_daum_roughmap root_daum_roughmap_landing"></div>
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1541098878231",
		"key" : "qots",
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
<h5><b>횡성군유기동물보호소</b></h5><br />
Tel.033-343-9119<br />
강원 횡성군 횡성읍 문정로19번길 26

<div id="daumRoughmapContainer1541099121631" class="root_daum_roughmap root_daum_roughmap_landing"></div>
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1541099121631",
		"key" : "qott",
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
