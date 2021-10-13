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
        grid-template-columns: 1fr 3fr;
        padding: 100px 25px;
        gap: 10px;
    }



    .m-left {
        display: grid;
        place-self: start;
    }

    .profile {
        display: grid;
        place-self: start center;
    }

    .profile-des {
        display: grid;
        place-self: start center;
    }

    .menu {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        text-align: center;
        font-weight: bold;
        margin-bottom: 10px;
    }

    .m-right {
        display: grid;
        background-color: #f0f0f0;
        padding: 30px;
        vertical-align: middle;

    }

    .s-top {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
    }

    .s-top>p {
        display: grid;
        place-self: start;

    }

    .s-top>a {
        display: grid;
        place-self: start end;
    }

    .s-top>button {
        display: grid;
        place-self: start end;
    }

    .modal-body {
        text-align: center;
    }

    .r-search {
        padding-bottom: 20px;
        vertical-align: middle;
    }

    .r-search>input {
        border: none;
        font-size: 20px;
        background-color: lightgray;
        height: 57px;
        margin-left: -7px;
        width: 70%;
    }


    .r-member {
        display: grid;
        grid-template-columns: 0.2fr 0.8fr 2fr 1fr;
        margin: 13px;
        vertical-align: middle;
    }

    .r-member>a {
        display: grid;
        place-self: start end;
    }

    .r-member>a:hover {
        color: purple;
        font-weight: bold;
    }

    .photo {
        display: grid;
        place-self: start;
    }

    .name {
        display: grid;
        place-self: start;
        font-size: 18px;
        vertical-align: middle;
    }

    .state {
        display: grid;
        place-self: start center;
        vertical-align: middle;
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
            <div class="m-left">
                <div class="profile">
                    <span style="text-align: center"><img src="resources/img/a.jpg" width="250px" height="250px" /></span>
                    <p style="text-align: center; font-size: 20px; font-weight: bold; padding-top: 10px;">소형견 사회화 모임</p>
                </div>
                <div class="profile-des">
                    <a href="#">
                        <p>멤버 41</p>
                    </a>
                    <p>클럽과 게시물이 공개되지 않습니다.
                        <br />초대로만 가입이 가능합니다.</p>
                </div>
            </div>
            <div class="m-right">
                <div class="r-search">
                    <div class="s-top">
                        <p>멤버 41</p>
                        <!-- 팝업실행버튼 -->
                        <button type="button" class="btn btn-warning btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            초대하기
                        </button>
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">클럽 회원 초대하기</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <label for="id">ID</label>
                                        <input type="text" name="id" placeholder="ID를 이곳에 입력해주세요" style="border: none; ">
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                                        <button type="button" class="btn btn-primary">초대하기</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button type="submit" name="search"><img src="resources/img/mag.png" width="40px" height="40px" style="background-color: mediumpurple; padding: 10px;"></button><input type="text" name="search" placeholder="검색할 멤버를 입력해주세요" />
                </div>
                <div class="r-member">
                    <span class="photo"><img src="resources/img/b.jpg" width="40px" height="40px" style="border-radius: 30px;"></span>
                    <p class="name"><b>최고심</b></p>
                    <p class="state">오늘은 내가 짜파게티 요리사</p>
                    <a href="#">
                        <p>메세지</p>
                    </a>
                </div>
                <div class="r-member">
                    <span class="photo"><img src="resources/img/c.jpg" width="40px" height="40px" style="border-radius: 30px;"></span>
                    <p class="name"><b>또고심</b></p>
                    <p class="state">...</p>
                    <a href="#">
                        <p>메세지</p>
                    </a>
                </div>
                <div class="r-member">
                    <span class="photo"><img src="resources/img/d.jpg" width="40px" height="40px" style="border-radius: 30px;"></span>
                    <p class="name"><b>노상철</b></p>
                    <p class="state">오늘은 내가 홈런볼</p>
                    <a href="#">
                        <p>메세지</p>
                    </a>
                </div>
                <div class="r-member">
                    <span class="photo"><img src="resources/img/e.jpg" width="40px" height="40px" style="border-radius: 30px;"></span>
                    <p class="name"><b>이뚜띤</b></p>
                    <p class="state">오늘은 뭘 포스팅하지?</p>
                    <a href="#">
                        <p>메세지</p>
                    </a>
                </div>
                <div class="r-member">
                    <span class="photo"><img src="resources/img/f.jpg" width="40px" height="40px" style="border-radius: 30px;"></span>
                    <p class="name"><b>김고심</b></p>
                    <p class="state">잠수중</p>
                    <a href="#">
                        <p>메세지</p>
                    </a>
                </div>
                <div class="r-member">
                    <span class="photo"><img src="resources/img/a.jpg" width="40px" height="40px" style="border-radius: 30px;"></span>
                    <p class="name"><b>이고심</b></p>
                    <p class="state">hello I'm fine Thank you and you?</p>
                    <a href="#">
                        <p>메세지</p>
                    </a>
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