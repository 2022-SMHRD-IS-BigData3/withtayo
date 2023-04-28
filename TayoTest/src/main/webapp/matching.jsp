<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <title>Document</title>
    <style>
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



        .big {
            height: 12.7cm;
        }



        /* Font를 적용할 클래스를 지정합니다. */
        /* * {
        font-family: "gg";
    } */
        @font-face {
            font-family: "gg";
            src: url("../빛고을광주_Medium.ttf");
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

        #waitsection {
            text-align: center;
            display: block;
            margin-top: 60px;
        }

        #waittext0 {
            font-size: 22px;
            font-weight: bold;
            font-style: italic;
            font-family: sans-serif;
            color: rgb(64, 64, 64);
            margin-bottom: 0px;
            margin-bottom: 15px;
        }

        #waittext1 {
            color: rgb(64, 64, 64);
            font-size: 18px;
            margin-top: 30px;
            margin-bottom: 10px;
        }

        #waittext2 {
            font-size: 16px;
            color: rgb(64, 64, 64);
            margin-top: 0px;
            margin-bottom: 0px;
        }

        #waitheart {
            width: 20px;
            margin-top: -3.6px;
            margin-left: -4px;
        }

        #waiticon {
            width: 75px;
            margin-top: 10px;
        }

        .offcanvas {
            max-width: 250px;
            max-height: 400px;
            position: absolute;
            left: 150px;
            background-color: #fff8f8;
        }

        .aaarr {
            font-size: 12px;
            padding: 4px;
        }

        .nav-link {
            font-size: 14px;
        }

        #offcanvas-header {
            padding: 12px;
        }

        #offcanvas-body {
            padding: 14px;
        }

        .endbar {
            position: inline-block;
            bottom: 0;
            width: 96.5%;
            padding-left: 12px;
        }

        .a {
            padding: 0px;
            height: 1.2cm;
            text-align: center;
        }

        .navbar-toggler {
            width: 70px;
        }

        .container-fluid {
            display: flex;
            text-align: center;
            width: 100%;
        }
    </style>
</head>


<body>
    <form action="succedmatching.jsp">
        <div class="container">
            <div class="navbar" style="font-family: gg;">
                <nav class="navbar">
                    <nav class="navbar"> <!-- navbar 시작 -->
                        <div class="container-fluid">
                            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                                data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                                <span class="navbar-toggler-icon"></span> <!-- navbar 토글 버튼 아이콘 -->
                            </button>
                            <div class="col-9 d-flex  align-items-center"
                                style="font-size:large; font-style: italic; font-weight: 900; font-size: 30px; color: whitesmoke;">
                                <span
                                    style="margin-left: 15px; text-shadow: 5px 5px 10px rgba(0, 0, 0, 0.7);">withTAYO</span>
                            </div>
                            <div class="container offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar"
                                aria-labelledby="offcanvasNavbarLabel"> <!-- Offcanvas 시작 -->
                                <div class="offcanvas-header" id="offcanvas-header">
                                    <h5 class="offcanvas-title" id="offcanvasNavbarLabel">withTAYO</h5>
                                    <!-- Offcanvas 헤더 -->
                                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas"
                                        aria-label="Close"></button>
                                    <!-- Offcanvas 닫기 버튼 -->
                                </div>
                                <div class="offcanvas-body" id="offcanvas-body"> <!-- Offcanvas 내용 -->
                                    <div class="navbar-nav" style="text-align: center;">
                                        <a class="nav-link active" href="#">공지 사항</a>
                                        <hr>
                                        <a class="nav-link active" href="../1차프로젝트/노선정보겅색.html">길찾기</a>
                                        <a class="nav-link active" href="../1차프로젝트/예약확인.html">예약 정보</a>
                                        <a class="nav-link active" href="#">개인정보 변경</a>
                                        <a class="nav-link active" href="#">고객센터</a>
                                        <a class="nav-link active" href="#"></a>
                                        <hr>
                                        <a class="nav-link active" href="#">로그아웃</a>
                                    </div>
                                </div>
                            </div> <!-- Offcanvas 끝 -->
                        </div>
                    </nav> <!-- navbar 끝 -->
            </div>
            <div class="section big">
                <!-- 중앙 컨텐츠 -->
                <div id="waitsection">
                    <p id="waittext0">우리 함께 타는 withTAYO</p>
                    <img src="IMG/대기이미지.jpg" width="280" height="150" id="waitimg">
                    <p id="waittext1" style="font-family: gg;">서버와 통신 중</p>
                    <p id="waittext2" style="font-family: gg;">잠시만 기다려주세요.</p>
                    <img src="IMG/대기노란점.gif" id="waiticon">
                </div>

                <!-- 예약성공 페이지 
            <div class="test1">
                <input type='button' onclick="hrefLink()">
            </div>
            -->

            </div>
            <div class="endbar">
                <div class="row">
                    <div class="a">
                        <img src="../스인개광고판.png" alt="" id="image"
                            style="width: 100%; height: 55px; border: solid 1px black;">
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
<!-- 예약 성공시 예약 성공 페이지로 넘어갈 스크립트 -->
<script>

    var imageIndex = 0;
    var images = ["IMG/광고1.png", "IMG/광고2.png", "IMG/광고3.png", "IMG/광고4.png"];
    var intervalTime = 5000; // 3초마다 이미지 변경

    function changeImage() {
        // 이미지 인덱스 계산
        imageIndex = (imageIndex + 1) % images.length;

        // 다음 이미지 표시
        var imgElement = document.getElementById("image");
        imgElement.src = images[imageIndex];
    }

    // 초기 이미지 표시
    var imgElement = document.getElementById("image");
    imgElement.src = images[0];

    // 일정 시간마다 이미지 변경
    setInterval(changeImage, intervalTime);

</script>


</html>