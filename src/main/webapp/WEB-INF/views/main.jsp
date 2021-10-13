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

    ul {
        list-style: none;
        padding-left: 0;
    }

    li {
        list-style: none;

    }

    a {
        text-decoration: none;
        color: black;
    }
    
    a:hover{
    	font-weight: bold;
    	color: purple;
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

    .main {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(500px, 1fr));
        place-self: start center;
        gap: 40px;
        padding: 80px 25px 80px 25px;

    }


    .main-l {
        display: grid;
        grid-template-rows: auto-fit;
        place-self: start center;
        align-self: top;
        margin-top: 80px;

    }

    .m-search {
        display: grid;
        place-self: start center;
        align-self: center;
    }

    .m-input {
        border: 0;
        outline: 0;
        width: 300px;
        margin-top: 15px;
        font-size: 18px;
        margin-left: 10px;
        color: purple;
    }

    .m-covid {
        display: grid;
        place-self: start center;
        padding: 100px;

    }

    .m-covid>table {

        border: solid 1px;
        width: 500px;
        height: 100px;
        font-size: 20px;
        background-color: purple;
        color: white;
        text-align: center;
    }

    .m-carousel {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(100%, 1fr));
        place-self: start center;
        padding: 10px;
        margin-top: 40px;
       
    }

    .main-r {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(290px, 1fr));
        place-self: start center;
        align-self: center;
        width: 100%;
        column-gap: 10px;

    }

    .m-board {
        width: 100%;
        margin-bottom: 15px;
        background-color: #f3f3f3;
    }

    .m-board>li>a:hover {
        color: purple;
    }

    .m-board>span>a:hover {
        color: purple;
    }

    .footer {
        display: grid;
        grid-template-columns: repeat(2, 180px);
        place-self: start;
        align-self: center;

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
            <div class="main-l">
                <div class="m-search" style="border: 5px solid purple; border-radius: 25px; width: 380px; height: 50px; padding-left: 10px;">
                    <form action="main.do" method="get">
                        <button type="submit"><img src="resources/img/mag.png" width="20px" height="20px"></button><input class="m-input" type="text" name="search" placeholder="관심있는 정보를 검색해보세요!" />
                    </form>
                </div>
                <div class="m-covid">
                    <span style="font-size: 25px; font-weight: bold; text-align: center; padding-bottom: 10px;">우리동네 코로나정보</span>
                    <table>
                        <thead>
                            <tr>
                                <th>신규</th>
                                <th>완치자</th>
                                <th>치료중</th>
                                <th>사망</th>
                                <th>자가격리</th>
                            </tr>
                            <tr>
                                <th>32</th>
                                <th>2,705</th>
                                <th>738</th>
                                <th>24</th>
                                <th>965</th>
                            </tr>
                        </thead>
                    </table>
                </div>
                <div class="m-carousel">
                    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img style="display: inline-block;" src="${pageContext.request.contextPath}/resources/img/c-galbi.jpg" width="350px" height="250px">
                                <span style="display: inline-block; vertical-align: middle;">
                                    <h4><b>우리동네 갈비 맛집은?</b></h4>
                                    <br /><br /><br />
                                    <p style="text-align: right;"><b style="font-size: 20px;">모범갈빗살</b><br />신논현역 6번출구 100m<br /><br />
                                        갈빗살 100g 21,000원~<br />
                                        갈매기살 150g 17,000원~</p>
                                </span>
                            </div>
                            <div class="carousel-item">
                                <img src="${pageContext.request.contextPath}/resources/img/c-ramen.jpg" width="350px" height="250px">
                                <span style="display: inline-block; vertical-align: middle;">
                                    <h4><b>우리동네 라멘 맛집은?</b></h4>
                                    <br /><br /><br />
                                    <p style="text-align: right;"><b style="font-size: 20px;">유메노라멘</b><br />신논현역 2번출구 100m<br /><br />
                                        돈코츠라멘 9,000원<br />
                                        가츠동 8,000원</p>
                                </span>
                            </div>
                            <div class="carousel-item">
                                <img src="${pageContext.request.contextPath}/resources/img/c-guk.jpg" width="350px" height="250px">
                                <span style="display: inline-block; vertical-align: middle;">
                                    <h4><b>우리동네 국밥 맛집은?</b></h4>
                                    <br /><br /><br />
                                    <p style="text-align: right;"><b style="font-size: 20px;">아바이순대국</b><br />신논현역 7번출구 100m<br /><br />
                                        돼지국밥 9,000원<br />
                                        순대국밥 9,500원</p>
                                </span>
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                            <span class="visually-hidden carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                            <span class="visually-hidden carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="main-r">
                <div class="m-board">
                    <span style="font-weight: bold; font-size: 17px; padding-bottom: 15px;"><a href="#">전체 베스트 Top10</a></span>
                    <ul>
                        <li><a href="#">1. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">2. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">3. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">4. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">5. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">6. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">7. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">8. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">9. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">10. 사실..있잖아... &nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    </ul>
                </div>
                <div class="m-board">
                    <span style="font-weight: bold; font-size: 17px; padding-bottom: 15px;"><a href="#">전체 베스트 Top10</a></span>
                    <ul>
                        <li><a href="#">1. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">2. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">3. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">4. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">5. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">6. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">7. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">8. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">9. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">10. 사실..있잖아... &nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    </ul>
                </div>
                <div class="m-board">
                    <span style="font-weight: bold; font-size: 17px; padding-bottom: 15px;"><a href="#">전체 베스트 Top10</a></span>
                    <li><a href="#">1. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li><a href="#">2. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li><a href="#">3. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li><a href="#">4. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li><a href="#">5. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li><a href="#">6. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li><a href="#">7. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li><a href="#">8. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li><a href="#">9. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li><a href="#">10. 사실..있잖아... &nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                </div>
                <div class="m-board">
                    <span style="font-weight: bold; font-size: 17px; padding-bottom: 15px;"><a href="#">전체 베스트 Top10</a></span>
                    <ul>
                        <li><a href="#">1. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">2. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">3. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">4. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">5. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">6. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">7. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">8. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">9. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">10. 사실..있잖아... &nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    </ul>
                </div>
                <div class="m-board">
                    <span style="font-weight: bold; font-size: 17px; padding-bottom: 15px;"><a href="#">전체 베스트 Top10</a></span>
                    <li><a href="#">1. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li><a href="#">2. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li><a href="#">3. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li><a href="#">4. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li><a href="#">5. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li><a href="#">6. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li><a href="#">7. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li><a href="#">8. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li><a href="#">9. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li><a href="#">10. 사실..있잖아... &nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                </div>
                <div class="m-board">
                    <span style="font-weight: bold; font-size: 17px; padding-bottom: 15px;"><a href="#">전체 베스트 Top10</a></span>
                    <ul>
                        <li><a href="#">1. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">2. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">3. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">4. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">5. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">6. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">7. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">8. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">9. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">10. 사실..있잖아... &nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    </ul>
                </div>
                <div class="m-board">
                    <span style="font-weight: bold; font-size: 17px; padding-bottom: 15px;"><a href="#">전체 베스트 Top10</a></span>
                    <ul>
                        <li><a href="#">1. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">2. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">3. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">4. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">5. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">6. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">7. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">8. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">9. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">10. 사실..있잖아... &nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    </ul>
                </div>
                <div class="m-board">
                    <span style="font-weight: bold; font-size: 17px; padding-bottom: 15px;"><a href="#">전체 베스트 Top10</a></span>
                    <ul>
                        <li><a href="#">1. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">2. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">3. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">4. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">5. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">6. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">7. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">8. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">9. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                        <li><a href="#">10. 사실..있잖아... &nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <hr />
        <div class="footer">
            <div class="logo">
                <img src="${pageContext.request.contextPath}/resources/img/logo.png" width="150px;" height="150px;">
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