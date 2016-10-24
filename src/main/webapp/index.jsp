<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="WEB-INF/top_bottom/login_top.jsp"%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->

<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Edge Responsive Multipurpose Template</title>
    <meta name="description" content="">

    <!-- CSS FILES -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/flexslider.css"/>
    <link rel="stylesheet" type="text/css" href="resources/css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="resources/css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" href="resources/css/animate.css"/>

    <link rel="stylesheet" type="text/css" href="resources/css/switcher.css" media="screen" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

    <section class="wrapper">
	<div>
		<div class="row">
			<div class="flexslider top_slider">
                <ul class="slides">
                    <li class="slide1">
                        <div class="container">
                            <div class="flex_caption1">
                                <p class="slide-heading FromTop">유기견 분양사이트에 오신 것을 환영합니다! </p><br/>

                                <p class="sub-line FromBottom">저희는 유기동물을 아껴주고 잘 보살필 책임있는 입양자를 기다리고 있습니다.  </p><br/>


                                <a href="login" class="slider-read FromLeft">로그인 하러가기</a>
                            </div>

                        </div>
                    </li>
                </ul>
            </div>
		</div>
	</div>
</section>
<!--End Header-->



<script type="text/javascript" src="resources/js/jquery-1.10.2.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/jquery.easing.1.3.js"></script>
<script src="resources/js/retina-1.1.0.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.cookie.js"></script> <!-- jQuery cookie -->
<script type="text/javascript" src="resources/js/styleswitch.js"></script> <!-- Style Colors Switcher -->
<!--
<script src="js/jquery.fractionslider.js" type="text/javascript" charset="utf-8"></script>
-->
<script type="text/javascript" src="resources/js/jquery.smartmenus.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.smartmenus.bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.jcarousel.js"></script>
<script type="text/javascript" src="resources/js/jflickrfeed.js"></script>
<script type="text/javascript" src="resources/js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="resources/js/swipe.js"></script>
<script type="text/javascript" src="resources/js/jquery-scrolltofixed-min.js"></script>
<script type="text/javascript" src="resources/js/jquery-scrolltofixed-min.js"></script>
<script type="text/javascript" src="resources/js/jquery.flexslider-min.js"></script>

<script src="resources/js/main.js"></script>

<!-- Start Style Switcher -->
<div class="switcher"></div>
<!-- End Style Switcher -->
    <script>
        $('.flexslider.top_slider').flexslider({
            animation: "fade",
            controlNav: false,
            directionNav: true,
            prevText: "&larr;",
            nextText: "&rarr;"
        });
    </script>

        

</body>
</html>
<%@ include file="WEB-INF/top_bottom/bottom.jsp"%>