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
    <link rel="stylesheet" type="text/css" href="resources/css/club_vote.css">
    
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
                    <p><a href="${pageContext.request.contextPath}/club_members.do">
                            멤버 41</a></p>
                    <p>클럽과 게시물이 공개되지 않습니다.
                        <br />초대로만 가입이 가능합니다.</p>
                </div>
            </div>
            <div class="m-right">
                <div class="menu">
                    <span><a href="${pageContext.request.contextPath}/club_detail.do">게시글</a></span>
                    <span><a href="${pageContext.request.contextPath}/club_album.do">앨범</a></span>
                    <span><a href="#">일정</a></span>
                    <span><a href="#">투표</a></span>
                </div>
                <div class="club-post">
                    <div class="post">
                        <div class="title">
                            <h4>이번주 토요일 모임 장소 투표</h4>
                        </div>
                        <div class="content">
                            <li>
                                <input type="radio" name="vote" />
                                <label for="one">신논현역</label>
                            </li>
                            <li>
                                <input type="radio" name="vote" />
                                <label for="two">강남역</label>
                            </li>
                            <li>
                                <input type="radio" name="vote" />
                                <label for="three">금정역</label>
                            </li>
                        </div>
                        <div class="bottom">
                            <button type="button" class="btn btn-sm btn-success">투표하기</button>
                            <button type="button" class="btn btn-warning btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                투표결과보기
                            </button>
                        </div>
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">투표 결과 확인하기</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <p>
                                            신논현역 <span style="color: red; font-weight: bold;">33%</span>
                                        </p>
                                        <p>강남역 <span style="color: orange; font-weight: bold;">33%</span></p>
                                        <p>금정역 <span style="color: blue; font-weight: bold;">33%</span></p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="comment">
                            <div class="c-profile">
                                <span><img src="resources/img/c.jpg" width="40px" height="40px"></span>
                                <p style="font-size: 15px;">노상처리</p>
                            </div>
                            <div class="c-comment">
                                <span>무적권 금정역!</span>
                            </div>
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
    </div>
</body>

</html>