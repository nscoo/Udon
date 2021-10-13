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
    <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css" />
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

	.find_account{
		display: grid;
	    grid-template-columns: repeat(2,1fr);
	}
	.find_id{
	    display: grid;
	    place-self: start center;
	    width: 70%;
	}
	.find_pw{
		display: grid;
	    place-self: start center;
	    width: 70%;
	}
	.btn-primary{
	color: #fff;
    background-color: #996fe5;
    border-color: #865ad4;
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
		<div class="find_account">
			<div class="find_id">
            <!-- 아이디 찾기 -->
            <form method="post" role="form" id="find_id" action="${pageContext.request.contextPath}/find_idAction.do">
                <fieldset>
                    <legend>아이디 찾기</legend>
                    <div class="form-group">
                        <label for="user_name">이름</label>
                        <input type="text" id="user_name" name="user_name" class="form-control" placeholder="이름을 입력하세요." />
                    </div>
                    <div class="form-group">
                        <label for="tel">전화번호</label>
                        <input type="tel" class="form-control" name="tel" id="tel" placeholder="휴대폰번호를 입력해 주세요">
                    </div>
                    <div class="form-group">
                        <label for="email">이메일</label>
                        <input type="email" class="form-control" name="email" id="email" placeholder="이메일 주소를 입력해 주세요">
                    </div>
                    <div id="button_group">
                        <button type="submit" class="btn btn-primary btn-block" id="login_btn">
                            아이디 찾기
                        </button>
                    </div>
                </fieldset>
            </form>
           </div>
			<div class="find_pw">
            <!-- 비밀번호 찾기 -->
            <form method="post" role="form" id="find_pw" action="${pageContext.request.contextPath}/find_pwAction.do">
                <fieldset>
                    <legend>비밀번호 찾기</legend>
                    <div class="form-group">
                        <label for="user_name">이름</label>
                        <input type="text" id="user_name" name="user_name" class="form-control" placeholder="이름을 입력하세요." />
                    </div>
                    <div class="form-group">
                        <label for="tel">전화번호</label>
                        <input type="tel" class="form-control" name="tel" id="tel" placeholder="휴대폰번호를 입력해 주세요">
                    </div>
                    <div class="form-group">
                        <label for="email">이메일</label>
                        <input type="email" class="form-control" name="email" id="email" placeholder="이메일 주소를 입력해 주세요">
                    </div>
                    <div id="button_group">
                        <button type="submit" class="btn btn-primary btn-block" id="login_btn">
                            비밀번호 찾기
                        </button>
                    </div>
                </fieldset>
            </form>
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