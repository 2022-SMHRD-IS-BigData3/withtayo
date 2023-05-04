<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>


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
            font-size: 14px;
            margin: 0;
            padding: 0;
            font-family: 'NanumSquareNeo-Variable', sans-serif;
        }

        @font-face {
            font-family: 'NanumSquareNeo-Variable';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }



        .big {
            height: 12.7cm;
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
            max-height: 330px;
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

        .collapsible {
            background-color: white;
            color: black;
            cursor: pointer;
            width: 80%;
            height: 40px;
            border: 0px;
            text-align: left;
            outline: none;
            font-size: 17px;
            display: flex;
            justify-content: center;
            margin-left: 35px;
            margin-top: 5px;
        }


        .content {
            padding: 0px;
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.2s ease-out;
            height: 500px;
            width: 80%;
            margin-left: 35px;

        }

        .collapsible:after {
            content: '\002B';
            color: rgb(13, 11, 11);
            font-weight: bold;
            float: right;
            margin-left: 5px;
        }

        .active:after {
            content: "\2212";
        }

        .reset {
            size: 20px;
            background-color: rgb(219, 219, 219);
            border-radius: 5px;
            border: none;
            align-items: center;
            width: 70px;
            height: 30px;
        }

        .reset:hover {
            background-color: rgb(155, 155, 155);
        }

        .enter {
            size: 20px;
            background-color: rgb(255, 223, 93);
            border-radius: 5px;
            border: none;
            width: 70px;
            height: 30px;
        }

        .enter:hover {
            background-color: rgb(228, 187, 22);
        }

        .edit {
            size: 10px;
            background-color: rgb(255, 223, 93);
            border-radius: 5px;
            border: none;
            font-size: 14px;
            width: 70px;
            height: 30px;
            margin-top: 10px;
            margin-left: 20px;
        }

        .edit:hover {
            background-color: rgb(228, 187, 22);
        }


        #menu1 {
            margin-top: 15px;
            width: 50px;
        }

        #menu2 {
            margin-top: 15px;
        }

        input {
            background-color: rgb(238, 235, 235);
        }

        i {
            margin-left: 5px;
            margin-top: 15px;
        }

        #select {
            margin-top: 15px;
            height: 30px;
        }

        form {
            height: 60px;
        }

        .pw {
            height: 160px;
        }

        .pw-1 {
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .center {
            height: 100px;
        }

        a {
            text-decoration: none;
        }

        .bye {
            height: 142px;
            margin-left: 15px;
            margin-top: 15px;
        }

        .reset-1 {
            size: 20px;
            background-color: rgb(219, 219, 219);
            border-radius: 5px;
            border: none;
            align-items: center;
            width: 70px;
            height: 30px;
            margin-top: 5px;
            margin-left: 3px;
        }

        .reset-1:hover {
            background-color: rgb(155, 155, 155);
        }

        .check {
            size: 20px;
            background-color: rgb(255, 223, 93);
            border-radius: 5px;
            border: none;
            align-items: center;
            width: 70px;
            height: 30px;
            margin-top: 5px;
            margin-left: 3px;
        }

        .check:hover {
            background-color: rgb(228, 187, 22);
        }

        .endbar {
            position: inline-block;
            bottom: 0;
            width: 96.5%;
            padding-left: 12px;
        }

        .a {
            padding: 0px;
            height: 1.5cm;
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

        /*뉴스 시작*/
        .News_area {
            margin-top: 5px;
            margin-left: 10px;
            margin-bottom: 5px;
            background-color: #f7f9fa;
            border: 1px solid #dae1e6;
            margin-right: 10px;
            color-scheme: light;
            font-size: 12px;
            color: #202020;
            padding: 1px 1px 1px 10px;
            border-radius: 6px;
        }

        .News_area,
        #news-header {
            display: inline;
        }

        .News {
            width: 100%;
        }

        .News_area {
            display: flex;
            /* 영역 가운데 정렬을 위해 flex를 사용 */
            align-items: center;
        }

        #news-header {
            margin-left: 10px;
            text-align: center;
            transition: all 0.5s ease-out;
        }

        #news-header:hover {
            cursor: pointer;
        }

        .pwgroup {
            display: flex;
            justify-content: space-between;
            margin-top: 10px;
        }

    </style>

