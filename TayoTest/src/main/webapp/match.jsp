<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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
        font-size: 14px;
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
            display: flex;
            /* 영역 가운데 정렬을 위해 flex를 사용 */
            align-items: center;
        }

        .alert-warning {
            margin: 10px;
            background-color: #fff185;
            border: 1px solid rgb(255, 207, 117);
        }

        .aniicon {
            width: 28px;
            margin-right: 10px;
        }

        .addfunction {
            margin: 10px;
            font-size: 16px;
            font-family: gg;
        }

        /*뉴스 시작*/

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

        /*뉴스 끝*/
    </style>

</head>

<body>
    <div class="container">
        <div class="navbar">
            <nav class="navbar"> <!-- navbar 시작 -->
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                        data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                        <span class="navbar-toggler-icon"></span> <!-- navbar 토글 버튼 아이콘 -->
                    </button>
                    <div class="col-9 d-flex  align-items-center"
                        style="font-size:large; font-style: italic; font-weight: 900; font-size: 30px; color: whitesmoke;">
                        <span style="margin-left: 15px; text-shadow: 5px 5px 10px rgba(0, 0, 0, 0.7);">withTAYO</span>
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
            <div class="News">
                <div class="News_area">
                    <span><strong> Event > </strong></span>
                    <div id="news-header"></div>
                </div>
            </div>
            <div class="alert alert-warning" style="text-align: center;">
                <strong> <span style="font-size: 18px;"> 예약 성공!</span> <br></strong> 약 5분후 도착 예정입니다.
            </div>

            <hr>

            <div class="list-group addfunction">
                <a href="#" class="list-group-item list-group-item-action"
                    style="background-color: rgb(220, 220, 220);">
                    <div><span><strong> 편의기능 </strong></span></div>
                </a>
                <a href="#" class="list-group-item list-group-item-action">
                    <div><img src="IMG/예약사항보기.gif" alt="" class="aniicon"><span> 예약 정보 확인</span></div>
                </a>

                <a href="#" class="list-group-item list-group-item-action">
                    <div><img src="IMG/즐겨찾기.gif" alt="" class="aniicon"><span> 즐겨찾기 등록</span></div>
                </a>
                <a href="#" class="list-group-item list-group-item-action">
                    <div><img src="IMG/고객센터.gif" alt="" class="aniicon"><span> 고객센터 연결</span></div>
                </a>
                <a href="#" id="" class="list-group-item list-group-item-action">
                    <div><img src="IMG/예약취소.gif" alt="" class="aniicon"><span> 예약취소</span></div>
                </a>
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
    <script>
    	let matchInfo = null;
    	
    	
    	
    	$(document).ready(function(){
    		//예약성공해서 하차를 하게 되면 예약정보 조회 후 정보가 없으면 길찾기 페이지로 이동
    		setInterval(function(){
    			
    			matchInfo = "${bookedInfo}";
    			console.log(matchInfo);
    			if(matchInfo==null){
    				window.location.replace('testSearch.jsp');
    			}else{
    				console.log('하차안했다 아직');
    			}
    			
    			
    			},4000);
    			
    			
    		});
    		
    		
    		
    	
    
    
    
    
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
</body>

</html>