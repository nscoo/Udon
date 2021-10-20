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
    <link rel="stylesheet" type="text/css" href="resources/css/mypostings.css">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

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
                <span><a href="${pageContext.request.contextPath}/login">Login</a></span>
                <span><a href="${pageContext.request.contextPath}/myinfo.do">내정보</a></span>
            </div>
        </div>
        <hr>
        <div class="main">
            <div class="postings">
                <h4 style="text-align: center; padding-bottom: 15px;"><b>내가 쓴 글 목록</b></h4>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/detail_board.do" class="list"><span class="title">아니 근데 있잖아 진짜 짜증나는 일있어</span><span class="date">2021.09.30</span> <span class="writer">최고심</span></a></li>
                    <li><a href="${pageContext.request.contextPath}/detail_board.do" class="list"><span class="title">이번 회동은 토요일 어떠신가요?</span><span class="date">2021.10.02</span> <span class="writer">최고심</span></a></li>
                    <li><a href="${pageContext.request.contextPath}/detail_board.do" class="list"><span class="title">우리동네 최고 맛집발견!!!</span><span class="date">2021.10.10</span> <span class="writer">최고심</span></a></li>
                    <li><a href="${pageContext.request.contextPath}/detail_board.do" class="list"><span class="title">저 테니스 시작하려구요 같이 하실 분 계신가요?</span><span class="date">2021.10.15</span> <span class="writer">최고심</span></a></li>
                    <li><a href="${pageContext.request.contextPath}/detail_board.do" class="list"><span class="title">노상처리기사는 매일 늦게옴</span><span class="date">2021.10.19</span> <span class="writer">최고심</span></a></li>
                    <li><a href="${pageContext.request.contextPath}/detail_board.do" class="list"><span class="title">배고프다...</span><span class="date">2021.10.20</span> <span class="writer">최고심</span></a></li>
                </ul>
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
    </div>
</body>

</html>