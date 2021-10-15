<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no, target-density=medium-dpi">
    <title>Udon</title>
    <link rel="icon" href="resources/img/favicon-16x16.png" sizes="16x16">
    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="common.css">
    <style type="text/css">
    @font-face {
        font-family: 'GmarketSansMedium';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    }

    * {
        font-family: 'GmarketSansMedium';
        box-sizing: content-box;
    }

    li {
        list-style: none;

    }

    a {
        text-decoration: none;
        color: black;
    }
    

    button {
        border: 0;
        outline: 0;
        background-color: transparent;
    }




    .header {
        display: grid;
        grid-template-columns: 180px auto auto;
    }

    .h-menu {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        place-self: start;
        align-self: center;
        column-gap: 10px;
    }

    .h-menu>span>a:hover {
        color: purple;
        font-weight: bold;
    }

    .h-login {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        place-self: start end;
        align-self: center;
        column-gap: 10px;
    }

    .footer {
        display: grid;
        grid-template-columns: repeat(2, 180px);
        place-self: start;
        align-self: center;

    }
    .main {
        display: grid;
        padding: 100px 50px;

    }

    .r-member {
        display: grid;
        grid-template-columns: 0.2fr 0.5fr 2fr 1fr;
        margin: 20px;
        padding: 15px 10px 10px 10px;
        background-color: #f0f0f0;
    }

    .name {
        vertical-align: middle;
        font-size: 23px;
    }

    .state {
        display: grid;
        place-self: start center;
        text-align: center;
        font-size: 18px;
    }

    .button {
        display: grid;
        place-self: start end;
        gap: 10px;
        grid-template-columns: repeat(2, 1fr);
    }
    </style>
</head>

<body>
<div class="container">
        <div class="header">
            <div class="h-logo">
                <a href="${pageContext.request.contextPath}" style="font-size: 40px;"><b>Udon</b></a>
            </div>
            <div class="h-menu">
                <span><a href="${pageContext.request.contextPath}/myclub.do" style="font-size: 20px;">my우동클</a></span>
                <span><a href="${pageContext.request.contextPath}/club_recruit.do" style="font-size: 20px;">우동클모집</a></span>
                <span><a href="#" style="font-size: 20px;">우동커뮤니티</a></span>
            </div>
            <div class="h-login">
                <span><a href="${pageContext.request.contextPath}/login.do">Login</a></span>
                <span><a href="${pageContext.request.contextPath}/mypage.do">내정보</a></span>
            </div>
        </div>
        <div class="main">
            <h3>신청 회원리스트</h3>
            <div class="r-member" id="offDisplay">
                <span class="photo">
                    <img src="resources/img/b.jpg" width="50px" height="50px" style="border-radius: 30px;">
                </span>
                <span class="name">
                    <b>최고심</b>
                </span>
                <span class="state">박고심씨 소개로 들어왔습니다.<br />열심히하겠습니다!
                </span>
                <span class="button">
                    <button type="button" class="btn btn-primary">수락</button>
                    <button type="button" class="btn  btn-danger" onclick="offDisplay()">거절</button>
                </span>
            </div>
            <div class="r-member">
                <span class="photo">
                    <img src="resources/img/a.jpg" width="50px" height="50px" style="border-radius: 30px;">
                </span>
                <span class="name">
                    <b>뚜틴</b>
                </span>
                <span class="state">최선을 다하겠습니다!
                </span>
                <span class="button">
                    <button type="button" class="btn btn-primary">수락</button>
                    <button type="button" class="btn  btn-danger">거절</button>
                </span>
            </div>
            <div class="r-member">
                <span class="photo">
                    <img src="resources/img/d.jpg" width="50px" height="50px" style="border-radius: 30px;">
                </span>
                <span class="name">
                    <b>노상철</b>
                </span>
                <span class="state">고등학교 선출입니다.<br />포수 포지션 좋아합니다.
                </span>
                <span class="button">
                    <button type="button" class="btn btn-primary">수락</button>
                    <button type="button" class="btn  btn-danger">거절</button>
                </span>
            </div>
            <div class="r-member">
                <span class="photo">
                    <img src="resources/img/b.jpg" width="50px" height="50px" style="border-radius: 30px;">
                </span>
                <span class="name">
                    <b>귀염둥이</b>
                </span>
                <span class="state">올림픽을 보고 배구의 매력에 빠졌습니다!<br />함께하고 싶습니다!
                </span>
                <span class="button">
                    <button type="button" class="btn btn-primary">수락</button>
                    <button type="button" class="btn  btn-danger">거절</button>
                </span>
            </div>
            <div class="r-member">
                <span class="photo">
                    <img src="resources/img/e.jpg" width="50px" height="50px" style="border-radius: 30px;">
                </span>
                <span class="name">
                    <b>2m거인</b>
                </span>
                <span class="state">키 190cm입니다. 농구좋아합니다!
                </span>
                <span class="button">
                    <button type="button" class="btn btn-primary">수락</button>
                    <button type="button" class="btn  btn-danger">거절</button>
                </span>
            </div>
        </div>
        <hr />
        <div class="footer">
            <div class="logo">
                <img src="resources/img/logo.png" width="150px;" height="150px;">
            </div>
            <div class="f-menu">
                <br />
                <span><b><a href="#">서비스소개 &nbsp;&nbsp;</a></b></span>
                <span><b><a href="#">고객센터</a></b></span>
                <br /><br /><br /><br />
                <span><a href="#"> ©Udon 우리동네클럽</a></span>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript">
	function offDisplay(){
		document.getElementById("offDisplay").style.display="none";
	}
</script>

</html>
    