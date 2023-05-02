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
        #noShow{
        color:salmon;
        }
        .colorBox {
            margin: 20px;
            border-radius: 30px;
            width: 300px;
            height: 300px;
            background-color: rgb(236, 55, 55);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .drivercoment {
            font-size: 150px;
            font-weight: bold;
        }
    </style>

</head>

<body>
    <div class="container">
        <div class="navbar" >
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
                                <a class="nav-link active" href="driverMypage.jsp">개인정보 변경</a>
                                <a class="nav-link active" href="#">고객센터</a>
                                <a class="nav-link active" href="#"></a>
                                <hr>
                                <a class="nav-link active" href="/test/ShiftOff">운행종료</a>
                            </div>
                        </div>
                    </div> <!-- Offcanvas 끝 -->
                </div>
            </nav> <!-- navbar 끝 -->
        </div>
        <div class="section big">
            <!-- 중앙 컨텐츠 -->
                <!-- 모달 시작 -->
                <div class="busDriverModal">
             <!--      <button type="button" id="modActivation" class="btn btn-primary">
                        <span>모달 버튼</span>  테스트용 버튼  -->
                    </button>
                    <div class="modal fade" id="myModal" data-backdrop="static">
                        <div class="modal-dialog modal-sm modal-dialog-centered">
                            <div class="modal-content">
                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h4 class="modal-title">New 예약 알림</h4>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    <div><strong> <span id="#remainder"></span> 정거장 </strong></div><span style="font-size: 30px;">탑승 예약</span>
                                </div>
                                <!-- Modal footer -->
                                <div class="modal-footer">
                                    <button type="button" id="reject" class="btn btn-lg busDriverModal_cancel"
                                        data-dismiss="modal">거 부</button>
                                    <button type="button" class="btn btn-lg" id="accept" data-dismiss="modal">승 낙</button>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- 모달 끝 -->
			
            <div class="greenbox">
                <div class="coment">대 기</div>
            </div>
            <div class="colorBox">
                <div class="drivercoment">N</div>
            </div>
            

            </div>

            <div class="btnbb">
                <button style="font-size:20px" class="btnbus" disabled id="offTheBus"> <i class="material-icons"
                        style="font-size: 50px;">&#xe8d7;</i><br>하차 완료</button>
                <button style="font-size:20px" class="btnbus" disabled id="noShow"> <i class="material-icons"
                        style="font-size: 50px;">&#xe8fd;</i><br>승차 안함</button>
                <button style="font-size:20px" class="btnbus"> <i class="material-icons"
                        style="font-size: 50px;">&#xe61d;</i><br>고객 센터</button>
            </div>
        </div>
        <div class="endbar">
            <div class="row">
                <div class="a">
                    <img src="" alt="" id="image"
                        style="width: 100%; height: 100%; border: solid 1px black;">
                </div>
            </div>
        </div>
    </div>


    <script>
    // ****ALWAYS USE STRICT EQUALITY COMPARISON (===) FOR NULL AND UNDEFINED****
    $("#modActivation").on("click", function(){
    	console.log("clicked");
    	$("#myModal").modal("show");
    });
    
    	// 세션의 운행정보
    	let currentShift = null;
    	
    	// 조회한 예약정보 prone to change
    	// 아길다
    	let bookedInfoQueryResult = null;
    	
    	// 화면 표시 판단용 대기 상태 번호 : 0 - 조회 정지 / 1 - 조회 실행 
    	// on click 시 후처리
    	let bookStat = 1;
    	
    	// 노선이 거치는 모든 정류장
    	let allNodes = [];
    	
    	// 현재 탑승자 **REDUNDANT
    	let currPsg = null;
    	
    	// 예약자 리스트 : **********1번째는 승객으로 변함*********** (1명만 타거든)
    	let bookingList = [];
    	// 예약자 리스트에 대응하는 출발-도착 정류장 순서 어떤 인덱스의 예약자의 카운트다운을 보여줄건지
    	let bookedDprt = [];
    	let bookedArrv = []; // 세 배열은 항상 같이 다닐 것
    	
    	// 모달 인터벌 안에서 쓸거
    	let prevListLength = 0;
    	let modalClicked = false;
    	
    	// 승차 판단용
    	let gotOn = [];
    	
    	// 노쇼 버튼!!
    	let noShowClicked = false;
    	
    	// 알람 사운드
    	let alarmSound = new Audio('./bookingAlarm.wav');
    	
    	// #### 3-thread-system! i.e., fetch booking - prompt - node counter ####
    	$(document).ready(function(){
    		$(".colorBox").hide();
			/////////////////////SEPARATOR/////////////////////
    		// Ambient functions : 페이지 로딩 되자 마자 실행, 또는 반복 실행
    		// 기록 하려면 세션에서 운행 정보 가져와
    		console.log("1st procedure : Get session attribute");
  			// 운행정보 가져옴
    		$.ajax({
    			url : 'GetSessionForShift',
			// 노선이 가는 정류장들 조회 (예약자 순서 비교용)    		
    		}).then(function(resp001){
    			currentShift = resp001;
    			console.log("2nd procedure : Get nodeords of all the nodes that this bus swings by");
    			return $.ajax({
    				url : 'https://apis.data.go.kr/1613000/BusRouteInfoInqireService/getRouteAcctoThrghSttnList?serviceKey=38f8K%2FBb5kAAAS2jyZzjrfRmzjxFBS5HL6L256P5vOJ0ESqz2F7hUMTo%2FuzPe%2F7cBNR%2BzspWLdUHQxd6SbsXcg%3D%3D&pageNo=1&numOfRows=300&_type=json&cityCode=24&routeId='+currentShift.routeid,
    			});
    		// Pseudo-communication : 예약정보 조회 반복실행으로 통신 미믹
    		}).then(function(resp002){
    			allNodes = resp002.response.body.items.item;
    			console.log(allNodes);
    			console.log("3rd procedure : Loop to retrieve booking info from database.");
    			
    			// 예약 반복 조회용 method
    			function checkForBooking(){
    				if(bookingStat==1){
	    				console.log("Looping every 6 sec");
		    			$.ajax({
		    				url : 'GetPsg',
		    				data : {b_id : currentShift.b_id},
		    				success : function(resp003){
		    					// 예약 조회 결과(리스트 아님 selectOne으로 하나씩 반복)
		    					bookedInfoQueryResult = resp003; // 예약 대기상태
								
								// 조회 결과 있음
		    					if(bookedInfoQueryResult != null){
	
			    					// 일단 예약자 리스트와 순서리스트에 넣는다.
		    						bookingList.push(bookedInfoQueryResult);
		    						allNodes.forEach(function(elem){
		    							if(elem.nodeid == bookedInfoQueryResult.dprtnode){
			    							bookedDprt.push(elem.nodeord);
			    						}
			    						if(elem.nodeid == bookedInfoQueryResult.arrvnode){
			    							bookedArrv.push(elem.nodeord);
			    						}
		    						});
	    						
	    						// 조회결과 없음
		    					}else{
		    						console.log("No man to pick up!");
		    					}
		    				},
		    				error : function(xhr, status, error){
		    					console.log(error);
		    				}
		    			}); 
    				}
    			}
    			let bookingCheckInterval = setInterval(checkForBooking ,6000);
    			// STILL INSIDE THE AJAX!!!!!!!!!!!!!!!
    			// 모달 팝업용
    			setInterval(function(){
    				// 조회시 리스트 길이가 늘어나있으면
        			if(prevListLength < bookingList.length){
        				let theIterated = [];
        				let comparisonTarget = [];
        				// 겹치는 정류장 있는지 체크 (예약자 전체 - 방금 예약한사람)
        				for(let eff = 0 ; eff < bookingList.length-1 ; eff++){
        					theIterated = generateSeries(bookedDprt[eff], bookedArrv[eff]);
        					comparisonTarget = generateSeries(bookedDprt[bookedDprt.length-1], bookedArrv[bookedArrv.length-1]);
        				}
        				// 겹치면
        				if(overlapCheck(theIterated, comparisonTarget)){
        					// 자동 거부, 예약정보 삭제, 내역으로 이동, 순번 트리오에서 지우기
        					console.log("Automatically rejected due to the fact that the passengers have overlapping shits with other.");
        					$.ajax({
        						url : 'Reject',
        						contentType : 'application/json',
        						data : {theBooker : JSON.stringify(bookingList[bookingList.length-1])}
        					}).then(function(result){
        						bookingList.pop();
        						bookedDprt.pop();
        						bookedArrv.pop();
	        					prevListLength = bookingList.length; // !!!! this line has to be placed last inside of its scope !!!!
        					}).catch(function(error){
        						console.log(error);
        					});
        				// 안겹치면
        				}else{
        					// 승낙거부 클릭이 안됐으면 계속 띄우기
        					if(modalClicked){
  						  		bookingStat = 1;	    				
	    	    				prevListLength = bookingList.length;
    		    			}else{
    	    					// 위 인터벌 스킵하고 모달창을 띄워부랑꼐 으아아리마릐만으리믁함ㄱㅎ	
    	    					bookingStat = 0;
    	    					$("#remainder").text(bookingList[bookingList.length-1].nodenm);
    	    					$("#myModal").modal("show"); // prolly a bootstrap method that's so rogue
    	    					alarmSound.play();
    		    				console.log("**Waiting for the driver to click on any of the buttons.");
    		    			}
    		    		}
        			// 조회시 리스트 길이가 줄어있으면 (하차햇겟구나나아아아아아아아아아아아아아)
        			}else if(prevListLength > bookingList.length){
        				bookingStat = 1;
        				prevListLength = bookingList.length;
    				// 리스트 길이에 변화가 없으면 부릉부릉
        			}else{
        				bookingStat = 1;
        			}
        			
    			}, 2000);
    			
    		}).catch(function(error){
    			console.log("안되용! 이유:" + error);
    		}); // END OF A MAJOR SCOPE
    		
    		/////////////////////SEPARATOR/////////////////////
    		// 모달 내부 버튼 핸들 : 예약 리스트 마지막의 예약정보에 승낙 정보 업데이트
    		$("#accept").on("click", function(){
    			console.log("accepted");
    			$.ajax({
    				url : 'AcceptCheck',
    				contentType : 'application/json',
    				data : {bookInfo : JSON.stringify(bookingList[bookingList.length-1]), accepted:1},
    				success : function(modalResp){
    					console.log("Acceptance updated to the booking info.");
    				},
    				error : function(xhr, status, error){
    					console.log(error);
    				}
    			});
    			$("#myModal").modal("hide");
    			modalClicked = true;
  			});
    		$("#reject").on("click", function(){
    			console.log("rejected");
    			$.ajax({
    				url : 'Reject',
    				contentType : 'application/json',
    				data : {theBooker : JSON.stringify(bookingList[bookingList.length-1])},
    				success : function(modalResp){
    					console.log("Rejection updated to the booking info.");
    				},
    				error : function(xhr, status, error){
    					console.log(error);
    				}
    			});
    			$("#myModal").modal("hide");
    			bookingList.pop();
    			bookedDprt.pop();
    			bookedArrv.pop();
    			modalClicked = true;
    		});
    		
    		// 겹치는 정류장 체크용 method
    		function overlapCheck(list1, list2){
    			for(let i = 0 ; i < list1.length; i++){
    				for(let k = 0 ; k < list2.length; k++){
    					if(list1[i] === list2[k]){
    						return true;
    					}
    				}
    			}
    			return false;
    		}
    		
    		// 경유 정류장 번호 list 생성용 method
    		function generateSeries(start, end){
    			let resultArr = [];
    			for(let i = start ; i <= end ; i++ ){
    				resultArr.push(i);
    			}
    			return resultArr;
    		}
    		
			/////////////////////SEPARATOR/////////////////////
    		// 예약 취소 핸들링용 루프
    		setInterval(function(){
    			// 취소 컬럼 조회
    			if(bookingList.length != 0){
	    			$.ajax({
	    				url : 'CancelCheck',
	    				contentType : 'application/json',
	    				data : {subjects : JSON.stringify(bookingList)},
	    				success : function(theCancelers){ // the weaklings!!!!! going crazy ^ _ ^ 
							console.log(theCancelers.length + " passengers have canceled."); // NEED TO CHECK STRUCTURE OF THE JSON!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
							// filter out the list!! YOU are the weakest link!!!
							// 캔슬한사람 리스트ㅇ에서 필터링
							theCancelers.forEach(function(stuff){
								bookingList = bookingList.filter(elem => elem.blog_id != stuff.blog_id);
							});
	    				},
	    				error : function(xhr, status, error){
	    					console.log(error);
	    				}
	    			});
    			}
    		}, 3000);
			/////////////////////SEPARATOR/////////////////////
			// 승객 하차 버튼
			$("#offTheBus").on("click", function(){
				//순서리스트 트리오에서 shift, 예약정보에서 딜리트 후 예약 내역으로// 운행정보에서 승객수 처리 //
				let theBailer = bookingList.shift();
				bookedDprt.shift();
				bookedArrv.shift();
				console.log(theBailer.p_id + " has gotten off the bus! You kicked'm out, you monster.");
				$.ajax({
					url : 'DropOff',
					data : {ousted : theBailer.blog_id},
					success : function(kickResp){ // lmfao 
						console.log("You kicked them derriere!!! LOLOLOLOLOLOLOLOLOLOLOLOLOL");
						console.log("Result num : " + kickResp);
					},
					error : function(xhr, status, error){
						console.log(error);
					}
				});
				
			});
			
			// 노쇼 버튼 클릭 bookingList에서 제거, db 제거, 승객 warning
			$("#noShow").on("click", function(){
				console.log("No show hobo is a bad mojo! XDXDXDXDXDXD");
				$.ajax({
					url : 'NoShow',
					data : {targetBooking : bookingList[bookingList.length-1].blog_id, targetPsg : bookingList[bookingList.length-1].p_id},
					success : function(noShowHandleRes){
						console.log(noShowHandleRes); // result can be 0 1 2 . 2 means it was executed successfully.
					},
					error : function(xhr, status, error){
						console.log(error);
					}
				});
				noShowClicked = true;
			});
			
    		// TODO : // 고객센터 // 신고 //
			let thisBus = null;
    		/////////////////////SEPARATOR/////////////////////
    		// 버스 현 위치 갱신해서 카운타다운 계산과 동시에 자신 운행정보에 위치 저장
    		setInterval(function(){
    			// Procedure
    			console.log("Proc 1 - Fetch all the cars of the right routeid")
    			$.ajax({
	    			url : 'https://apis.data.go.kr/1613000/BusLcInfoInqireService/getRouteAcctoBusLcList?serviceKey=38f8K%2FBb5kAAAS2jyZzjrfRmzjxFBS5HL6L256P5vOJ0ESqz2F7hUMTo%2FuzPe%2F7cBNR%2BzspWLdUHQxd6SbsXcg%3D%3D&pageNo=1&numOfRows=50&_type=json&cityCode=24&routeId='+currentShift.routeid,
    			// 
    			}).then(function(resp003){
    				let allCars = [];
    				console.log("Proc 2 - Find this bus by tail number.");
    				allCars = resp003.response.body.items.item;
    				allCars.forEach(function(elem){
    					if(elem['vehicleno'] == currentShift.b_id){
    						console.log("Currently at" + elem['nodenm']);
    						// 이건 API에서 온 json임 POJO가 아님!!!!!
    						thisBus = elem;
    					}
    				});
    				return thisBus;
    			// 위치 업데이트 위해서 서블릿으로 전송 (승객이 조회하려면 필요)
    			}).then(function(resp004){
    				console.log("Proc 3 - Use the bus json to determine its location and insert into the shift table.");
    				return $.ajax({
    					url : 'BusLocation',
    					contentType : 'application/json',
    					data : {thisShift : JSON.stringify(currentShift), busCurrNodeId : thisBus.nodeid, busCurrNodeNm : thisBus.nodenm, busCurrNodeOrd : thisBus.nodeord},
    				});
    			
    			// 예약자 정류자 순번대로 도착정보 화면에 표시
    			}).then(function(resp005){
    				console.log("Proc 4 - Fetching the processed json with the location data.");
    				if(resp005 === 0 || resp005 === undefined || resp005 === null){
    					console.log("위치정보 없음 Have patience!");
    					///// 색깔 큰숫자: 초록--->중간:주황---> 작은숫자 : 빨강 통일
    					// **표시** : 대기화면
    					$(".greenbox").show();
    				}else{
    					$("#offTheBus").attr("disabled");
    					$("#noShow").attr("disabled");
    					// 예약자 리스트가 비어있으면 --->
    					if(bookingList.length <= 0){
    						// **표시** : 대기화면
							$(".greenbox").show();
    					// 예약자 리스트가 null이 아니면 --->
    					}else{
	    					// gotOn 필터 적용
							let filteredArr = bookedDprt.filter((_, indices) => !gotOn.includes(indices));
    						// dprt와 arrv 통틀어 가장 작은 숫자 : 가장 먼저 표시할 인덱스와 출발/도착지 판단
    						let dprtMin = Math.min(...bookedDprt);
    						let arrvMin = Math.min(...bookedArrv); 
    						let targetDprtIdx = bookedDprt.indexOf(dprtMin);
    						let targetArrvIdx = bookedArrv.indexOf(arrvMin);
								
    							// 출발이 더 작은수인 경우
								if(dprtMin < arrvMin){
			    					
									// 버스의 nodeord가 예약자의 bookedDprt 보다 작으면
			    					if(resp005.nodeord < dprtMin){
			    						// 아직 도착 안함
			    						// **표시** : 탑승까지 '예약자dprt - 버스' 남음 
			    						let remNodes = dprtMin-resp005.nodeord;
			    						if(remNodes>10){ // 카운트색상
				    						$(".colorBox").css("background-color", "green");
			    						}else if(remNodes>5){
			    							$(".colorBox").css("background-color", "orange");
			    						}else{
			    							$(".colorBox").css("background-color", "red");
			    						}
			    						$(".drivercoment").text("탑승까지<br>"+remNodes+"<br>정류장 남음");
			    						
			    					// 버스의 nodeord가 예약자의 bookedDprt와 크거나 같으면
			    					}else{
			    						// 버스 도착 및 탑승 > 해당 예약정보 gotOn list에 추가, 중복시 X
			    						// 수정 필요할듯 
			    						if(noShowClicked){
			    							$("#noShow").attr("disabled");
			    							noShowClicked = false;
			    						}else if(!noShowClicked && resp005.nodeord > dprtMin){
				    						if(!gotOn.includes(targetDprtIdx)){gotOn.push(targetDprtIdx);}
				    						$("#noShow").attr("disabled");
				    						noShowClicked = false;
			    						}
			    						// **표시** :  승객승차'0' 남음
				    					$(".colorBox").css("background-color", "green");
			    						$(".drivercoment").text("탑승 정류장<br>도착!");
			    					}
			    				
			    				// 도착인 경우
								}else if(arrvMin<dprtMin){
			    					
									// 버스의 nodeord가 예약자의 bookedArrv보다 작으면
			    					if(resp005.nodeord < arrvMin){
			    						// **표시** : 하차까지 '예약자arrv - 버스'남음
			    						let remNodes = dprtMin-resp005.nodeord;
			    						if(remNodes>10){ // 카운트색상
				    						$(".colorBox").css("background-color", "green");
			    						}else if(remNodes>5){
			    							$(".colorBox").css("background-color", "orange");
			    						}else{
			    							$(".colorBox").css("background-color", "red");
			    						}
			    						$(".drivercoment").text("하차까지<br>"+remNodes+"<br>정류장 남음");
									// 버스의 nodeord가 예약자의 bookedArrv보다 크거나 같으면
			    					}else{
			    						// 하차버튼 활성화, gotOn필터에서 해당 승객 제거
			    						$("#offTheBus").removeAttr("disabled");
			    						gotOn = gotOn.filter((elem) => elem !== targetArrvIdx);
			    						// **표시** : 0, 하차버튼 활성
			    						let remNodes = dprtMin-resp005.nodeord;
			    						
				    					$(".colorBox").css("background-color", "green");
			    						$(".drivercoment").text("하차 정류장<br>도착!");
			    					}
			    				
			    				// 출발지와 도착지에서 타고내리는경우
								}else{
			    					// 출발 승객 승차 : gotOn에 추가
									if(!gotOn.includes(targetDprtIdx)){gotOn.push(targetDprtIdx);}
			    					// 도착 승객 하차 : 하차 버튼 활성화, gotOn에서 제거
			    					$("#offTheBus").removeAttr("disabled");
									gotOn = gotOn.filter((elem) => elem !== targetArrvIdx);
								}
    					}
    				}
    			}).catch(function(error){
    				console.log(error);
    			});// END OF A MAJOR SCOPE
    		}, 9000);
			/////////////////////SEPARATOR/////////////////////	
			
    	});// DOCUMENT-READY SCOPE
    	
        // 하단 광고판 이미지 변경 코드
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

        // 광고판 이미지 변경 끝
    </script>
</body>

</html>