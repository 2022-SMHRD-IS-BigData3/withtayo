<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>

<script
	src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<script type="text/JavaScript" src="./my-script.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
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


.big {
	height: 12.7cm;
}

/* 은혜 컨텐츠 시작 */
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

#form-inner-container {
	background-color: white;
	box-shadow: 0 0 20px gainsboro;
}

#sign-up-container, #sign-in-container {
	padding: 50px 20px;
	margin-left: 20px;
	width: 320px;
	display: inline-block;
}

#sign-out-container {
	padding: 50px 30px;
	margin-left: 20px;
	width: 320px;
	display: inline-block;
	text-align: center;
}

form input {
	display: block;
	margin-bottom: 5px;
	border: 1px solid #E5E9F5;
	background-color: #F6F7FA;
	padding: 10px;
	margin-top: 10px;
	border-radius: 10px;
	width: 240px;
}

#form-controls {
	margin-bottom: 20px;
}

h3 {
	color: red;
	font-size: 14px;
	font-weight: 500;
}

label {
	color: gray;
}

::placeholder {
	color: #C0C7DB;
	font-size: 14px;
	letter-spacing: 1.2px;
}

#form-controls button {
	border: none;
	font-size: 5px;
}

#form-controls button:hover {
	cursor: pointer;
}

.hide {
	display: none !important;
}

#animation-container {
	display: inline-block;
}

/* responsive display */
@media ( max-width :1438px) {
	lottie-player {
		width: 300px !important;
	}
}

@media ( max-width :1124px) {
	#animation-container {
		display: none;
	}
	#form-inner-container {
		display: flex;
		justify-content: center;
	}
}

@media ( max-width : 684px) {
	#form-controls {
		text-align: center;
		margin: 0;
		padding: 0;
	}
	button {
		width: 100%;
	}
	form input:not(:last-of-type) {
		width: 0%;
	}
	#toggleSignIn, #toggleSignUp {
		padding: 16px 75px;
		width: 5px;
		height: 5px;
	}
}

/* 취소 버튼 디자인*/
#button-r {
	background: rgb(192, 190, 190);
	color: #fff;
	border: none;
	border-radius: 3px;
	position: relative;
	width: 117px;
	height: 35px;
	font-size: 14px;
	margin-top: 20px;
	padding: 0 2em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
}

#button-r:hover {
	background: #fff;
	color: rgb(192, 190, 190);
}

#button-r:before, button:after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: rgb(192, 190, 190);
	transition: 400ms ease all;
}

#button-r:after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
	background-color: rgb(192, 190, 190);
}

#button-r:hover:before, button:hover:after {
	width: 100%;
	transition: 800ms ease all;
}

/* 로그인 버튼 디자인 */
#button-l {
	background: rgb(231, 177, 10);
	color: #fff;
	border: none;
	border-radius: 3px;
	position: relative;
	width: 117px;
	height: 35px;
	font-size: 14px;
	padding: 0 2em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
}

#button-l:hover {
	background: #fff;
	color: rgb(212, 165, 22);
}

#button-l:before, button:after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: rgb(231, 177, 10);
	transition: 400ms ease all;
}

#button-l:after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
}

#button-l:hover:before, button:hover:after {
	width: 100%;
	transition: 800ms ease all;
}

#button-rd {
	background: rgb(192, 190, 190);
	color: #fff;
	border: none;
	border-radius: 3px;
	position: relative;
	width: 117px;
	height: 35px;
	font-size: 14px;
	margin-top: 20px;
	padding: 0 2em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
	width: 90%;
}

#button-rd:hover {
	background: #fff;
	color: rgb(192, 190, 190);
}

#button-rd:before, button:after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: rgb(192, 190, 190);
	transition: 400ms ease all;
}

#button-rd:after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
	background-color: rgb(192, 190, 190);
}

#button-rd:hover:before, button:hover:after {
	width: 100%;
	transition: 800ms ease all;
}

/* 로그인 버튼 디자인 */
#button-ld {
	background: rgb(231, 177, 10);
	color: #fff;
	border: none;
	border-radius: 3px;
	position: relative;
	width: 117px;
	height: 35px;
	font-size: 14px;
	padding: 0 2em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
	width: 90%;
}

#button-ld:hover {
	background: #fff;
	color: rgb(212, 165, 22);
}

#button-ld:before, button:after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: rgb(231, 177, 10);
	transition: 400ms ease all;
}

#button-ld:after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
}

