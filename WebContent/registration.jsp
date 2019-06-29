<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
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

        #file{border:1px solid black;
         width:300px;}

         #in{
         margin-left:25px;}

         footer{ margin-top:20px;
         margin-bottom:20px;}
         
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
              <a class="nav-link disabled" href="registration.jsp" style="color:white;">REGISTRATION</a>
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
<br /><br /><br />

<section>
<br /><br />
        <form action="uploadToBoard.jsp" method="post" enctype="multipart/form-data" style="margin-left:150px; width: 817px; ">
            <h1>게시판</h1>
           <hr style="width: 105%; border:2px solid #decc90; margin-left:55px;"/>

        <fieldset style="width: 850px; margin-left:50px; border-radius:25px;" >

        <div id="in">
            <br /><h5> 원하시는 게시방식을 선택해주세요<br /></h5> >>&nbsp
        <input type="radio" name="radio" id="save" value="goSave"/> 유기견을 보호하고 있습니다 &nbsp  &nbsp
        <input type="radio" name="radio" id="lost" value="goLost" />강아지를 찾고 있어요
        <br /><hr  />
        
        제목 &nbsp <input type="text" name="title" style="width:380px;"  placeholder="발견날짜/지역/견종 순서로 입력해주세요"/><br /><hr />
        *사진첨부<div id="file"> 
        		<input type="file" name="uploadFile" accept="img/jpg,image./gif"  />
        		</div><hr />
            내용<br />

        <textarea name="content" cols="110" rows="10" placeholder="발견지역,시간,강아지의 특징들을 자세하게 입력해주세요"></textarea>
         <br />
         
            <div align="center"><br />
            <input type="submit" name="submit" value="등록" style="background-color: #decc90; border:none; border-radius:25px; width:90px;height:40px; font-size:15pt;" />
            &nbsp
            <input type="reset" name="reset" value="취소"  style="background-color: #decc90; border:none; border-radius:25px; width:90px;height:40px; font-size:15pt;"/>
            <br /><br />
            </div>
            
        </div>
</fieldset>
    </form>

</section>
     <br />
    <hr />
    <br />
    <footer align="center">
        @copyright 2018 java wp2
    </footer>
    <br />
</body>
</html>
