<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="utf-8">
            <title>TEST</title>

            <!-- Latest compiled and minified CSS -->
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

            <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

            <!-- Popper JS -->
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

            <!-- Latest compiled JavaScript -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
                crossorigin="anonymous">
            <link rel="stylesheet"
                href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
                crossorigin="anonymous"></script>
            <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
            <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        </head>

        <style>
            #searchResultTable {
                font-size: 14px;
                margin-bottom: 0px;
                margin-left: 20px;
                margin-top: 30px;
                width: 300px;
                border-collapse: collapse;
            }

            .nodeIds {
                display: none;
            }

            .resRouteId {
                display: none;
            }

            .container {
                width: 9cm;
                height: 16cm;
                border: 1px solid black;
                padding: 0;
                display: flex;
                flex-direction: column;
                position: relative;
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

            .btn_switch {
                user-select: none;
                border: 0;
                padding: 0;
                appearance: none;
                background-color: transparent;
                cursor: pointer;
                line-height: inherit;
                border-radius: 0;
                background-image:
                    url(https://ssl.pstatic.net/static/maps/v5/pc/20230216150825/directions.png);
                background-size: 196px 164px;
                background-position: -76px 0;
                position: absolute;
                top: 0;
                right: 17px;
                bottom: 350px;
                z-index: 20;
                margin: auto 0;
                overflow: hidden;
                display: inline-block;
                width: 30px;
                height: 30px;
                font-size: 0;
                color: transparent;
                vertical-align: top;
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
            }

            .searchFull {
                margin-left: 7px;
                margin-right: 7px;
            }

            #btnTbl {
                margin-top: 5px;
                margin-left: 5px;
                margin-right: 5px;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            #departure {
                margin-top: 10px;
            }

            .link_place {
                user-select: none;
                list-style: none;
                margin: 0;
                border: 0;
                appearance: none;
                background-color: transparent;
                cursor: pointer;
                font-size: inherit;
                line-height: inherit;
                color: inherit;
                border-radius: 0;
                display: block;
                padding: 5px 8px 5px 5px;
                height: 28px;
                box-sizing: border-box;
                font-size: 14px;
            }

            .lists {
                margin-top: -10px;
                margin-left: 30px;
                font-size: 14px;
            }

            ul {
                padding: 0px;
            }

            #loginip {
                user-select: none;
                font-family: notosanskr, Malgun Gothic, 맑은 고딕, Dotum, 돋움, sans-serif;
                font-size: 12px;
                color: #767676;
                letter-spacing: -.2px;
                line-height: 20px;
                padding-top: 4px;
            }

            hr {
                margin-top: 3px;
                margin-bottom: 0px;
                margin-right: 0px;
            }

            .card-head {
                height: 445px;
            }

            #plzlog {
                margin-top: 5px;
            }

            .btn-warning {
                color: white;
                background-color: rgb(231, 177, 10);
            }

            .offcanvas {
                max-width: 250px;
                max-height: 330px;
                position: absolute;
                left: 0px;
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
                width: 95%;
            }

            #offcanvas-body {
                padding: 14px;
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

            .srchBtn {
                display: flex;
                justify-content: space-between;
            }

            .srch {
                padding-left: 10px;
                padding-top: 0px;
                padding-bottom: 0px;
                margin: 0px;
            }

            .form-group-design {
                display: flex;
                flex-direction: column;
            }

            .endbar {
                position: absolute;
                bottom: 0;
                width: 95.6%;
                padding-left: 15px;
            }

            .a {
                padding: 0px;
                height: 1.2cm;
                text-align: center;
            }

            .navbar-nav {
                text-align: left;
            }

            .material-icons {
                font-size: 20px;
                color: rgb(90, 90, 90);
            }

            .busAlarm {
                font-size: 22px;
                border: 0;
                background-color: white;
                color: #0068c3;
                margin-top: 3px;
                z-index: 9999 !important;
                position: relative;
            }

            .btnenter {
                size: 20px;
                background-color: rgb(255, 223, 93);
                border-radius: 5px;
                border: none;
                width: 70px;
                height: 30px;
            }

            .bustimetable {
                margin-left: 10px;
            }

            .arrvTime {
                display: flex;
                justify-content: space-between;
                align-items: center;
                width: 300px;
            }

            .resRoute {
                display: flex;
                justify-content: space-between;
                align-items: center;
                width: 300px;
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
            .bookmark{
            	color: gold;
            }
            .recent{
            	color: gold;
            }
        </style>

        <body>
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
                    <div class="News">
                        <div class="News_area">
                            <span><strong> Event > </strong></span>
                            <div id="news-header"></div>
                        </div>
                    </div>
                    <!-- 복사 컨텐츠 -->

                    <div id="pageWrapper">
                        <div class="card">
                            <div class="card-head">
                                <div>
                                    <form class="searchFull" id="searchArea">
                                        <div class="form-group-design">
                                            <input type="text" class="form-control srch" id="departure"
                                                placeholder="출발지를 입력하세요">
                                            <div class="dropdown">
                                                <div class="" id="dprtSrchDropdown"></div>
                                            </div>
                                            <input type="text" class="form-control srch" id="arrival"
                                                placeholder="도착지를 입력하세요">
                                            <div class="dropdown">
                                                <div class="" id="arrvSrchDropdown"></div>
                                            </div>
                                            <div id="switchBtnArea">
                                                <button _ngcontent-isv-c99="" type="button"
                                                    class="btn_switch ng-star-inserted" title="출발지/도착지 전환"
                                                    id="switchBtn"></button>
                                            </div>
                                        </div>
                                        <div class="srchBtn" id="btnTbl">
                                            <input type="button" onclick="location.replace('testSearch.jsp')" class="btn btn-secondary" value="재입력"
                                                style="background-color: rgb(192, 190, 190); border: 0;">
                                            <input type="button" id="srchBtn" disabled class="btn btn-warning"
                                                value="검색" style="color: white; background-color: rgb(231, 177, 10);">
                                        </div>
                                    </form>
                                </div>
                                <hr>
                                <div id="searchResultTable" class="srchbustable">


                                </div>
                                </form>

                                <br>
                                <div class="lists">
                                    <div class="instant_box">
                                        <div class="title-box">
                                            <strong class="instant_tilte">+ 즐겨찾기</strong>
                                            <ul id="bookmarkList">
                                                <a href="#"> 자주 가는 곳 등록</a>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="instant_box">
                                        <div class="title-box">
                                            <strong class="instant_tilte" id="in_ti_c">- 최근 검색</strong>
                                            <ul id="recentSearch">
                                                <a href="#">검색 내역이 없습니다.</a>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

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
                // TODO : GEOLOCATION /
                // 검색 버튼 클릭시 전송용
                let dprtNodeId = "";
                let arrvNodeId = "";
                let dprtName = "";
                let arrvName = "";
                let responses = []; // get the largest scope!!!!!!!!
                let routeResult = [];
                let resStop = [];
                let resRsps = null;

                $("#favBtn").hide();
                // 출발 도착 다 입력됐는지 확인
                let dprtCheck = false;
                let arrvCheck = false;
                
                $(document).ready(function () {
                    // 출발지 검색용!!!!!############################
                    $("#departure").on("keyup", function () {

                        // 타자 칠때마다 검색 비활성화
                        $("#srchBtn").prop("disabled", "disabled");
                        $("#srchBtn").attr("class", "btn btn-warning");
                        $("#srchBtn").attr("value", "입력 중");
                        dprtCheck = false;

                        let query = $(this).val();
                        //			console.log(query);
                        $.ajax({
                            url: 'Search',
                            data: {
                                keyword: query
                            },
                            success: function (response) {
                                //	let resultList = JSON.parse(response);
                                if (response !== undefined || response !== null) {
                                    //	console.log(response);
                                    let iter = 0;
                                    while (true) {
                                        $("#dprtSrchDropdown").append("<span type='button' class='dprtPick'>"
                                            + response[iter]['nodenm'] + "</span>"
                                            + "<p class='nodeIds'>" + response[iter]['nodeid'] + "</p>"
                                            + "<br>");
                                        iter += 1;
                                        if(iter >= 3){
                                        	break;
                                        }
                                    }
                                }
                            },
                            error: function (xhr, status, error) {
                                console.log("안되는디==>" + error);
                            }
                        });
                        // 새로운 입력시 전 검색 내용 리셋
                        $("#dprtSrchDropdown").empty();
                    });

                    // 도착지 검색용!!!!!############################
                    $("#arrival").on("keyup", function () {

                        // 타자 칠때마다 검색 비활성화
                        $("#srchBtn").prop("disabled", "disabled");
                        $("#srchBtn").attr("class", "btn btn-warning");
                        $("#srchBtn").attr("value", "입력 중");
                        arrvCheck = false;

                        let query = $(this).val();
                        $.ajax({
                            url: 'Search',
                            data: {
                                keyword: query
                            },
                            success: function (response) {
                                if (response != undefined || response != null) {
                                	let iter = 0;
                                    while (true) {
                                        $("#arrvSrchDropdown").append("<span type='button' class='arrvPick'>"
                                            + response[iter]['nodenm'] + "</span>"
                                            + "<p class='nodeIds'>" + response[iter]['nodeid'] + "</p>"
                                            + "<br>");
                                        iter += 1;
                                        if(iter >= 3){
                                        	break;
                                        }
                                    }
                                }
                            },
                            error: function (xhr, status, error) {
                                console.log("안되는디==>" + error);
                            }
                        });
                        $("#arrvSrchDropdown").empty();
                    });

                });
                // 입력창 검색용 AJAX 끝 ##############################################	

                // 드랍다운 보이기
                $(".form-control").on("focusin", function () {
                    $(".dropdown").show();
                });
                // 출발지 선택용 (선택완료 후 드랍다운 숨김) -> 나중에 리팩터링 할것
                $("#dprtSrchDropdown").on("click", "span", function () {
                    //		console.log("clicked");
                    let picked = $(this).text();
                    $("#departure").val(picked);
                    $("#dprtSrchDropdown").hide();
                    // 검색용 정류장 id, 이름 저장 (id = deprecated, same below)
                    dprtNodeId = $(this).next().text();
                    dprtName = picked;
                    //		console.log($("#departure").val());
                    // 검색 버튼 활성
                    dprtCheck = true;
                    if (dprtCheck && arrvCheck) {
                        $("#srchBtn").removeAttr("disabled");
                        $("#srchBtn").attr("value", "검색");
                        $("#srchBtn").attr("class", "btn btn-success");
                    }
                });
                // 도착지 선택용 (선택완료 후 드랍다운 숨김) -> SAME
                $("#arrvSrchDropdown").on("click", "span", function () {
                    //		console.log("clicked");
                    let picked = $(this).text();
                    $("#arrival").val(picked);
                    $("#arrvSrchDropdown").hide();
                    // 검색용 정류장id 저장
                    arrvNodeId = $(this).next().text();
                    arrvName = picked;
                    //		console.log(arrvNodeId);
                    //		console.log($("#arrival").val());
                    // 검색 버튼 활성
                    arrvCheck = true;
                    if (dprtCheck && arrvCheck) {
                        $("#srchBtn").removeAttr("disabled");
                        $("#srchBtn").attr("value", "검색");
                        $("#srchBtn").attr("class", "btn btn-success");
                    }
                });
                
                // 버튼 스위칭 코드 시작------------------------------
                $(document).ready(function () {
                    $("#switchBtn").click(function () {
                        var dprt = $("#departure").val();  // 출발지 입력값 가져오기
                        var arrv = $("#arrival").val();  // 도착지 입력값 가져오기
                        // 출발지와 도착지 입력값 서로 바꾸기
                        $("#departure").val(arrv);
                        $("#arrival").val(dprt);
                        dprtName = arrv;
                        arrvName = dprt;
                    });
                });
                // 버튼 스위칭 끝-------------------------------------


                // 대망으 검섁버튼#########################################################
                $("#srchBtn").on("click", function () {
                	// 검색 버튼 연타했을 때 다른 노선들 중복되서 쌓이지 않도록 초기화 와 설명 친절하다
                    resStop.length = 0;
                    responses.length = 0;
                    routeResult.length = 0;
                    resRsps = null;
                    // alert("ㅎㅇㅇ");
                    // 먼저 출발지 도착지 둘다 경유하는 노선 cross reference
                    // callback hell 방지, response 2개 동시에 받기
                    let requests = [];
					let resArr = [];
					let resColl = [];
                    $.ajax({
                        // 두방향 같은이름 정류소
                        url: 'Search2',
                        method: 'post',
                        data: { dprtnm: dprtName, arrvnm: arrvName },
                        // 첫번째 then
                    }).then(function(tossed1st){
                    	console.log("The 1st then()");
                        resArr = tossed1st.replace("[", "").replace("]", "").split(", ");
                        return resArr.length;
                    
                    // 4개 정류소 조회
                    }).then(function (tossed2nd) {
                    	console.log("The 2nd then() ... fetching nodes");
                    	console.log(tossed2nd + " nodes detected.");
                        return $.ajax({
                            url: 'https://apis.data.go.kr/1613000/BusSttnInfoInqireService/getSttnThrghRouteList?serviceKey=38f8K%2FBb5kAAAS2jyZzjrfRmzjxFBS5HL6L256P5vOJ0ESqz2F7hUMTo%2FuzPe%2F7cBNR%2BzspWLdUHQxd6SbsXcg%3D%3D&pageNo=1&numOfRows=100&_type=json&cityCode=24&nodeid=' + resArr[0],
                        });
                    }).then(function(tossed3rd){
                    	console.log("The 3rd then() ... fetching nodes");
                    	resColl.push(tossed3rd);
                        return $.ajax({
                            url: 'https://apis.data.go.kr/1613000/BusSttnInfoInqireService/getSttnThrghRouteList?serviceKey=38f8K%2FBb5kAAAS2jyZzjrfRmzjxFBS5HL6L256P5vOJ0ESqz2F7hUMTo%2FuzPe%2F7cBNR%2BzspWLdUHQxd6SbsXcg%3D%3D&pageNo=1&numOfRows=100&_type=json&cityCode=24&nodeid=' + resArr[1],
                        });
                    }).then(function(tossed4th){
                        console.log("The 4th then() ... fetching nodes");
                        resColl.push(tossed4th);
                        return $.ajax({
                            url: 'https://apis.data.go.kr/1613000/BusSttnInfoInqireService/getSttnThrghRouteList?serviceKey=38f8K%2FBb5kAAAS2jyZzjrfRmzjxFBS5HL6L256P5vOJ0ESqz2F7hUMTo%2FuzPe%2F7cBNR%2BzspWLdUHQxd6SbsXcg%3D%3D&pageNo=1&numOfRows=100&_type=json&cityCode=24&nodeid=' + resArr[2],
                        });
                    }).then(function(tossed5th){
                    	console.log("The 5th then() ... fetching nodes");
                    	resColl.push(tossed5th);
                        return $.ajax({
                            url: 'https://apis.data.go.kr/1613000/BusSttnInfoInqireService/getSttnThrghRouteList?serviceKey=38f8K%2FBb5kAAAS2jyZzjrfRmzjxFBS5HL6L256P5vOJ0ESqz2F7hUMTo%2FuzPe%2F7cBNR%2BzspWLdUHQxd6SbsXcg%3D%3D&pageNo=1&numOfRows=100&_type=json&cityCode=24&nodeid=' + resArr[3],
                        });
                    // 최강 n번째 then? : processing a json array instead of a promise array because i can lolololololol
                    }).then(function(tossed6th){
                    	console.log("The 6th then() : For data processing.");
                    	resColl.push(tossed6th); // 정류장 쇼핑 끝
                    	
                    	for(let lol = 0 ; lol < resColl.length ; lol++){
                    		for (let k = 0; k < resColl[lol].response.body.items.item.length; k++) {
                                responses.push(resColl[lol].response.body.items.item[k].routeid);
                            }
                    	}
                        // console.log(responses);
                        // responses에는 4개정류장 지나는 노선아이디들 들어있음 다음 함수에서는 중복찾아 제거
                        function secondOne(rsp, routeRes) {
                            let dupes = {};
                            for (let n = 0; n < rsp.length; n++) {
                                //		console.log("looping");
                                if (dupes[rsp[n]] == undefined) {
                                    dupes[rsp[n]] = 1;
                                } else {
                                    dupes[rsp[n]]++;
                                }
        	                //    console.log(dupes[rsp[n]]);
                            }
                            for (let stuff in dupes) {
                                if (dupes[stuff] > 2) {
                                    if (!routeRes.includes(stuff)) {
                                        routeRes.push(stuff);
                                    }
                                }
                            }
                            return routeRes;
                        }
						routeResult = secondOne(responses, routeResult);
                        
                        // console.log(dump2);
                        // routeResultObject = '함수추가';
    					// console.log(routeResult); // 드디어 된다 이 솥가튼 lest we make broken promises heheheheheheaehahahahahahahao
                        return routeResult;
                        
                    }).then(function (tossed7th) {
                    	console.log("The 7th then()");
                        tossed7th.forEach(function (element) {
                            $.ajax({
                                url: 'https://apis.data.go.kr/1613000/BusRouteInfoInqireService/getRouteAcctoThrghSttnList?serviceKey=38f8K%2FBb5kAAAS2jyZzjrfRmzjxFBS5HL6L256P5vOJ0ESqz2F7hUMTo%2FuzPe%2F7cBNR%2BzspWLdUHQxd6SbsXcg%3D%3D&pageNo=1&numOfRows=200&_type=json&cityCode=24&routeId=' + element,
                                success: function (rsps77) {
                                    let arr = rsps77.response.body.items.item;
                                    let compArr = [];
                                    // arr 은 정류장 object 리스트임
                                    arr.forEach(function (elem) {
                                        // console.log(elem);
                                        compArr.push(elem.nodenm);
                                        // 준비해둔 dprtName, arrvName로 조회
                                    });
                                    let start = compArr.indexOf(dprtName);
                                    let end = compArr.indexOf(arrvName);
                                    if ((parseInt(arr[start].nodeord) - parseInt(arr[end].nodeord)) < 0) {
                                        resStop.push(arr[start]);
                                        resStop.push(arr[end]);
                                    } else {
                                        let start = compArr.lastIndexOf(dprtName);
                                        let end = compArr.lastIndexOf(arrvName);
                                        resStop.push(arr[start]);
                                        resStop.push(arr[end]);
                                    }

                                },
                                error: function (error) {
                                    console.log("안되!" + error);
                                }
                            });

                        })
                        // 마지막에서 몇번째인지 모르는 then
                    }).then(function() {
                        //		console.log(dumpThis);
                        //		console.log(routeResult);
                        //		console.log(resStop);
                        $("#searchResultTable").empty();
                        let jsonString = JSON.stringify(routeResult);
                        $.ajax({
                            type: "POST",
                            url: "RouteCheck",
                            // 리스트로 수정중 ########(01)######## 완료
                            data: jsonString,
                            contentType: "application/json;charset=utf-8",
                            success: function (rsps99) {
                                //				console.log(rsps99);
                                resRsps = rsps99;
                                console.log(resRsps);
                                // 리스트로 수정중 ########(02)######## 
                                //			<c:set var="theJson" value="${resRsps}"/>
                                for (let p = 0; p < 2; p++) {
                                    $("#searchResultTable").append('<div class="instant_box" style="position: relative;"><table class="resTables" id="srchIdx'
                                        + resRsps[p].routeid + '"><tr><td class="resRoute"><button onclick="favBtnAction($(this))" class="material-icons favBtn">&#xe83a;</button>탑승 버스<strong>'
                                        + resRsps[p].routeno + '</strong><button onclick="alarmBtnAction($(this))" class="material-icons busAlarm">&#xe7f7;</button></td><td class="resRouteId">'
                                        + resRsps[p].routeid + '</td></tr><tr><td class="bustimetable" colspan="2"><div class="arrvTime arrvInfo" id="infoIdx'
                                        + resRsps[p].routeid + '"><span style="font-size: 14px;">도착 시간 계산 중</span></div><div style="font-size: 14px;  border-radius: 5px; margin-top: -10px;"><br><div style="display: flex; justify-content: center; width: 100%;"><table style="margin-left: 20px;"><tr><td style="width: 5px;"> <i class="material-icons" style="color: rgb(255, 150, 80);width: 20px;">&#xe530;</i></td><td class="dprtNode">'
                                        + dprtName + '</td><th style="font-size: 15px;"></th><td><i class="material-icons">&#xe154;</i></td><td style="width: 5px;"> <i class="material-icons" style="color: rgb(255, 150, 80);width: 20px;">&#xe3a0;</i></td><td class="arrvNode">'
                                        + arrvName + '</td></tr></table></div></div></td></tr></table></div><br><br>');
                                }
                                //		$("#resRoute").text(resRsps.routeno); // DEPRECATED!!!!!
                                //		$("#resRouteId").text(resRsps.routeid);
                                //			console.log(resRsps);
                //                console.log($(".busAlarm"));
                            },
                            error: function (error) {
                                console.log(error);
                            }
                        });

                    }).then(function(){
                    	// 최근검색
                        //		console.log(dprtName);
                        //		console.log(arrvName);
                        $.ajax({
                            url: 'AddRecent',
                            data: { dprtName: dprtName, arrvName: arrvName },
                            success: function (rsps777) {

                                console.log(rsps777 + "RECENT SEARCH HISTORY ADDED.");

                                // 최근 검색 추가 완료
                            },
                            error: function (error) {
                                console.log(error);
                            }
                        });
                    	
                        // 진짜 마지막 then ㅋㅋㅋㅋ (도착정보 갱신용)
                    }).then(function () {
                    //  console.log("INSIDE THE LAST THEN");
                        setInterval(function () {
                            for (let t = 0; t < routeResult.length; t++) {
                                //			console.log(routeResult[t]);
                                //			console.log(resRsps[t].routeid);
                                $.ajax({
                                    // 리스트로 뽑을 때 수정할 것 ajax 를 for에 돌려
                                    url: 'https://apis.data.go.kr/1613000/ArvlInfoInqireService/getSttnAcctoSpcifyRouteBusArvlPrearngeInfoList?serviceKey=38f8K%2FBb5kAAAS2jyZzjrfRmzjxFBS5HL6L256P5vOJ0ESqz2F7hUMTo%2FuzPe%2F7cBNR%2BzspWLdUHQxd6SbsXcg%3D%3D&pageNo=1&numOfRows=10&_type=json&cityCode=24&nodeId=' + dprtNodeId + '&routeId=' + routeResult[t],
                                    success: function (rsps88) {
                                        console.log("도착정보 4초마다 갱신중");
                                 //     console.log(rsps88);

                                        try {
                                            console.log("TRY SUCCESSFUL");
                                            $("#infoIdx" + resRsps[t].routeid).html("<span style='color:red'>" + rsps88.response.body.items.item.vehicletp + "</span>약 " + Math.floor(parseInt(rsps88.response.body.items.item.arrtime) / 60) + "분 뒤 도착 " + rsps88.response.body.items.item.arrprevstationcnt + " 정거장 남음");
                                            $(".favBtn").show();
                                        } catch (error) {
                                            console.log("TRY FAILED");
                                            $("#infoIdx" + resRsps[t].routeid).html("출차 정보가 없습니다.");
                                            $(".favBtn").show();
                                        }
                                    },
                                    error: function (error) {
                                        console.log("으잉?" + error);
                                    }
                                });
                            }
                        }, 4000);

                    }).catch(function (error) {
                        console.log(error);
                    });

                });//////////////////// 검색 버튼 on click  끝////////////////////////////

                // 알림 예약 버튼 클릭
                function alarmBtnAction(btn) {
                    console.log("Booking button clicked!!");
                    let routeno = $(btn).siblings("strong").text();
                    let routeid = $(btn).parent().siblings(".resRouteId").text();
                    $.ajax({
                        url: 'BookingPrev',
                        data: { routeno: routeno, routeid: routeid, dprtid: dprtNodeId, arrvid: arrvNodeId, dprtnm: dprtName, arrvnm: arrvName },
                        success: function (rspsEffed) {
                            console.log(rspsEffed);
                            window.location.replace("booking.jsp");
                        },
                        error: function (error) {
                            console.log(error);
                        }
                    });
                };
                // 즐겨찾기 버튼 클릭
				function favBtnAction(thisBtn){
					console.log("Bookmark button clicked!");
					let routeToSend = $(thisBtn).parent().siblings(".resRouteId").text();
					let routeNameToSend = $(thisBtn).siblings("strong").text();
					$.ajax({
                        method: 'GET',
                        url: 'AddFav',
                        //		contentType : "text/html;charset=UTF-8",
                        // 리스트로 뽑을 때 수정할 거
                        data: { routeName: routeNameToSend, routeInfo: routeToSend, dprtNode: dprtName, arrvNode: arrvName, dprtId: dprtNodeId, arrvId: arrvNodeId},
                        success: function (favRsps) {
                            //		console.log("insert result:"+favRsps);
                            if (parseInt(favRsps) == 1) {
                                // 또는 숨기던지
                            //  $("#favBtn").attr("value", "추가완료!");
                                $(this).attr("disabled");
                            }
                        },
                        error: function (error) {
                            console.error(error);
                        }
                    });
				}
                // 페이지 로딩시 북마크, 최근검색 리스트 백지로
				$("#bookmarkList").empty();
				$("#recentSearch").empty();
                // 페이지 로딩시(또는 새로고침) 즐겨찾기 갱신 일단은 출발-목적만 나오게
                $.ajax({
                    url: 'GetFav',
                    success: function (sucResp) {
                        //			console.log(sucResp);
                        if (sucResp !== null || sucResp !== undefined) {
                            for (let y = 0; y < sucResp.length; y++) { // BEAUTIFUL
                                $("#bookmarkList").append("<li><span class=\"bookmark\" onclick=\"addThese(\'"+sucResp[y].f_dprt+"\', \'"+sucResp[y].f_arrv+"\')\">" + sucResp[y].f_dprt + "에서 " + sucResp[y].f_arrv + "까지</span></li>");
                            }
                        }
                    },
                    error: function (error) {
                        console.error(error);
                    }
                });
				// 페이지 로딩시 최근검색 갱신
                $.ajax({
                    url: 'GetRecent',
                    success: function (sucResp2) {
                        console.log(sucResp2);
                        for (let x = 0; x < sucResp2.length; x++) { // Dynamically using functions!!!!
                            $("#recentSearch").append("<li><span class=\"recent\" onclick=\"addThese(\'"+sucResp2[x].rec_dprt+"\', \'"+sucResp2[x].rec_arrv+"\')\">" + sucResp2[x].rec_dprt + "에서 " + sucResp2[x].rec_arrv + "까지</span></li>");
                        }
                    },
                    error : function(xhr, status, error){
                    	console.log(error);
                    }
                });
				// 즐찾, 최근검색 눌럿을때 바로 검색창에 추가해줄거
				function addThese(departure, arrival){
					$("#departure").val(departure);
					$("#arrival").val(arrival);
					$("#srchBtn").removeAttr("disabled");
					dprtName = departure;
					arrvName = arrival;
					$("#srchBtn").click();
					$("#srchBtn").attr("disabled");
				}
                
				////////////////////////THE GREAT DIVIDER//////////////////////////
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