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

    .main {
        display: grid;
        place-self: start center;
        padding: 50px 4s00px;
        grid-template-columns: repeat(2, 1fr);
    }

    .card {
        display: grid;
    }

    .content {
        height: 150px;
    }

    .board {
        border: 1px solid #e3e3e3;
        height: 250px;
    }

    .board_menu {
        display: grid;
        grid-template-columns: repeat(9, 1fr);
        padding-top: 50px;
    }

    .board_top>h3>a {
        float: left;
    }

    .view {
        text-align: right;
    }

    .good {
        float: left;

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
                <span><a href="${pageContext.request.contextPath}/mypage.do">내정보</a></span>
            </div>
        </div>
        <div class="board_menu">
            <span><a href="#" style="font-size: 20px;">전체 베스트</a></span>
            <span><a href="#" style="font-size: 20px;">자유게시판</a></span>
            <span><a href="#" style="font-size: 20px;">시 구청 정보</a></span>
            <span><a href="#" style="font-size: 20px;">모이면 싸다</a></span>
            <span><a href="#" style="font-size: 20px;">주식/투자</a></span>
            <span><a href="#" style="font-size: 20px;">부동산</a></span>
            <span><a href="#" style="font-size: 20px;">육아</a></span>
            <span><a href="#" style="font-size: 20px;">연애 상담</a></span>
            <span><select name="job">
                    <option value="">정렬 방식</option>
                    <option value="order_recent">최근순</option>
                    <option value="order_comments">댓글순</option>
                    <option value="order_goods">좋아요순</option>
                    <option value="order_views">조회순</option>
                </select></span>
        </div>
        <hr>
        <div class="main">
            <div class="card">
                <div class="board">
                    <div class="board_top">
                        <h3><a href="#">전체 베스트</a></h3>
                        <p class="view">view</p>
                    </div>
                    <div class="content">
                        <a href="#">어서 댓글 달아주세여~</a>
                    </div>
                    <div class="comment">
                        <p class="good">좋아요&nbsp</p>
                        <p>댓글</p>
                    </div>
                </div>
                <div class="board">
                    <div class="board_top">
                        <h3><a href="#">전체 베스트</a></h3>
                        <p class="view">view</p>
                    </div>
                    <div class="content">
                        <a href="#">어서 댓글 달아주세여~</a>
                    </div>
                    <div class="comment">
                        <p class="good">좋아요&nbsp</p>
                        <p>댓글</p>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="board">
                    <div class="board_top">
                        <h3><a href="#">전체 베스트</a></h3>
                        <p class="view">view</p>
                    </div>
                    <div class="content">
                        <a href="#">어서 댓글 달아주세여~</a>
                    </div>
                    <div class="comment">
                        <p class="good">좋아요 &nbsp</p>
                        <p>댓글</p>
                    </div>
                </div>
                <div class="board">
                    <div class="board_top">
                        <h3><a href="#">전체 베스트</a></h3>
                        <p class="view">view</p>
                    </div>
                    <div class="content">
                        <a href="#">어서 댓글 달아주세여~</a>
                    </div>
                    <div class="comment">
                        <p class="good">좋아요&nbsp</p>
                        <p>댓글</p>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="board">
                    <div class="board_top">
                        <h3><a href="#">전체 베스트</a></h3>
                        <p class="view">view</p>
                    </div>
                    <div class="content">
                        <a href="#">어서 댓글 달아주세여~</a>
                    </div>
                    <div class="comment">
                        <p class="good">좋아요&nbsp</p>
                        <p>댓글</p>
                    </div>
                </div>
                <div class="board">
                    <div class="board_top">
                        <h3><a href="#">전체 베스트</a></h3>
                        <p class="view">view</p>
                    </div>
                    <div class="content">
                        <a href="#">어서 댓글 달아주세여~</a>
                    </div>
                    <div class="comment">
                        <p class="good">좋아요&nbsp</p>
                        <p>댓글</p>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="board">
                    <div class="board_top">
                        <h3><a href="#">전체 베스트</a></h3>
                        <p class="view">view</p>
                    </div>
                    <div class=" content">
                        <a href="#">어서 댓글 달아주세여~</a>
                    </div>
                    <div class="comment">
                        <p class="good">좋아요&nbsp</p>
                        <p>댓글</p>
                    </div>
                </div>
                <div class="board">
                    <div class="board_top">
                        <h3><a href="#">전체 베스트</a></h3>
                        <p class="view">view</p>
                    </div>
                    <div class="content">
                        <a href="#">어서 댓글 달아주세여~</a>
                    </div>
                    <div class="comment">
                        <p class="good">좋아요&nbsp</p>
                        <p>댓글</p>
                    </div>
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
</body>

</html>