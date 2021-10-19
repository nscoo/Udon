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
    <link rel="stylesheet" type="text/css" href="resources/css/create_club2.css">
    
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
            <div class="m-top">
                <div class="top-left">
                    <span>
                        <img src="resources/img/a.jpg" width="250px" height="250px">
                    </span>
                    <a href="#">
                        <p style="text-align: right; font-weight: bold;">사진추가</p>
                    </a>
                </div>
                <div class="top-right">
                    <span>
                        <p style="font-size: 20px;"><b>클럽이름</b></p>
                    </span>
                    <input type="text" name="clubname" placeholder="클럽명을 입력하세요" />
                    <hr />
                    <div class="radio">
                        <input type="radio" name="public" />
                        <label for="private">비공개 클럽(멤버만 멤버를 확인 가능)</label>
                    </div>
                    <div class="radio">
                        <input type="radio" name="public" />
                        <label for="public">공개 클럽(누구나) 멤버를 확인 가능)</label>
                    </div>
                </div>
            </div>
            <div class="club-des">
                <div class="club-name">
                    <p style="font-size: 20px;"><b>클럽 소개글</b></p>
                    <input type="text" name="clubdes" placeholder="이곳에 클럽 소개글을 작성해주세요!">
                    <button type="button" class="btn btn-sm btn-success">저장</button>
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