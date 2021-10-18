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

    .login{
    display: grid;
    place-content : center;
    gap: 40px;
    padding: 80px 25px 80px 25px;
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
                <span><a href="${pageContext.request.contextPath}/community.do" style="font-size: 20px;">우동커뮤니티</a></span>
            </div>
            <div class="h-login">
                <span><a href="${pageContext.request.contextPath}/login.do">Login</a></span>
                <span><a href="${pageContext.request.contextPath}/myinfo.do">내정보</a></span>
            </div>
        </div>
                 <div id="regist_box">
                <div>
                    <h3>회원가입</h3>
                </div>
                <div id="btn_box">
                     <form method="post" role="form" id="regForm" action="${pageContext.request.contextPath}/registAction.do">
                        <div class="form-group">
                            <label for="inputID">아이디</label>
                            <input type="text" class="form-control" id="userid" name="userid" placeholder="ID입력하세요">
                            <button class="idChk" type="button" id="idChk" onclick="fn_idChk();" value="N">중복확인</button>
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
                            <label for="name">이름</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="이름입력">
                        </div>
                        <div class="form-group">
                            <label for="sex">성별</label><br>
						  <input type="radio" id="male" name="gender" value="male">
						  <label for="male">Male</label>
						  <input type="radio" id="female" name="gender" value="female">	
						  <label for="female">Female</label><br>
                        </div>
                        <div class="form-group">
                            <label for="inputMobile">휴대폰 번호</label>
                            <input type="tel" class="form-control" name="tel" id="tel" placeholder="휴대폰번호를 입력해 주세요">
                        </div>
                        <div class="form-group">
                            <label for="inputBirthday">생년 월일</label>
                            <input type="date" class="form-control" name="birthdate" id="birthdate" placeholder="생년월일입력">
                        </div>
                        <div class="form-group" id="icon_search">
                            <label for="inputhome">집 주소 </label>
                            <input type="text" class="form-control" name="addr_h" id="addr_h" placeholder="집 주소를 입력하세요"   onclick="execution_daum_address_h()">
                            
                        </div>
                        <div class="form-group">
                            <label for="inputcom" id="icon_search">회사 주소 </label>
                            <input type="text" class="form-control" id="addr_c" name="addr_c" placeholder="회사 주소를 입력하세요"  onclick="execution_daum_address_c()">
                           
                        </div>
                       
                    </form>
                     <div id="regist_button">
                            <button type="submit" id="submit" class="btn btn-primary">
                                회원가입<i class="fa fa-check spaceLeft"></i>
                            </button>
                            <button type="submit" id="submit" class="cencle btn btn-warning">
                                가입취소<i class="fa fa-times spaceLeft"></i>
                            </button>
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