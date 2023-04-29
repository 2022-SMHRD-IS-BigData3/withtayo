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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
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
            width: 96.5%;
            padding-left: 12px;
        }

        .a {
            padding: 0px;
            height: 1.5cm;
            text-align: center;
        }

        .sign-out-container-body {
            display: flex;
            align-items: center;
        }

        .navbar-toggler {
            width: 70px;
        }

        .busDriverModal {
            display: flex;
            text-align: center;
        }

        .modal-footer {
            display: flex;
            justify-content: space-between;
            padding: 0px;
        }

        .modal-body {
            font-size: 30pt;
        }

        .btn-lg {
            padding-left: 32px;
            padding-right: 32px;
            font-weight: bold;
            font-size: 28px;
            color: rgb(101, 100, 100);
        }

        .busDriverModal .modal-dialog {
            position: fixed;
            top: -3%;
            left: 30%;
            transform: translate(-50%, -50%);
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

            <div class="greenbox">
                <div class="coment">대 기</div>

                <!-- 모달 시작 -->
                <div class="busDriverModal">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                        <span>모달 버튼</span>
                    </button>
                    <div class="modal fade" id="myModal">
                        <div class="modal-dialog modal-sm modal-dialog-centered">
                            <div class="modal-content">
                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h4 class="modal-title">New 예약 알림</span></h4>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    <div><strong> N 정거장 </strong></div><span style="font-size: 30px;">뒤 탑승 예약</span>
                                </div>
                                <!-- Modal footer -->
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-lg busDriverModal_cancel"
                                        data-dismiss="modal">거 부</button>
                                    <button type="button" class="btn btn-lg" data-dismiss="modal">승 낙</button>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- 모달 끝 -->

                </div>

            </div>

            <hr style="padding-bottom: 10px;">
            <div class="btnbb">
                <button style="font-size:20px" class="btnbus" disabled> <i class="material-icons"
                        style="font-size: 50px;">&#xe8d7;</i><br>하차 완료</button>
                <button style="font-size:20px" class="btnbus"> <i class="material-icons"
                        style="font-size: 50px;">&#xe61d;</i><br>고객 센터</button>
            </div>
        </div>
        <div class="endbar">
            <div class="row">
                <div class="a">
                    <img src="../스인개광고판.png" alt="" id="image"
                        style="width: 100%; height: 100%; border: solid 1px black;">
                </div>
            </div>
        </div>
    </div>


    <script>
    	// 세션의 운행정보
    	let currentShift = null;
    	
    	// 조회한 예약정보 prone to change
    	// 아길다
    	let bookedInfoQueryResult = null;
    	
    	// 화면 표시 판단용 대기 상태 번호 : 0-승객도 없고 예약도 없음(대기), 1-승객은 있고 예약은 없음, 2-예약있음 
    	// 사용 임시 보류
    	let bookStat = 0;
    	
    	// 현재 탑승자
    	let currPsg = null;
    	
    	// 예약자 리스트
    	let bookingList = [];
    	
    	
    	
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
    			
    			// 인터벌 루프 시켜야됨!!!!###############################
    			setInterval(function(){
	    			$.ajax({
	    				url : 'GetPsg',
	    				// 임시데이터임 currentShift.b_id 로 바꿀것
	    				data : {b_id : currentShift.b_id},
	    				success : function(resp002){
	    					// 예약 조회 결과(리스트 아님 selectOne으로 하나씩 반복)
	    					bookedInfoQueryResult = resp002;
	    	//				console.log(bookedInfoQueryResult);
	    					// 1루프 (1조회)에 대해 비교하는거임 햇갈리지 말기!!!!!
	    					if(bookedInfoQueryResult != null){
	    						// 차에 승객이 있고 다른 예약이 조회된 경우
	    						if(currentShift.num_psg > 0){
	    							bookStat = 2;
	    							if(//판단: 예약자 리스트 2개 이상인지 체크)
	    						// 차에 승객이 없고 다른 예약이 조회된 경우 : 승낙시 예약자 리스트에 일단 담는다. 아직 전 예약자가 탑승 안했는데 또 예약 온 경우
	    						}else{
	    							bookStat = 2;
	    						}
	    					}else{
	    						// 차에 승객이 있고 다른 예약이 없는 경우
	    						if(currentShift.num_psg > 0){
	    							bookStat = 1;
	    						// 차에 승객이 없고 예약도 없는 경우
	    						}else{
		    						bookStat = 0;
	    						}
	    					}
	    				},
	    				error : function(xhr, status, error){
	    					console.log(error);
	    				}
	    			});
    			}, 6000);
    		}); // ajax-then scope CATCH NEEDED##############################
    		
    		// 버스 현 위치 갱신해서 카운타다운 계산과 동시에 자신 운행정보에 위치 저장
    		setInterval(function(){
    			// 노선 운행 조회 > 이 차량 GET > FETCH : nodeid, nodenm, nodeord 
    			$.ajax({
	    			url : 'https://apis.data.go.kr/1613000/BusLcInfoInqireService/getRouteAcctoBusLcList?serviceKey=38f8K%2FBb5kAAAS2jyZzjrfRmzjxFBS5HL6L256P5vOJ0ESqz2F7hUMTo%2FuzPe%2F7cBNR%2BzspWLdUHQxd6SbsXcg%3D%3D&pageNo=1&numOfRows=50&_type=json&cityCode=24&routeId='+currentShift.routeid,
	    			success : function(resp003){
	    				console.log("Fetching position data!");
	    				
	    			},
	    			error : function(xhr, status, error){
	    				console.log(error);
	    			}
    			}).then(function(dumpee){
    				// 
    				$.ajax({
    					url : '',
    					success : function(resp004){
    						
    					},
    					error : function(xhr, status, error){
    						console.log(error);
    					}
    				});
    				
    			});// CATCH NEEDED!########################################
    		}, 15000);
    		
    			
    	});// document ready scope
    </script>
</body>

</html>