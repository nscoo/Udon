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
    .post {
        display: grid;
        background-color: #f0f0f0;
        padding: 50px 20px;

    }

    .p-top {
        display: grid;
        grid-template-columns: 1fr 3fr;
    }

    .photo {
        display: grid;
        place-self: start center;
    }

    .detail {
        display: grid;

    }

    .p-content {
        display: grid;
        margin: 50px;

    }

    .p-comments {
        display: grid;
        grid-template-columns: 10% 90%;
        gap: 20px;
        margin: 5px 0;
    }

    .c-photo {
        display: grid;
        place-self: start end;
    }

    .c-comment {
        display: grid;
    }
    </style>
</head>
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
            <div class="post">
                <div class="p-top">
                    <div class="photo">
                        <span><img src="resources/img/c.jpg" width="250px" height="250px"></span>
                    </div>
                    <div class="detail">
                        <h3>고심이 등반 클럽</h3>
                        <hr style="width: 80%;" />
                        <p>현재인원 5명(여4명,&nbsp;남1명)</p>
                        <p>모집인원 10명(여1명,&nbsp;남4명)</p>
                        <br />
                        <a href="www.udon-club.co.kr/gosim_climb">
                            <p>클럽페이지로 이동하기</p>
                        </a>
                    </div>
                </div>
                <div class="p-content">
                    <p>안녕하세요. 저희는 고심이 등반클럽입니다. <br />한 달에 한 번씩 큰 산을 오릅니다. 초보자분들도 가입하실 수 있으니 많은 신청부탁드립니다!<br />궁금하신 점이 있으신 분들은 댓글남겨주세요! 감사합니다!</p>
                </div>
                <hr />
                <div class="p-comments">
                    <div class="c-photo">
                        <span><img src="resources/img/e.jpg" width="60px" height="60px"></span>
                    </div>
                    <div class="c-comment">
                        <p><b>최고심이어라</b></p>
                        <p>혹시 산을 정하는 기준은 어떻게되나요?</p>
                    </div>
                </div>
                <div class="p-comments">
                    <div class="c-photo">
                        <span><img src="resources/img/c.jpg" width="60px" height="60px"></span>
                    </div>
                    <div class="c-comment">
                        <p><b>주인장</b></p>
                        <p><b>@최고심이어라 &nbsp;</b>회원들간의 투표로 진행됩니다!</p>
                    </div>
                </div>
                <div class="p-comments">
                    <div class="c-photo">
                        <span><img src="resources/img/d.jpg" width="60px" height="60px"></span>
                    </div>
                    <div class="c-comment">
                        <p><b>노상처리기사</b></p>
                        <p>hoxy 연령제한 있나요?!</p>
                    </div>
                </div>
                <div class="p-comments">
                    <div class="c-photo">
                        <span><img src="resources/img/c.jpg" width="60px" height="60px"></span>
                    </div>
                    <div class="c-comment">
                        <p><b>주인장</b></p>
                        <p><b>@노상처리기사</b>네! 20-30대만 참여가능합니다!</p>
                    </div>
                </div>
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

</html>