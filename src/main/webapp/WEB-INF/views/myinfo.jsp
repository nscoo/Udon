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
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
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

    .m-blocks {
        display: flex;
        flex-flow: row wrap;
        justify-content: center;
    }

    .club {
        flex-grow: 1 1 1;
        padding: 25px;

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
                <span><a href="${pageContext.request.contextPath}/login">Login</a></span>
                <span><a href="${pageContext.request.contextPath}/myinfo.do">내정보</a></span>
            </div>
        </div>
        <hr>
        <div class="content">
            <div class="m-blocks">
                <div class="club">
                    <a href="${pageContext.request.contextPath}/recruit_board.do">
                        <img src="resources/img/users.png" width="200px" height="200px" style="border-radius: 40px; background-color: mediumpurple; padding: 20px;" />
                        <p style="text-align: center; font-size: 20px; font-weight: bold; padding-top: 10px;">프로필 수정</p>
                    </a>
                </div>
                <div class="club">
                    <a href="${pageContext.request.contextPath}/mypage.do">
                        <img src="resources/img/info.png" width="200px" height="200px" style="border-radius: 40px; background-color: mediumpurple; padding: 20px;" />
                        <p style="text-align: center; font-size: 20px; font-weight: bold; padding-top: 10px;">회원 정보 수정</p>
                    </a>
                </div>
                <div class="club">
                    <a href="${pageContext.request.contextPath}/recruit_board.do">
                        <img src="resources/img/local.png" width="200px" height="200px" style="border-radius: 40px; background-color: mediumpurple; padding: 20px;" />
                        <p style="text-align: center; font-size: 20px; font-weight: bold; padding-top: 10px;">지역 설정</p>
                    </a>
                </div>
                <div class="club">
                    <a href="${pageContext.request.contextPath}/recruit_board.do">
                        <img src="resources/img/myclub.png" width="200px" height="200px" style="border-radius: 40px; background-color: mediumpurple; padding: 20px;" />
                        <p style="text-align: center; font-size: 20px; font-weight: bold; padding-top: 10px;">가입한 클럽 보기</p>
                    </a>
                </div>
                <div class="club">
                    <a href="${pageContext.request.contextPath}/recruit_board.do">
                        <img src="resources/img/director.png" width="200px" height="200px" style="border-radius: 40px; background-color: mediumpurple; padding: 20px;" />
                        <p style="text-align: center; font-size: 20px; font-weight: bold; padding-top: 10px;">클럽 관리</p>
                    </a>
                </div>
                <div class="club">
                    <a href="${pageContext.request.contextPath}/recruit_board.do">
                        <img src="resources/img/customer.png" width="200px" height="200px" style="border-radius: 40px; background-color: mediumpurple; padding: 20px;" />
                        <p style="text-align: center; font-size: 20px; font-weight: bold; padding-top: 10px;">고객센터</p>
                    </a>
                </div>
            </div>
        </div>
    </div>
    </div>
    <hr />
    <div class=" footer">
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
</body>

</html>