<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no, target-density=medium-dpi">
    <title>Udon</title>
    <link rel="icon" href="assets/img/favicon-16x16.png" sizes="16x16">
    <style type="text/css">
    @font-face {
        font-family: 'GmarketSansMedium';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    }

    * {
        font-family: 'GmarketSansMedium';
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


    .m-input {
        border: 0;
        outline: 0;
        width: 300px;
        margin-top: 15px;
        font-size: 18px;
        margin-left: 10px;
        color: purple;
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
        grid-template-columns: repeat(auto-fill, minmax(500px, 1fr));
        place-self: start center;
        gap: 40px;
        padding: 100px 50px 50px 50px;

    }


    .main-l {
        display: grid;
        grid-template-rows: auto-fit;
        place-self: start center;
        align-self: center;

    }

    .m-search {
        display: grid;
        place-self: start center;
        align-self: center;
    }

    .m-covid {
        display: grid;
        place-self: start center;
        padding: 50px;

    }

    .m-covid>table {

        border: solid 1px;
        width: 500px;
        height: 100px;
        font-size: 20px;
        background-color: purple;
        color: white;
    }

    .main-r {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(290px, 1fr));
        place-self: start center;
        align-self: center;
        width: 100%;


    }

    .m-board {
        width: 100%;
        height: 100%;
        padding-bottom: 25px;

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
                <a href="main.html" style="font-size: 40px;"><b>Udon</b></a>
            </div>
            <div class="h-menu">
                <span><a href="#" style="font-size: 20px;">my우동클</a></span>
                <span><a href="#" style="font-size: 20px;">우동클모집</a></span>
                <span><a href="#" style="font-size: 20px;">우동커뮤니티</a></span>
            </div>
            <div class="h-login">
                <span><a href="#">Login</a></span>
                <span><a href="#">내정보</a></span>
            </div>
        </div>
        <div class="main">
            <div class="main-l">
                <div class="m-search" style="border: 1px solid; border-radius: 25px; width: 380px; height: 50px; padding-left: 10px;">
                    <form action="main.html" method="get">
                        <button type="submit"><img src=".assets/img/mag.png" width="20px" height="20px"></button><input class="m-input" type="text" name="search" placeholder="관심있는 정보를 검색해보세요!" />
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
            </div>
            <div class="main-r">
                <div class="m-board">
                    <span style="font-weight: bold; font-size: 17px; padding-bottom: 15px;">전체 베스트 Top10</span>
                    <li><a href="#">1. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li><a href="#">2. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li><a href="#">3. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</a></li>
                    <li>4. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>5. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>6. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>7. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>8. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>9. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>10. 사실..있잖아... &nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                </div>
                <div class="m-board">
                    <span style="font-weight: bold; font-size: 17px; padding-bottom: 15px;">우동클모집 Top10</span>
                    <li>1. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>2. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>3. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>4. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>5. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>6. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>7. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>8. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>9. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>10. 사실..있잖아... &nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                </div>
                <div class="m-board">
                    <span style="font-weight: bold; font-size: 17px; padding-bottom: 15px;">주식/투자 Top10</span>
                    <li>1. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>2. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>3. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>4. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>5. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>6. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>7. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>8. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>9. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>10. 사실..있잖아... &nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                </div>
                <div class="m-board">
                    <span style="font-weight: bold; font-size: 17px; padding-bottom: 15px;">모이면싸다 Top10</span>
                    <li>1. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>2. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>3. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>4. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>5. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>6. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>7. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>8. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>9. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>10. 사실..있잖아... &nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                </div>
                <div class="m-board">
                    <span style="font-weight: bold; font-size: 17px; padding-bottom: 15px;">육아 Top10</span>
                    <li>1. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>2. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>3. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>4. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>5. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>6. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>7. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>8. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>9. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>10. 사실..있잖아... &nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                </div>
                <div class="m-board">
                    <span style="font-weight: bold; font-size: 17px; padding-bottom: 15px;">연애상담 Top10</span>
                    <li>1. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>2. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>3. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>4. 군대 이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>5. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>6. 대박사건있었음 &nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>7. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>8. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>9. 사실..있잖아... &nbsp;&nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
                    <li>10. 사실..있잖아... &nbsp;&nbsp;&nbsp;댓글(12) 좋아요(10)</li>
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
    </div>
</body>

</html>