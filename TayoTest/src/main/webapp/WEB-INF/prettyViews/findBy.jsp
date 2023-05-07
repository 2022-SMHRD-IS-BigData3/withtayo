<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내정보 찾기</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <!-- FAVICON -->

    <style>
    	@font-face {
		    font-family: 'NanumSquareNeo-Variable';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2') format('woff2');
		    font-weight: normal;
		    font-style: normal;
		}
		
        .container {
            width: 9cm;
            height: 16cm;
            border: 1px solid black;
            padding: 0;
            display: flex;
            flex-direction: column;
        }

        .navbar {
            width: 100%;
            height: 1.8cm;
            background-color: rgb(255, 204, 0);
            padding: 0;
        }

        .section {
            height: 6cm;
            width: 100%;
        }

        body {
            margin: 0;
            padding: 0;
        }

        .jumbotron {
            background-color: gray;
            width: 100%;
            height: 1.5cm;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .big {
            height: 12.7cm;
        }

        .jumbotron>.container {
            max-width: unset;
        }
        /* ìí ì»¨íì¸  ìì */
        .contentbox {
            margin-top: 65px;
            margin-left: 11px;
            padding: 0px;
        }

        .input-phone {
            width: 50px;
        }

        .button {
            width: 200px;
            height: 50px;
            font-size: 15px;
            border-radius: 10px;
        }

        .button-ID {
            background-color: rgb(248, 247, 247);
            border: none;
            width: 155px;
            height: 50px;
        }
        
        
        .button-PW {
            background-color: (248, 247, 247);
            border: none;
            width: 155px;
            height: 50px;
        }
        .button-ID:hover {
            background-color: rgb(231, 177, 10);
        }
        
        .button-PW:hover {
            background-color: rgb(231, 177, 10);
        }

        b {
            font-size: 17px;
        }

        .name {
            margin-left: 30px;
            width: 248px;
        }
        
        .phone {
            margin-left: 30px;
            width: 250px;
            height: 300px;
            border-color: #808080;
            border-top: #808080;
            border-radius: 10px;
        }
        
        .find {
            border: none;
            background-color: rgb(231, 177, 10);
            width: 313px;
            height: 40px;
            margin-top: 60px;
            border-radius: 10px;
        }

        input {
            border-color: rgb(212, 211, 211)
        }



        /* ìí ì»¨íì¸  ë */
        /* Fontë¥¼ ì ì©í  í´ëì¤ë¥¼ ì§ì í©ëë¤. */
        .my-font {
            font-family: "gg";
        }


        #navbarNavAltMarkup {
            position: fixed;
            top: 70px;
            z-index: 999;
            width: 100%;
        }

        .show #navbarNavAltMarkup {
            display: block;
        }
        .offcanvas {
            max-width: 250px;
            max-height: 420px;
            position: absolute;
            left: 150px;
            background-color: #fff8f8;
        }
        .aaarr{
            font-size: 12px;
            padding: 4px;
        }
        .nav-link{
            font-size: 14px;
        }
        #offcanvas-header{
            padding: 12px;
        }
        #offcanvas-body{
            padding: 14px;
        }
        #gap{
        	height:50px;
        }
    </style>

</head>
<link rel="icon" type="image/png" href="./assets/favicon.png">
<body>
    <div class="container">
        <div class="navbar" style="font-family: NanumSquareNeo-Variable;">
            <nav class="navbar"> <!-- navbar ìì -->
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                        data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                        <span class="navbar-toggler-icon"></span> <!-- navbar í ê¸ ë²í¼ ìì´ì½ -->
                    </button>
                    <div class="col-9 d-flex  align-items-center" style="font-size:large">basic</div>
                    <div class="container offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar"
                        aria-labelledby="offcanvasNavbarLabel"> <!-- Offcanvas ìì -->
                        <div class="offcanvas-header" id="offcanvas-header">
                            <h5 class="offcanvas-title" id="offcanvasNavbarLabel">withTAYO</h5> <!-- Offcanvas í¤ë -->
                            <button type="button" class="btn-close" data-bs-dismiss="offcanvas"
                                aria-label="Close"></button>
                            <!-- Offcanvas ë«ê¸° ë²í¼ -->
                        </div>
                        <div class="offcanvas-body" id="offcanvas-body"> <!-- Offcanvas ë´ì© -->
                            <div class="navbar-nav">
                                <a class="nav-link active" href="#">공지 사항</a>
                                <a class="nav-link aaarr" href="javascript:void(0);">---ì ë§ë¤ê¸°</a>
                                <a class="nav-link active" href="#">길찾기</a>
                                <a class="nav-link active" href="Effing-match.quack">현재 예약 정보</a>
                                <a class="nav-link active" href="#">예약내역</a>
                                <a class="nav-link aaarr" href="javascript:void(0);">---ì ë§ë¤ê¸°</a>
                                <li class="nav-item dropdown">
                                <li><a class="nav-link active" href="#">개인정보 변경</a>
                                <a class="nav-link active" href="#">고객센터</a>
                                <a class="nav-link active" href="#"></a>
                                <a class="nav-link active" href="#">로그아웃</a>
                            </div>
                        </div>
                    </div> <!-- Offcanvas ë -->
                </div>
            </nav> <!-- navbar ë -->
        </div>
        <div class="section big">
            <!-- ì¤ì ì»¨íì¸  -->
            <!-- ìí ì»¨íì¸  ìì -->
              <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
    crossorigin="anonymous"></script>
<script>function newPage()  {
          window.location.href = 'Effing-findByPhone.quack';
        } </script> 
<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
-->
<c:if test="${empty yourId}">
<div class="contentbox">
        <div>

            <button class='button-ID'>아이디</button>
            <button class='button-PW' type='button' onclick='newPage()' value='비밀번호'>비밀번호</button>
<hr>
            <br><br><br>
  	<form action="FindIDByPhone.quack" method="post">
        <table>
        	<tr>
        		<td colspan="2" align="center"><b>아이디 찾기</b></td>
        	</tr>
        	<tr>
        		<td colspan="2" id="gap"></td>
        	</tr>
        	<tr>
        		<td><label for="phone" style="color: #808080; size: 14px;">휴대폰:</label></td>
        		<td><input type="text" name="phone" class="phone" placeholder="휴대폰번호를 입력" style="height: 30px;" ></td>
        	</tr>
        	<tr>
        		<td colspan="2"></td>
        	</tr>
        	<tr>
        		<td colspan="2"><button class="find" type="submit">찾기</button></td>
        	</tr>
        </table>
 	</form>
  <!--      <b>아이디 찾기</b>
        <br>
        
        <br><br>
        <label for="phone">휴대폰</label>
        <input type="text" name="phone" class="phone" placeholder="휴대폰번호를 입력" style="height: 30px;" >
        <br>
        <button class="find" type="submit">찾기</button>    -->
    
</div>
</div>
</c:if>
<c:if test="${!empty yourId}">
	<div class="contentbox2">
		<h3>당신의 아이디:</h3>
		<h2 id="yourId">${yourId.p_id}</h2>
		<button onclick="location.href='Effing-loggingMain.quack'" value="메인으로"></button>
	</div>
 </c:if>
            <!-- ìí ì»¨íì¸  ë -->
    </div>
    <div class="jumbotron jumbotron-fluid">
            <div class="row" style="background-color: gray;">
                <div class="a" style="font-family: NanumSquareNeo-Variable;">광고 혹은 이용설명</div>
            </div>
        </div>
    </div>
        
</body>

</html>