</head>
<link rel="icon" type="image/png" href="./favicon.png">
<body>
    <div class="container">
        <div class="navbar" style="font-family: gg;">
            <nav class="navbar"> <!-- navbar 시작 -->
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                        data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                        <span class="navbar-toggler-icon"></span> <!-- navbar 토글 버튼 아이콘 -->
                    </button>
                    <div class="col-9 d-flex  align-items-center"
                        style="font-size:large; font-style: italic; font-weight: 900; font-size: 30px; color: whitesmoke; padding-left: 0px;">
                        <span style="margin-left: 15px; text-shadow: 5px 5px 10px rgba(0, 0, 0, 0.7); ">withTAYO</span>
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
                                <hr>
                                <a class="nav-link active" href="#">로그아웃</a>
                            </div>
                        </div>
                    </div> <!-- Offcanvas 끝 -->
                </div>
            </nav> <!-- navbar 끝 -->
        </div>
        <!-- 중앙 컨텐츠 -->
        <!-- 컨텐츠 시작 -->
        <!--승객  마이페이지 -->
        <div class="section big">
            <div class="News">
                <div class="News_area">
                    <span><strong> Event > </strong></span>
                    <div id="news-header"></div>
                </div>
            </div>
            <br>
            <button type="button" class="collapsible" onclick="collapse(this);">비밀번호 변경</button>
            <div class="content">
                <!-- 비밀번호 변경 내 내용 -->
                <form action="PsgChangePW" method="post" class="pw">
                	<c:if test="${empty request.invalidPw}">
                    <input type="text" name="p_pw" placeholder="기존 비밀번호" aria-label="기존 비밀번호"
                        aria-describedby="addon-wrapping" id="menu1"
                        style="width:300px; height:25px; font-size:15px; border:rgb(238, 235, 235) ">
                    </c:if>
                    <c:if test="${!empty request.invalidPw}">
                    	<input type="text" name="p_pw" placeholder="${request.invalidPw}" aria-label="기존 비밀번호"
                        aria-describedby="addon-wrapping" id="menu1"
                        style="width:300px; height:25px; font-size:15px; border:rgb(238, 235, 235) ">
                    </c:if>
	                    <input type="password" name="new_pw" placeholder="새로운 비밀번호" aria-label="변경 비밀번호"
	                        aria-describedby="addon-wrapping" id="menu2"
	                        style="width: 300px; height: 25px; font-size: 15px; border: rgb(238, 235, 235);">
                    <c:if test="${empty request.failedStat}">
	                    <input type="password" name="new_pw_confirm" placeholder="새로운 비밀번호 확인" aria-label="변경 비밀번호"
	                        aria-describedby="addon-wrapping" id="menu2"
	                        style="width: 300px; height: 25px; font-size: 15px; border: rgb(238, 235, 235);">
                    </c:if>
                    <c:if test="${!empty request.failedStat}">
	                    <input type="password" name="new_pw_confirm" placeholder="${request.failedStat}" aria-label="변경 비밀번호"
	                        aria-describedby="addon-wrapping" id="menu2"
	                        style="width: 300px; height: 25px; font-size: 15px; border: rgb(238, 235, 235);">
                    </c:if>
                    <div class="pwgroup">
                        <button type="reset" class="reset">초기화</button>
                        <button type="submit" class="enter">등록</button>
                    </div>
                </form>
            </div>
            <button type="button" class="collapsible" onclick="collapse(this);">휴대폰번호 변경</button>
            <div class="content">
                <!-- 휴대폰번호 변경 내 내용 -->
                <form action="Mypage_p_ph" method="post">
                    <input type="text" name="p_ph" placeholder="변경할 번호 입력" aria-label="숫자만 입력"
                        aria-describedby="addon-wrapping" id="menu1"
                        style="width:300px; height:25px; font-size:15px; border: rgb(183, 183, 183);">
                    <div style="display: flex; justify-content: right;">
                        <button type="submit" class="edit">수정</button>
                    </div>
                </form>
            </div>
            <button type="button" class="collapsible" onclick="collapse(this);">고객센터 연결</button>
            <div class="content">
                <div class="center">
                    <i class="fa-solid fa-headset" class="collapse" width="25" height="25px" alt="" title=""
                        class="img-small"></i>
                    <span>고객센터</span><a href="#">1644-5810</a>
                    <br>
                    <span>(상담시간 | 09:00 ~ 18:00)</span>
                    <i class="fa-solid fa-message-smile" class="collapse" width="40px" height="40px"
                        class="img-small"></i>
                    <br>
                    <span>카카오톡 채널 | </span><a href="#">with타요</a>
                </div>
            </div>

            <button type="button" class="collapsible" onclick="collapse(this);">회원탈퇴</button>
            <div class="content">
                <form action="Revoke" method="post">
                    <input type="password" name="p_pw" placeholder="'비밀번호'를 입력하세요" style="width:300px; height:25px; font-size:15px; border:rgb(238, 235, 235) "></input>
                    <div style="display: flex; justify-content: right;">
                        <button type="submit" class="edit">탈퇴</button>
                    </div>
                </form>
            </div>
        </div>


        <div class="content">
            <div class="bye">
                <form action="" method="post">
                    <br>
                    <div id='result'>
                </form>
            </div>
        </div>
    </div>
    <div class="endbar">
        <div class="row">
            <div class="a">
                <img alt="" id="image" style="width: 100%; height: 100%; border: solid 1px black;">
            </div>
        </div>
    </div>
    </div>
    </div>
    <script src="https://kit.fontawesome.com/17b6c660df.js" crossorigin="anonymous"></script>
    </div>
    <script type="text/javascript">


        function collapse(element) {
            var before = document.getElementsByClassName("active")[0]               // 기존에 활성화된 버튼
            if (before && document.getElementsByClassName("active")[0] != element) {  // 자신 이외에 이미 활성화된 버튼이 있으면
                before.nextElementSibling.style.maxHeight = null;   // 기존에 펼쳐진 내용 접고
                before.classList.remove("active");                  // 버튼 비활성화
            }
            element.classList.toggle("active");         // 활성화 여부 toggle

            var content = element.nextElementSibling;
            if (content.style.maxHeight != 0) {         // 버튼 다음 요소가 펼쳐져 있으면
                content.style.maxHeight = null;         // 접기
            } else {
                content.style.maxHeight = content.scrollHeight + "px";  // 접혀있는 경우 펼치기
            }
        }

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
        // 뉴스 시작
        // 뉴스 헤더를 갱신할 시간 간격 (5초)
        var intervalTime = 3000;

        // 뉴스 데이터 배열
        var newsData = [
            "0.0.1a 앱 업데이트 내역 - 04.25",
            "세계 펭귄의 날 - 04/25",
            "저상버스 의무화 본격 시행 - 03.19",
            "한솥은 돈치마요가 맛있단다"
        ];

        // 뉴스 헤더를 변경하는 함수
        function changeNewsHeader() {
            // 현재 뉴스 헤더 위치
            var currentNewsIndex = $("#news-header").data("current-news-index");

            // 다음 뉴스 인덱스 계산
            var nextNewsIndex = (currentNewsIndex + 1) % newsData.length;

            // 다음 뉴스 헤더 텍스트 설정
            $("#news-header").text(newsData[nextNewsIndex]);

            // 다음 뉴스 인덱스 데이터 속성으로 설정
            $("#news-header").data("current-news-index", nextNewsIndex);
        }

        // 일정 시간마다 뉴스 헤더 갱신
        $(document).ready(function () {
            // 초기 뉴스 인덱스 0으로 설정
            $("#news-header").data("current-news-index", 0);

            // 첫번째 뉴스 헤더 텍스트 설정
            $("#news-header").text(newsData[0]);

            // 일정 시간마다 뉴스 헤더 변경
            setInterval(changeNewsHeader, intervalTime);
        });
        const newsHeader = document.getElementById('news-header');

        newsHeader.addEventListener('click', function () {
            window.location.href = '대기화면.html';
        });
        // 뉴스 끝
        const lists = document.querySelectorAll(".lists");
        const srchBtn = document.getElementById("srchBtn");
        srchBtn.addEventListener("click", function () {
            lists.forEach(function (box) {
                box.style.display = "none";
            });
        });
    </script>


    </script>


</body>


</html>