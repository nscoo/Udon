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
        padding: 100px 25px;
    }

    .title {
        display: grid;
        padding: 10px;
    }

    .post {
        display: grid;
        grid-template-columns: 1fr 2fr 1fr;
        margin: 10px;
        background-color: #f0f0f0;
        padding-top: 20px;
    }


    .photo {
        display: grid;
        place-self: start center;
    }

    .photo>span {
        text-align: center;
    }

    .name {
        font-size: 18px;
        vertical-align: middle;

    }

    .content {
        display: grid;
        place-self: start center;
        grid-template-rows: repeat(2, 1fr);
        text-align: center;
    }

    .LnC {
        display: grid;
        place-self: start end;
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
                <span><a href="${pageContext.request.contextPath}/community.do" style="font-size: 20px;">우동커뮤니티</a></span>
            </div>
            <div class="h-login">
                <span><a href="${pageContext.request.contextPath}/login.do">Login</a></span>
                <span><a href="${pageContext.request.contextPath}/myinfo.do">내정보</a></span>
            </div>
        </div>
        <div class="main">
            <div class="title">
                <h3>모집 글 리스트[Sports]</h3>
            </div>
            <div class="post">
                <div class="photo"><span><img src="resources/img/b.jpg" width="40px" height="40px" style="border-radius: 30px;"></span>
                    <p class="name">노상처리기사</p>
                </div>
                <div class="content">
                    <a href="${pageContext.request.contextPath}/recruit_detail.do">
                        <p style="font-size: 20px">
                            <b>[<span style="font-weight: bold; color: red">풋살</span>]&nbsp;주말 아침마다 풋살 하실 분 구합니다!&nbsp;(10명/16명)</b>
                        </p>
                    </a>
                    <a href="#">
                        <p>강동풋살모임</p>
                    </a>
                </div>
                <div class="LnC">
                    <a href="#">
                        <p>좋아요(21)&nbsp;</p>
                    </a>
                    <a href="${pageContext.request.contextPath}/recruit_detail.do">
                        <p>댓글(5)</p>
                    </a>
                </div>
            </div>
            <div class="post">
                <div class="photo"><span><img src="resources/img/d.jpg" width="40px" height="40px" style="border-radius: 30px;"></span>
                    <p class="name">이수진</p>
                </div>
                <div class="content">
                    <a href="${pageContext.request.contextPath}/recruit_detail.do">
                        <p style="font-size: 20px">[<span style="font-weight: bold; color: green">등산</span>]&nbsp;<b>한 달에 한 번 큰 산을 오릅니다~&nbsp;(2명/6명)</b></p>
                    </a>
                    <a href="#">
                        <p>Climber_Seoul</p>
                    </a>
                </div>
                <div class="LnC">
                    <a href="#">
                        <p>좋아요(11)&nbsp;</p>
                    </a>
                    <a href="${pageContext.request.contextPath}/recruit_detail.do">
                        <p>댓글(7)</p>
                    </a>
                </div>
            </div>
            <div class="post">
                <div class="photo"><span><img src="resources/img/e.jpg" width="40px" height="40px" style="border-radius: 30px;"></span>
                    <p class="name">최고심</p>
                </div>
                <div class="content">
                    <a href="${pageContext.request.contextPath}/recruit_detail.do">
                        <p style="font-size: 20px">[<span style="font-weight: bold; color: purple;">테니스</span>]&nbsp;<b>테니스를 사랑하는 사람들이 모여있어요!&nbsp;(10명/18명)</b></p>
                    </a>
                    <a href="#">
                        <p>테사모</p>
                    </a>
                </div>
                <div class="LnC">
                    <a href="#">
                        <p>좋아요(23)&nbsp;</p>
                    </a>
                    <a href="${pageContext.request.contextPath}/recruit_detail.do">
                        <p>댓글(3)</p>
                    </a>
                </div>
            </div>
            <div class="post">
                <div class="photo"><span><img src="resources/img/f.jpg" width="40px" height="40px" style="border-radius: 30px;"></span>
                    <p class="name">Chori</p>
                </div>
                <div class="content">
                    <a href="${pageContext.request.contextPath}/recruit_detail.do">
                        <p style="font-size: 20px">[<span style="font-weight: bold; color: orange;">야구</span>]&nbsp;<b>전국 아마추어대회 우승 목표팀 이웃사촌입니다!&nbsp;(5명/10명)</b></p>
                    </a>
                    <a href="#">
                        <p>이웃사촌</p>
                    </a>
                </div>
                <div class="LnC">
                    <a href="#">
                        <p>좋아요(11)&nbsp;</p>
                    </a>
                    <a href="${pageContext.request.contextPath}/recruit_detail.do">
                        <p>댓글(17)</p>
                    </a>
                </div>
            </div>
        </div>
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

</html>