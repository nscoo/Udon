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
    <link rel="stylesheet" type="text/css" href="resources/css/write_board.css">
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
        <div class="board_menu">
            <span><a href="#" style="font-size: 20px;">전체 베스트</a></span>
            <span><a href="#" style="font-size: 20px;">자유게시판</a></span>
            <span><a href="#" style="font-size: 20px;">시 구청 정보</a></span>
            <span><a href="#" style="font-size: 20px;">모이면 싸다</a></span>
            <span><a href="#" style="font-size: 20px;">주식/투자</a></span>
            <span><a href="#" style="font-size: 20px;">부동산</a></span>
            <span><a href="#" style="font-size: 20px;">육아</a></span>
            <span><a href="#" style="font-size: 20px;">연애 상담</a></span>
        </div>
        <hr>
        <div class="write_row">
            <form method="post" action="writeAction.jsp">
                <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                    <thead>
                        <tr>
                            <th colspan="2" style="background-color: #eeeeee; text-align: center;"> 글쓰기 </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
                        </tr>
                        <tr>
                            <td><textarea class="form-control" placeholder="폭언, 욕설, 음란 등의 글을 작성하시면 제제의 사유가 될 수 있습니다." name="bbsContent" maxlength="2048" style="height: 350px;"></textarea></td>
                        </tr>
                    </tbody>
                </table>
                <!-- 글쓰기 버튼 생성 -->
                <input type="submit" class="btn btn-primary pull-right" value="글쓰기">
            </form>
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