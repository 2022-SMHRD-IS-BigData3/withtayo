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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
    </style>
</head>


<body>
    <form action="succedmatching.jsp">
        <div class="container">
            <div class="navbar">
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
                    <p id="waittext1" style="font-family: gg;"><strong>서버와 통신 중</strong></p>
                    <p id="waittext2" style="font-family: gg;">잠시만 기다려주세요.</p>
                    <img src="IMG/대기노란점.gif" id="waiticon">
                </div>



            </div>
            <div class="endbar">
                <div class="row">
                    <div class="a">
                        <img alt="" id="image111" style="width: 100%; height: 100%; border: solid 1px black;">
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
<!-- 예약 성공시 예약 성공 페이지로 넘어갈 스크립트 -->
<script>
	//받아온 예약정보
	let bookMatch = null;
	// 운행정보
	let targetShift = null;
	
	let thisBooking = null;

	$(document).ready(function(){
		
	
	// 승객 대기화면 기능
		setInterval(function(){
    		
			// 타겟 차량 정보 Fetch
    		targetShift = "${bookedInfo.b_id}";
			console.log(targetShift);
    		// 다시 예약정보 조회 (accepted);
    		if(targetShift != null){
    			
    			// 내 예약정보에 타겟 차량 업데이트
				$.ajax({
	    				url : 'UpdateMyBooking',
	    				data : {b_id : targetShift}
				
	    		// 내 예약정보가 승낙되었는지 조회
	    		}).then(function(resp001){
		    		thisBooking = resp001;
		    		
		    		if(thisBooking.rejected){
		    			$.ajax({
		    				url : 'RejectTerminal',
		    				data : {blog_id : thisBooking.blog_id},
		    				success : function(rejectResp){
		    					console.log(rejectResp);
		    					window.location.replace("testSearch.jsp");
		    				},
		    				error : function(xhr, status, error){
		    					console.log(error);
		    				}
		    				
		    			});
	    				
	    			}else if(thisBooking.accepted){
	    				window.location.replace("match.jsp");
	    			}else{
	    				console.log("놀고이써")
	    			}
	    		
	    		}).catch(function(error){
    				console.log(error);
    			});
    		}else{
    			console.log("페이지 로딩이 안된듯?")
    		}
				//예약정보
				
			//	  console.log(${bookedInfo});
			//	  bookedMatch = ${bookedInfo}
			//	  console.log(bookedMatch.accepted);
				// 넘어온 예약정보 출력
				// 기사 버스번호와 승객이 예약한 버스번호 조건문
				
			//	if(bookMatch.accepted == true){
			//		console.log('들어옴');
					// 승낙 == accepted == 1
					//BookedMatch.accepted=true;
			//		alert("예약에 성공했습니다!");
					//window.location.href ='match.jsp';
			//	}else {
			//		console.log("대기중");
					// 대기 == accepted == null
			//	}
	    	
	    },4000);
		
	/*
		setInterval(function(){
			$.ajax({
				url : 'GetMyBooking',
				success : function(resp002){
					console.log(resp002);
					//예약정보
				//	  console.log(${bookedInfo});
				//	  bookedMatch = ${bookedInfo}
				//	  console.log(bookedMatch.accepted);
					// 넘어온 예약정보 출력
					// 기사 버스번호와 승객이 예약한 버스번호 조건문
					
				//	if(bookMatch.accepted == true){
				//		console.log('들어옴');
						// 승낙 == accepted == 1
						//BookedMatch.accepted=true;
				//		alert("예약에 성공했습니다!");
						//window.location.href ='match.jsp';
				//	}else {
				//		console.log("대기중");
						// 대기 == accepted == null
				//	}
				
					
				},
				error: function(xhr, status, error){
					console.log(error);
					console.log('잘들어갔다가 왜나감?');
				}
			});
		},6000);
		
	*/
	});

    var imageIndex = 0;

    var images1 = ["IMG/광고1.png", "IMG/광고2.png", "IMG/광고3.png", "IMG/광고4.png"];
    var intervalTime = 5000; // 3초마다 이미지 변경

    function changeImage() {
        // 이미지 인덱스 계산
        imageIndex = (imageIndex + 1) % images1.length;

        // 다음 이미지 표시
        var imgElement = document.getElementById("image111");
        imgElement.src = images1[imageIndex];
    }

    // 초기 이미지 표시
    var imgElement = document.getElementById("image111");
    imgElement.src = images1[0];

    // 일정 시간마다 이미지 변경
    setInterval(changeImage, intervalTime);

</script>


</html>