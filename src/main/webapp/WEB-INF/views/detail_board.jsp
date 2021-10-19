<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no, target-density=medium-dpi">
    <title>Udon</title>
    <link rel="icon" href="resources/img/favicon-16x16.png" sizes="16x16">
    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="resources/css/detail_board.css">
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
            <span><a href="${pageContext.request.contextPath}/total_list.do" style="font-size: 20px;">전체 베스트</a></span>
            <span><a href="#" style="font-size: 20px;">자유게시판</a></span>
            <span><a href="#" style="font-size: 20px;">시 구청 정보</a></span>
            <span><a href="#" style="font-size: 20px;">모이면 싸다</a></span>
            <span><a href="#" style="font-size: 20px;">주식/투자</a></span>
            <span><a href="#" style="font-size: 20px;">부동산</a></span>
            <span><a href="#" style="font-size: 20px;">육아</a></span>
            <span><a href="#" style="font-size: 20px;">연애 상담</a></span>
        </div>
        <hr>
        <div class="detail_tite">
            <h4>아니 근데 있잖아...</h3>
                <p>2분전</p>
        </div>
        <div class="detail_content">
            <p>트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 인생에 따뜻한 봄바람을 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의</p>
        </div>
        <div class="comment_area">
            <div class="comment_icon">
                <p>좋아요</p>
                <p>댓글</p>
                <p>조회</p>
            </div>
            <div class="comment">
                <div class="comment-row">
                    <textarea id="new-comment" name="new-comment" rows=5 placeholder="New Comment"></textarea>
                    <button type="submit">작성 완료</button>
                </div>
                <div class="comment-row">
                    <div class="comment-date">사용자 아이디</div>
                    <div class="comment-content">우와 대박이에용</div>
                    <div class="comment-date">2021-10-12 14:44:01</div>
                </div>
                <div class="comment-row">
                    <div class="comment-date">사용자 아이디</div>
                    <div class="comment-content">우와 대박이에용</div>
                    <div class="comment-date">2021-10-12 14:44:01</div>
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