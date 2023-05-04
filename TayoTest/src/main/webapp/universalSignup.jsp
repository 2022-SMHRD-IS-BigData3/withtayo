<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>SIGN UP : UNIVERSAL</title>
</head>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>

<script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
<script type="text/JavaScript" src="./my-script.js"></script>
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

    /* 은혜 컨텐츠 시작 */
    body {
        margin: 0;
        padding: 0;
        font-size: 14px;
    }

    #form-inner-container {
        background-color: white;
        box-shadow: 0 0 20px gainsboro;
    }

    #sign-up-container,
    #sign-in-container {
        padding: 50px 30px;
        margin-left: 20px;
        width: 320px;
        display: inline-block;
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

    @media(max-width:1438px) {
        lottie-player {
            width: 300px !important;
        }
    }

    @media(max-width:1124px) {
        #animation-container {
            display: none;
        }

        #form-inner-container {
            display: flex;
            justify-content: center;
        }
    }

    @media(max-width: 684px) {
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

        #toggleSignIn,
        #toggleSignUp {
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

    #button-r:before,
    button:after {
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

    #button-r:hover:before,
    button:hover:after {
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

    #button-l:before,
    button:after {
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

    #button-l:hover:before,
    button:hover:after {
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
        width: 97%;
        padding-left: 12px;
    }

    .a {
        padding: 0px;
        height: 1.5cm;
        text-align: center;
    }

    td {
        width: 100px;
    }

    .signupbtn1 {
        background: rgb(192, 190, 190);
        color: #fff;
        border-radius: 3px;
        width: 117px;
        height: 35px;
        font-size: 14px;
        margin-top: 20px;
        padding: 0 2em;
        cursor: pointer;
        transition: 800ms ease all;
        outline: none;
    }

    .signupbtn1:hover {
        background: #fff;
        color: rgb(192, 190, 190);
    }

    .signupbtn1:before,
    .signupbtn1:after {
        content: '';
        position: absolute;
        top: 0;
        right: 0;
        height: 2px;
        width: 0;
        background: rgb(192, 190, 190);
        transition: 400ms ease all;
    }

    .signupbtn1:after {
        right: inherit;
        top: inherit;
        left: 0;
        bottom: 0;
        background-color: rgb(192, 190, 190);
    }

    .signupbtn1:hover:before,
    .signupbtn1:hover:after {
        width: 100%;
        transition: 800ms ease all;
    }

    .signupbtn2 {
        background: rgb(231, 177, 10);
        color: #fff;
        border-radius: 3px;
        width: 117px;
        height: 35px;
        font-size: 14px;
        margin-top: 20px;
        padding: 0 2em;
        cursor: pointer;
        transition: 800ms ease all;
        outline: none;
    }

    .signupbtn2:hover {
        background: #fff;
        color: rgb(192, 190, 190);
    }

    .signupbtn2:before,
    .signupbtn2:after {
        content: '';
        position: absolute;
        top: 0;
        right: 0;
        height: 2px;
        width: 0;
        background: rgb(192, 190, 190);
        transition: 400ms ease all;
    }

    .signupbtn2:after {
        right: inherit;
        top: inherit;
        left: 0;
        bottom: 0;
        background-color: rgb(192, 190, 190);
    }

    .signupbtn2:hover:before,
    .signupbtn2:hover:after {
        width: 100%;
        transition: 800ms ease all;
    }

    .navbar-toggler {
        width: 70px;
    }
</style>
<link rel="icon" type="image/png" href="./favicon.png">
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
                            <h5 class="offcanvas-title" id="offcanvasNavbarLabel">withTAYO</h5> <!-- Offcanvas 헤더 -->
                            <button type="button" class="btn-close" data-bs-dismiss="offcanvas"
                                aria-label="Close"></button>
                            <!-- Offcanvas 닫기 버튼 -->
                        </div>
                        <div class="offcanvas-body" id="offcanvas-body"> <!-- Offcanvas 내용 -->
                            <div class="navbar-nav" style="text-align: center;">
                                <a class="nav-link active" href="#">공지 사항</a>
                                <hr>
                                <div><span>로그인 이후 이용가능</span></div>
                                <hr>
                            </div>
                        </div>
                    </div> <!-- Offcanvas 끝 -->
                </div>
            </nav> <!-- navbar 끝 -->
        </div>
        <div class="section big">
            <div style="height: 50px; width: 338;"></div>
            <div style="width: 338px; margin: 1px;">
                <!-- 중앙 컨텐츠 -->
                <div id="signupWrapper">
                    <!--  버스기사 회원가입으로 이동 -->
                    <c:if test="${userCategory == 'isDriver'}">
                        <form action="DSignupSubmit" method="post" style="margin-top: 60px;">
                            <table style="width: 338px; text-align: center; font-weight: bold;">
                                <div
                                    style="display: flex; justify-content: center; width: 338px; font-weight: bold; font-size: 20px; margin-bottom: 25px;">
                                    Bus 기사 회원가입</div>
                                <tr>
                                    <td>아이디</td> <!--原 value="ID입력" -->
                                    <td><input type="text" name="d_id" value="" placeholder=" 모든 정보 필수 입력"
                                            style="width: 200px; font-weight: bold;">
                                    </td>
                                </tr>
                                <tr>
                                    <td>비밀번호</td><!--原 value="PW입력" -->
                                    <td><input type="password" name="d_pw" placeholder=" ●●●●●●" style="width: 200px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2"><a style="font-size: 12px;" href="#" data-toggle="popover"
                                            title="준비中" >이용약관 및 운영정책 확인하기</a></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><a style="font-size: 12px;" href="#" data-toggle="popover" title="준비中" >개인정보관련 사항 확인하기</a></td>
                                </tr>
                            </table>

                            <div style="display: flex; justify-content: center; width: 338px;">
                                <div><input class="signupbtn1" type="reset" value="재입력"
                                        style="width: 100px; margin-right: 20px;"></div>
                                <div><input class="signupbtn2" type="submit" value="가입"
                                        style="width: 100px; margin-left: 20px;"></div>
                            </div>
                        </form>
                    </c:if>

                    <!--  승객 회원가입으로 이동 -->
                    <c:if test="${userCategory=='isPassenger'}">
                        <form action="SignupSubmit" method="post">
                            <table style="width: 338px; text-align: center; font-weight: bold;">
                                <div style="display: flex; justify-content: center; width: 338px; font-weight: bold; font-size: 20px; margin-bottom: 25px;">
                                    회원가입</div>
                                <tr>
                                    <td>아이디</td> <!--原 value="ID입력" -->
                                    <td><input type="text" name="p_id" value="" placeholder=" 모든 정보 필수 입력"
                                            style="width: 200px; font-weight: bold;">
                                    </td>
                                </tr>
                                <tr>
                                    <td>비밀번호</td><!--原 value="PW입력" -->
                                    <td><input type="password" name="p_pw" placeholder=" ●●●●●●" style="width: 200px;">
                                    </td>
                                </tr>

                                <tr>
                                    <td>전화번호</td> <!--原 value="전화번호 입력" -->
                                    <td><input type="text" name="p_ph" placeholder=" ex.010-3311-2244"
                                            style="width: 200px;"></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><a style="font-size: 12px;" href="#" data-toggle="popover"
                                            title="준비中" >이용약관 및 운영정책 확인하기</a></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                    <a style="font-size: 12px;" href="#" data-toggle="popover" title="준비中" >개인정보관련 사항 확인하기</a>
                                    </td>
                                </tr>
                            </table>

                            <div style="display: flex; justify-content: center; width: 338px;">
                                <div><input class="signupbtn1" type="reset" value="재입력"
                                        style="width: 100px; margin-right: 20px;"></div>
                                <div><input class="signupbtn2" type="submit" value="가입"
                                        style="width: 100px; margin-left: 20px;"></div>
                            </div>
                        </form>
                    </c:if>
                </div>
            </div>


            <!--  -->
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
    <script type="text/javascript">
        $(document).ready(function () {
            $("#signupForm").submit(function (event) {
                event.preventDefault();
                var formData = $(this).serialize();
                $.ajax({
                    type: "POST",
                    url: "SignUp",
                    data: formData,
                    success: function (result) {
                        $("#signupWrapper").html(result);
                    }
                });
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
        
                // 동현
        // 팝오버 시작
                $(document).ready(function () {
            $('[data-toggle="popover"]').popover();
        });
        // 팝오버 끝
    </script>
</body>

</html>