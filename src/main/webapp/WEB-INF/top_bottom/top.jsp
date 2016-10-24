<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

    
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>유기동물 리스트</title>
    <meta name="description" content="">

    <!-- CSS FILES -->
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="./resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="./resources/css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="./resources/css/layout/wide.css" data-name="layout">
    <link rel="stylesheet" type="text/css" href="./resources/css/switcher.css" media="screen" />
</head>
<body>
<% 
//now login ID
String now_id1 = (String)session.getAttribute("mem_id"); 
%>
<!-- 상단매뉴 -->
<header id="header">
    <div class="header-top">
        <div class="container">
            <div class="row">
                <div class="hidden-xs col-lg-7 col-sm-5 top-info">
                    <a href="logout_process"><span style="color: white;"><i class="fa fa-sign-out"><strong> logout</strong></i></span></a>
                    
                    

                </div>
                
                <!-- 페이스북, 트위터, 구글 등 사이트 이동 -->
                <div class="col-lg-5 col-sm-7 top-info clearfix">
                    <ul>
                        <li><a class="my-facebook" href=""><i class="fa fa-facebook"></i></a></li>
                        <li><a class="my-tweet" href=""><i class="fa fa-twitter"></i></a></li>
                        <li><a class="my-pint" href=""><i class="fa fa-pinterest"></i></a></li>
                        <li><a class="my-rss" href=""><i class="fa fa-rss"></i></a></li>
                        <li><a class="my-skype" href=""><i class="fa fa-skype"></i></a></li>
                        <li><a class="my-google" href=""><i class="fa fa-google-plus"></i></a></li>
                        <li>
                            <form class="search-bar">
                                <label for="search" class="search-label">
                                    <button class="search-button"><i class="fa fa-search"></i></button><!-- Fix the break-row-bug
                                    --><input type="text" id="search" class="search-input" />
                                </label>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    
    <!-- 본 메뉴들 (홈, 서비스) -->
    <div id="menu-bar">
        <div class="container">
            <div class="row">
                <!-- 아래이미지 누르면 홈으로 이동 -->
                 <div  class="col-lg-3 col-sm-3 ">
                    <div id="logo">
                    	
                        <h1><a href="index.jsp"><span style="color: white;">3 조</span></a></h1>
                    </div>
                </div>
                <!-- Navigation ================================================== -->
                <div class="col-lg-9 col-sm-9 navbar navbar-default navbar-static-top container" role="navigation">
                    <!--  <div class="container">-->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                           
                        </button>
                    </div>
                    
                    <!-- 홈화면 이동 -->
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                        	<!-- data-hover 속성도 같이 바꾸어 주어야함 -->
          					<li ><a href="#"><span class="data-hover" data-hover="myPage">myPage</span></a>
                                <ul class="dropdown-menu">
                                    <li >
                                        <a href="info_up">회원정보 수정</a>
                                    </li>
                                    <li>
                                        <a href="my_adoption_list?now_id=<%= now_id1%>">입양신청 리스트</a>
                                    </li>
                                   
                                    </ul>
                            </li>

                            <li><a href="list"><span class="data-hover" data-hover="animals">animals</span></a></li>

                            <li><a href="faq"><span class="data-hover" data-hover="faq">faq</span></a></li>
                                                         
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!--본 메뉴 끝-->