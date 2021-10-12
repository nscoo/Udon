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
    <link rel="icon" href="assets/img/favicon-16x16.png" sizes="16x16">
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

	.edit_box{
	display: grid;
    grid-template-columns: max-content;
    place-content: center;
	}
    </style>
</head>

<body>
    <div class="container">
        <div class="header">
            <div class="h-logo">
                <a href="${pageContext.request.contextPath}/" style="font-size: 40px;"><b>Udon</b></a>
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
                 <div class="edit_box">
                <div>
                    <h3>내정보 수정</h3>
                </div>
                <div id="btn_box">
                            <form method="post" role="form" id="edit" action="${pageContext.request.contextPath}/updateAction.do" >
                        <div class="form-group">
                            <label for="inputName">이름</label>
                            <input type="text" class="form-control" id="username" name="username" value="${member.username}" readonly>
                        </div>
                     	<div class="form-group">
                            <label for="inputId">아이디</label>
                            <input type="text" class="form-control" id="userid" name="userid" value="${member.userid}" readonly>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword">비밀번호</label>
                            <input type="password" class="form-control" id="userpw" name="userpw" placeholder="비밀번호 입력" style="font-family: emoji;">
                        </div>
                        <div class="form-group">
                            <label for="inputPassword">비밀번호확인</label>
                            <input type="password" class="form-control" id="user_ch_pw" name="user_ch_pw" placeholder="비밀번호 재입력" style="font-family: emoji;">
                        </div>
                        <div class="form-group">
                            <label for="inputMobile">휴대폰 번호</label>
                            <input type="tel" class="form-control" name="tel" id="tel" placeholder="휴대폰번호를 입력해 주세요" value="${member.tel}">
                        </div>
                       <div class="form-group">
                            <label for="inputemail" id="icon_search">이메일</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="이메일을 입력해주세요" >
                           
                        <div class="form-group" id="icon_search">
                            <label for="inputadd">집 주소 </label>
                            <input type="text" class="form-control" id="addr_h" name="addr_h" placeholder="집 주소를 입력하세요" value="${member.addr_h}" onclick="execution_daum_address_h()" >
                            
                        </div>
                        </div>
                        <div id="regist_button">
                            <button type="submit" id="submit" class="btn btn-primary">
                                정보 수정<i class="fa fa-check spaceLeft"></i>
                            </button>
                            <button type="button" id="delete" class="btn btn-warning" onclick="location.href='${pageContext.request.contextPath}/delete.do'">
                                회원탈퇴<i class="fa fa-times spaceLeft"></i>
                            </button>
                        </div>
                       
                    </form>

                </div>
            </div>
        </div>
        <hr />
        <div class="footer">
            <div class="logo">
                <img src="assets/img/logo.png" width="150px;" height="150px;">
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