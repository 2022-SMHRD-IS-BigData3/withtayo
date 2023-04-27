<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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

        #reserve_serction {
            margin: 10px;
            background-color: rgb(255, 241, 241);
            width: auto;
            margin-bottom: 5px;
            border: solid 2px gray;
        }

        p {
            margin: 4px;
        }

        #rs1,
        #rs2 {
            margin: 10px;
        }

        #rs2 {
            height: 240px;
        }

        #btnTbl {
            margin-left: 10px;
            margin-top: 0px;
            margin-bottom: 5px;
            margin-right: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;

        }


        .check-title {
            margin-left: 5px;
        }

        hr {
            margin-top: 3px;
            margin-bottom: 0px;
            margin-left: 10px;
            margin-right: 10px;
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
        <div class="section big" id="reserve_serction">
            <!-- 중앙 컨텐츠 -->
            <div id="rs1">
                <p style="font-weight: bold;"> 예약 페이지</p>
                <div class=check-title style="font-size: 12px;"">
                    <table>
                        <tr>
                            <th style=" font-weight: bold;">예약 정보</th>
                    </tr>
                    <tr>
                        <td style="font-size: 12px;">노선번호: <span style="font-weight: bold;">${bookedInfo.routeno}</span></td>
                    </tr>
                    <tr>
                        <td style="font-size: 12px;">예약자 ID : ${bookedInfo.p_id}</td>
                    </tr>
               <!--      <tr>
                        <td style="font-size: 12px;">버스기사 ID : ㅎㅇㅇ</td>
                    </tr>  -->
                    <tr>
                        <td style="font-size: 12px;">예약시간 : <fmt:formatDate value="${bookedInfo.booktime}" pattern="yyyy년MM월dd일hh시mm분"/></td>
                    </tr>
                    </table>
                </div>
            </div>
            <hr>
            <div id="rs2">
                <div style="font-size: 14px; padding: 10px; border-radius: 5px; ">
                    <table>
                        <tr>
                            <th></th>
                            <td></td>
                        </tr>
                        <tr>
                            <td> <i class="material-icons"
                                    style="color: rgb(255, 150, 80); margin-right: 15px;">&#xe530;</i></td>
                            <th style="font-size: 15px;">출발</th>
                        </tr>
                        <tr>
                            <td></td>
                            <td>${bookedInfo.dprtname} <span>정류장</span></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>주소 보류</td>
                        </tr>
                    </table>
                    <i class="material-icons"
                        style="margin-left: 120px; margin-top: 15px; margin-bottom: 10px;">&#xe313;</i>
                    <table>
                        <tr>
                            <td><i class="material-icons"
                                    style="color: rgb(255, 150, 80); margin-right: 15px;">&#xe3a0;</i></td>
                            <th style="font-size: 15px;">도착</th>
                        </tr>
                        <tr>
                            <td></td>
                            <td>${bookedInfo.arrvname} <span>정류장</span></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>주소 보류</td>
                        </tr>
                    </table>
                </div>


            </div>
            <hr style="padding-bottom: 10px;">
            <div>
                <div>
                    <div id="btnTbl">
                                <button type="button" class="btn btn-secondary" id="button"
                                    style="background-color: rgb(192, 190, 190); border: 0;">취 소</button>
                                <button class="btn btn-warning" id="bookingBtn" style="color: white;background-color: rgb(231, 177, 10);">예 약</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="jumbotron jumbotron-fluid">
            <div class="row" style="background-color: gray;">
                <div class="a" style="font-family: gg;">광고 혹은 이용설명</div>
            </div>
        </div>
    </div>
    <script>
    	// 넘겨받은 예약정보(프리뷰) 객체
    	let iAmBabo = null;
    	// 해당 노선이 거치는 모든 정류장
    	let allNodes = null;
    	// 승차할 정류장의 정류장 DB상 순번 (방향 판단용)
    	let dprtNodeOrder = 0;
    	// 해당 노선이 거치는 모든 정류장 개수
    	let numOfAllNodes = 0;
    	// 출발지 정류장의 방향
    	let dprtNodeDirection = "";
    	// 운행중인 해당 노선의 모든 버스 (Prolly redundant)
		let allBuses = null;
    	// 양 방향 버스 분리
    	let ascBuses = [];
    	let descBuses = [];
    	// 예약 신호 보낼 타겟 버스
    	let targetBus = null;
    	
    	
    	$(document).ready(function () {
    		
    		// 예약 버튼 클릭시
        	$('#bookingBtn').on('click', function () {
 				console.log("1st procedure : Get session attribute 'bookedInfo'");
        		// 세션 속성 bookedInfo (예약 프리뷰 정보) 가져오기
 				$.ajax({
        			url : 'GetSessionAttrib',
        			success : function(resp001){
        				console.log("1st procedure complete.");
        				iAmBabo = resp001;
        			},
        			error : function(error){
        				console.log("1st procedure has encountered an error: "+error);
        			}
        		// 출발 정류장의 db상 순서, 해당 노선이 거치는 정류장 개수 (방향 판단용)
        		}).then(function(toBeDumped){
        			console.log("2nd procedure : Retrieve nodeord property of the node. And Get the number of nodes to use in operations.");
        			$.ajax({
        				url : 'https://apis.data.go.kr/1613000/BusRouteInfoInqireService/getRouteAcctoThrghSttnList?serviceKey=38f8K%2FBb5kAAAS2jyZzjrfRmzjxFBS5HL6L256P5vOJ0ESqz2F7hUMTo%2FuzPe%2F7cBNR%2BzspWLdUHQxd6SbsXcg%3D%3D&pageNo=1&numOfRows=300&_type=json&cityCode=24&routeId='+iAmBabo.routeid,
        				success : function(resp002){
        		//			console.log(resp002);
        					allNodes = resp002;
        					allNodes.response.body.items.item.forEach(function(elem){
        						if(elem.nodeid == iAmBabo.dprtnode){
        							dprtNodeOrder = elem.nodeord;
        							// use try catch to break from the loop / PRIORITY : LOW
        						}
        					});
        					console.log("Departure node number of order: "+dprtNodeOrder);
        					// 출발지 정류장의 순서number로 방향 조회 *모든 정류장이 2개씩 있다는 가정하에 짠 코드임 ^^ 순환선에는 다르게 써야할수도있다
        					numOfAllNodes = allNodes.response.body.items.item.length;
        					if(numOfAllNodes/2 < dprtNodeOrder){
        						dprtNodeDirection = "Ascending";
        					}else{
        						dprtNodeDirection = "Descending";
        					}
        					console.log("Departure node direction: " + dprtNodeDirection);
        				},
        				error : function(error){
        					console.log(error);
        				}
        			});
        		// 현재 운행중인 해당 노선의 버스들 모두 조회, 어떤 버스 호출할지 선택
        		}).then(function(humptyDumpty){
        			console.log("3rd procedure : Get all the bus of said route that are running.")
        			$.ajax({
        				url : 'https://apis.data.go.kr/1613000/BusLcInfoInqireService/getRouteAcctoBusLcList?serviceKey=38f8K%2FBb5kAAAS2jyZzjrfRmzjxFBS5HL6L256P5vOJ0ESqz2F7hUMTo%2FuzPe%2F7cBNR%2BzspWLdUHQxd6SbsXcg%3D%3D&pageNo=1&numOfRows=50&_type=json&cityCode=24&routeId='+iAmBabo.routeid,
        				success : function(resp003){
        					console.log("Retrieved all the buses on the road.");
        					allBuses = resp003.response.body.items.item;
        					let distArr = []; // 거리 비교용
        					// 먼저 버스들 방향별로 추려내기
        					allBuses.forEach(function(elem){
        						if(numOfAllNodes/2 < elem.nodeord){
        							ascBuses.push(elem);
        						}else{
        							descBuses.push(elem);
        						}
        						distArr.push(Math.abs(elem.nodeord-dprtNodeOrder));
        					});
        					// 출발지 정류장과 맞는 방향 버스들중에서 비교
        					if(dprtNodeDirection === "Ascending"){
        						ascBuses.forEach(function(elem){
        							distArr.push(Math.abs(elem.nodeord-dprtNodeOrder));
        						});
        					}else{
        						descBuses.forEach(function(elem){
        							distArr.push(Math.abs(elem.nodeord-dprtNodeOrder));
        						});
        					}
        					
        					// 최소값의 인덱스 구함 그럴거임 ㄴㄻㄴㅇㄻㄴㅇㄻㄴㅇㄹ
        					let targetIdx = distArr.indexOf(Math.min(...distArr));
        					// 대망으 그놈 ㅇㅎㅇㅎㅇㅎㄹㅇㅇㅎ
        					targetBus = allBuses[targetIdx];
        					console.log("Target Bus Found!!!!" + targetBus.vehicleno);
        				},
        				error : function(error){
        					console.log(error);
        				}
        			});
        		// 차량번호와 예약정보 서블렛으로 전송 -> 데이터 패키징 -> 디비 입력 -> 대기화면으로 리디렉트
        		}).then(function(dumpThisMF){
        			console.log("4th procedure : send the vehicleno and booking info to a servlet for packaging and get redirected to the waiting area.");
        			$.ajax({
        				url : 'Book', // book'em! f'ing book'em! asdkadlfjgnaldkjfg
        				success : function(resp004){
        					console.log("All packed up and ready to redirect.");
        					
        				},
        				error : function(error){
        					console.log("NOOOOOOOOOOO f"+error);
        				}
        			});
        		});
        		//!!!!########!!!!!!!!!!!!!!!!!!! catch 써야댐!!!!!!!!!!!!!!!!##########!!!!!!!!!!!
        		//	window.location.href = '대기화면.html';
 					window.location.href = 'http://localhost:8081/test/matching.jsp';
            });
        	
    		
        });
    	
    	
    </script>
</body>

</html>