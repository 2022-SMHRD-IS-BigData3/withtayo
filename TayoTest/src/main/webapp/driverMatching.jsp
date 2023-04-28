<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

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

        /* Font를 적용할 클래스를 지정합니다. */
        .my-font {
            font-family: "gg";
        }

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

        .offcanvas {
            max-width: 250px;
            max-height: 450px;
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

        .greenbox {
            margin: 20px;
            border-radius: 30px;
            width: 300px;
            height: 300px;
            background-color: rgb(86, 222, 86);
            display: flex;
            justify-content: center;
            align-items: end;
        }

        .coment {
            font-size: 50px;
            font-weight: bold;
        }

        .btnbus {
            margin-left: 20px;
            margin-right: 20px;
            background-color: white;
            border: 0px;
        }
        .btnbb {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .endbar {
            position: inline-block;
            bottom: 0;
            width: 95.6%;
            padding-left: 15px;
        }

        .a {
            padding: 0px;
            height: 1.2cm;
            text-align: center;
        }
    </style>

</head>

<body>
    <div class="container">
        <div class="navbar" style="font-family: gg;">
            <nav class="navbar"> <!-- navbar 시작 -->
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                        data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                        <span class="navbar-toggler-icon"></span> <!-- navbar 토글 버튼 아이콘 -->
                    </button>
                    <div class="col-9 d-flex  align-items-center" style="font-size:large">basic</div>
                    <div class="container offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar"
                        aria-labelledby="offcanvasNavbarLabel"> <!-- Offcanvas 시작 -->
                        <div class="offcanvas-header" id="offcanvas-header">
                            <h5 class="offcanvas-title" id="offcanvasNavbarLabel">withTAYO</h5> <!-- Offcanvas 헤더 -->
                            <button type="button" class="btn-close" data-bs-dismiss="offcanvas"
                                aria-label="Close"></button>
                            <!-- Offcanvas 닫기 버튼 -->
                        </div>
                        <div class="offcanvas-body" id="offcanvas-body"> <!-- Offcanvas 내용 -->
                            <div class="navbar-nav">
                                <a class="nav-link active" href="#">공지 사항</a>
                                <hr>
                                <a class="nav-link active" href="../1차프로젝트/노선정보겅색.html">길찾기</a>
                                <a class="nav-link active" href="../1차프로젝트/예약확인.html">현재 예약 정보</a>
                                <a class="nav-link active" href="#">예약내역</a>
                                <hr>
                                <li class="nav-item dropdown">
                                <li><a class="nav-link active" href="#">개인정보 변경</a>
                                <a class="nav-link active" href="#">고객센터</a>
                                <a class="nav-link active" href="#"></a>
                                <a class="nav-link active" href="#">로그아웃</a>
                            </div>
                        </div>
                    </div> <!-- Offcanvas 끝 -->
                </div>
            </nav> <!-- navbar 끝 -->
        </div>
        <div class="section big">
            <!-- 중앙 컨텐츠 -->

            <div class="greenbox">
                <div class="coment">대 기</div>
            </div>
            <hr>
            <div class="btnbb">
                <button style="font-size:20px" class="btnbus"disabled> <i class="material-icons"
                        style="font-size: 50px;">&#xe8d7;</i><br>하차 완료</button>
                <button style="font-size:20px" class="btnbus"> <i class="material-icons"
                        style="font-size: 50px;">&#xe61d;</i><br>고객 센터</button>
            </div>
        </div>
        <div class="endbar">
            <div class="row" style="background-color: gray;">
                <div class="a" style="font-family: gg;">광고 혹은 이용설명</div>
            </div>
        </div>
    </div>
    
    <script>
    	// 세션의 운행정보
    	let currentShift = null;
    	
    	// 조회한 예약정보 prone to change
    	// 아길다
    	let bookedInfoQueryResult = null;
    	
    	
    	
    	$(document).ready(function(){
    		
    		// Ambient functions : 페이지 로딩 되자 마자 실행, 또는 반복 실행
    		// 기록 하려면 세션에서 운행 정보 가져와
    		console.log("1st procedure : Get session attribute");
    		$.ajax({
    			url : 'GetSessionForShift',
    			success : function(resp001){
    				// 운행정보 가져옴
    				currentShift = resp001;
    				console.log(currentShift);
    			},
    			error : function(xhr, status, error){
					console.log(error);    				
    			}
    		
    		// Pseudo-communication : 예약정보 조회 반복실행으로 통신 미믹
    		}).then(function(alwaysBeDumpin){
    			console.log("2nd procedure : Loop to retrieve booking info from database.");
    			$.ajax({
    				url : 'GetPsg',
    				// 임시데이터임 currentShift.b_id 로 바꿀것
    				data : {b_id : '광주77바2516'},
    				success : function(resp002){
    					// 예약 조회 결과(리스트 아님 selectOne으로 하나씩 반복)
    					bookedInfoQueryResult = resp002;
    					console.log(bookedInfoQueryResult);
    				},
    				error : function(xhr, status, error){
    					console.log(error);
    				}
    			});
    		}); // ajax-then scope
    		
    		// 버스 현 위치 갱신
    		setInterval(function(){
    			$.ajax({
	    			url : 'https://apis.data.go.kr/1613000/BusLcInfoInqireService/getRouteAcctoBusLcList?serviceKey=38f8K%2FBb5kAAAS2jyZzjrfRmzjxFBS5HL6L256P5vOJ0ESqz2F7hUMTo%2FuzPe%2F7cBNR%2BzspWLdUHQxd6SbsXcg%3D%3D&pageNo=1&numOfRows=50&_type=json&cityCode=24&routeId='+,
	    			success : function(resp003){
	    				console.log(resp003);
	    			},
	    			error : function(xhr, status, error){
	    				console.log(error);
	    			}
    			});
    		}, 15000);
    		
    			
    	});// document ready scope
    </script>
</body>

</html>