#button-ld:hover:before, button:hover:after {
	width: 100%;
	transition: 800ms ease all;
}

/* a태그 폰트 효과 */
.aTag {
	text-align: center;
	margin-top: 8px;
}

/* ul li 가로정렬 후 구분선 넣기 */
ul {
	margin-left: 27px;
}

li {
	list-style: none;
	float: left;
	margin-right: 33px;
}

li::after {
	content: "|";
	float: right;
	color: rgb(192, 190, 190);
	margin-right: -17px;
}

li:last-child::after {
	content: "";
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
	max-height: 250px;
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

.sign-out-container-body {
	display: flex;
	align-items: center;
}

.navbar-toggler {
	width: 70px;
}
/* 노선본호  - 차량번호 인풋이랑 버튼 숨길거*/
.ifTailNum{
	display: none;
}
.alwaysHide{
	display: none;
}
        .selectBox {
            position: relative;
            width: 150px;
            height: 35px;
            border-radius: 4px;
            border: 2px solid rgb(212, 165, 22);
        }

        .selectBox .select {
            width: inherit;
            height: inherit;
            background: transparent;
            border: 0 none;
            outline: 0 none;
            padding: 0 5px;
            position: relative;
            z-index: 3;
        }

        .selectBox .select option {
            background: rgb(248, 197, 44);
            color: #fff;
            padding: 1px 0;
            font-size: 16px;
        }
</style>
</head>

<body>
	<div class="container">
		<div class="navbar">
			<nav class="navbar">
				<nav class="navbar">
					<!-- navbar 시작 -->
					<div class="container-fluid">
						<button class="navbar-toggler" type="button"
							data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
							aria-controls="offcanvasNavbar">
							<span class="navbar-toggler-icon"></span>
							<!-- navbar 토글 버튼 아이콘 -->
						</button>
						<div class="col-9 d-flex  align-items-center"
							style="font-size: large; font-style: italic; font-weight: 900; font-size: 30px; color: whitesmoke;">
							<span
								style="margin-left: 15px; text-shadow: 5px 5px 10px rgba(0, 0, 0, 0.7);">withTAYO</span>
						</div>
						<div class="container offcanvas offcanvas-start" tabindex="-1"
							id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
							<!-- Offcanvas 시작 -->
							<div class="offcanvas-header" id="offcanvas-header">
								<h5 class="offcanvas-title" id="offcanvasNavbarLabel">withTAYO</h5>
								<!-- Offcanvas 헤더 -->
								<button type="button" class="btn-close"
									data-bs-dismiss="offcanvas" aria-label="Close"></button>
								<!-- Offcanvas 닫기 버튼 -->
							</div>
							<div class="offcanvas-body" id="offcanvas-body">
								<!-- Offcanvas 내용 -->
								<div class="navbar-nav" style="text-align: center;">
									<a class="nav-link active" href="#">공지 사항</a>
									<hr>
									<div>
										<span>로그인 이후 이용가능</span>
									</div>
									<hr>
								</div>
							</div>
						</div>
						<!-- Offcanvas 끝 -->
					</div>
				</nav>
				<!-- navbar 끝 -->
		</div>
		<div class="section big">
			<!-- 중앙 컨텐츠 -->


			<!-- 은혜 컨텐츠 시작 -->
			<c:if test="${empty driver}">
				<div id="psngrLogWrapper">
					<div id="form-inner-container">
						<!-- Sign up form -->
						<div id="sign-up-container"
							style="padding: 30px; margin-top: 70px;">
							<form action="Login" method="post">
								<label for="id">기사님 ID</label> 
								<div> 
									<input type="text" name="d_id" id="id" placeholder="ID입력">
								</div>
								 <label for="pw">기사님 PW</label>
									<input type="password" name="d_pw" id="pw" placeholder="PW입력">

								<div>
									<button type="reset" id="button-r">취소</button>
									<button type="submit" id="button-l" value="로그인">로그인</button>
								</div>
							</form>
							<form action="">
								<br>
								<div style="margin-left: -10px; margin-top: 5px;">
									<ul>
										<li><a href="#" id="driverJoin"
											style="text-decoration: none">회원가입</a></li>
										<li><a href="#" style="text-decoration: none">ID/PW찾기</a></li>
									</ul>
								</div>
								<br> <br>
							</form>
							<!-- <hr width="295px" align="left" noshade="0.1px"> -->
                            <hr width="237px" style="border:0; height:1px; background: #bbb;">
                            <div class="aTag" style="margin-top: 10px; margin-left: 7px;">
                                <a href="loggingMain.jsp" style="color: rgb(129, 128, 128);">기사님
                                    로그인</a>
                            </div>

						</div>

						<!-- Sign in form -->


					</div>
				</div>

			</c:if>
			<c:if test="${!empty driver}">
				<div id="sign-out-container" style="margin-top: 100px;">
					<div>
						<div>
							<strong>${driver.d_id}기사님 환영합니다!</strong>
							<hr>
						</div>
						<div class="sign-out-container-body">
							<form action="BusRegister" method="post">
							
								<div>
										<!-- 노선번호 입력창 -->
										<input class="ifRoute" type="text" id="routeno" name="routeno" placeholder="운행할 버스 입력 ex) 송암72"
											style="margin-left: 10px;">
										<!-- 차량번호 드랍다운 -->
										<select class="ifTailNum selectBox" name="tailNum" id="tailNum">
											<option selected>차량번호선택</option>
										</select>
								</div>
										<input class="alwaysHide" name="routeid" id="routeid">
								
								<div class="btnddrd" style="width: 100%; margin-left: 5px;">
									<div>
												<!-- 노선번호 -->
											<input type="button" id="button-ld" value="버스 번호판 조회"
												class="btn btn-block ifRoute">
												<!-- 차량번호 -->
											<input type="submit" id="submit" value="운행시작"
                class="btn btn-block ifTailNum button-l" style="background-color: rgb(231, 177, 10);font-weight:bold; height:40px; color: #fff; font-size: 20px" width="197px">
									</div>
									<hr>
									<div>
										<input type="button" id="button-rd" class="btn" style="font-weight:bold;"
											value="로그아웃" onclick="location.href='DriverLogout'">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</c:if>

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
		// THESE CODES ARE STRICTLY FOR DYNAMIC DEMONSTRATION PURPOSE.
		// HENCE NOT TO BE TAKEN AS AN ACTUAL USE CASE AS A PRODUCT.
		// 노선번호부터 조회
		
		// 버스 조회 결과 raw json
		let buses = null;
		let routeid = "";
		let routeno = "";
		// 운행중인 해당노선 차량번호들
		let tailNums = [];
		
		$('#button-ld').on("click", function(){
			let routeInput = $("#routeno").val();
			$.ajax({
				url : 'DriverRouteSelect',
				data : {routeno : routeInput},
				success : function(resp001){
					routeid = resp001.routeid;
					routeno = resp001.routeno;
					//노선 테이블 조회 완료
		//			console.log(resp001);
					if(resp001 === null || typeof resp001 === undefined){
						$('#routeno').val("그런 노선 읍다");
					}else{
						$.ajax({
							url : 'https://apis.data.go.kr/1613000/BusLcInfoInqireService/getRouteAcctoBusLcList?serviceKey=38f8K%2FBb5kAAAS2jyZzjrfRmzjxFBS5HL6L256P5vOJ0ESqz2F7hUMTo%2FuzPe%2F7cBNR%2BzspWLdUHQxd6SbsXcg%3D%3D&pageNo=1&numOfRows=50&_type=json&cityCode=24&routeId='+resp001.routeid,
							success : function(resp001_nested){
								// 운행중인 해당노선 버스들 조회 완료
								console.log(resp001_nested);
								
								buses = resp001_nested.response.body.items.item;
								
								buses.forEach(function(elem){
									tailNums.push(elem.vehicleno);
								});
								
								console.log(tailNums);
								$(".ifRoute").hide();
								$(".ifTailNum").show();
								tailNums.forEach(function(elem){
									$("#tailNum").append("<option value='"+elem+"'>"+elem+"</option>");
								})
								$("#routeid").val(routeid);
								$("#submitstart").removeAttr("disabled");
								
							},
							error : function(xhr, status, error){
								console.log(error);
							}
						});						
					}
				},
				error : function(xhr, status, error){
				}
				
			});
		});
		
        console.log($('#driverJoin'));
        $('#driverJoin').on("click", () => {
            console.log("join clicked");
            $.ajax({
                url: 'SignUp',
                type: 'POST',
                data: { ident: 'isDriver' },
                success: function (response) {
                    window.location.href = response; // to the signup sheet!!
                },
                error: function (xhr, status, error) {
                    console.log("ERROR: " + error);
                }
            });
        });


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