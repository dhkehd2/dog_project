<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../top_bottom/top.jsp"%>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="no-js" lang="en">

<!--<![endif]-->
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>Edge Responsive Multipurpose Template</title>
<meta name="description" content="">

<!-- CSS FILES -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" type="resources/text/css" href="css/style.css"
	media="screen" data-name="skins">
<link rel="stylesheet" href="resources/css/layout/wide.css"
	data-name="layout">

<link rel="stylesheet" type="text/css" href="resources/css/switcher.css"
	media="screen" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>


	<!--start wrapper-->
	<section class="wrapper">
		<section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<nav id="breadcrumbs">
							<ul>

								<li><a href="index.html">Home</a></li>
								<li>contacts</li>
							</ul>
						</nav>

						<div class="page_title">
							<h2>분양신청</h2>
							<!--<span class="sub_heading">We are here for you 24/7</span>-->
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="content contact">
			<div class="container">
				<p><h2>유기견 분양 신청서 양식 입니다. 빠짐없이 작성해 주세요.</h2></p>
				<div class="row sub_content">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="dividerHeading">
							<span><form id="contactForm" action=""
									novalidate="novalidate">
									<div class="row">
										<div class="form-group">
											<div class="col-md-12">
												제목 <input type="text" id="subject" name="subject"
													class="form-control" maxlength="100"
													data-msg-required="Please enter the subject." value=""
													placeholder="제목을 입력하세요.">
											</div>
										</div>
									</div>

								</form></span>
						</div>


						<div class="alert alert-success hidden alert-dismissable"
							id="contactSuccess">
							<button type="button" class="close" data-dismiss="alert"
								aria-hidden="true">&times;</button>
							<strong>Success!</strong> Your message has been sent to us.
						</div>

						<div class="alert alert-error hidden" id="contactError">
							<button type="button" class="close" data-dismiss="alert"
								aria-hidden="true">&times;</button>
							<strong>Error!</strong> There was an error sending your message.
						</div>

						<form id="contactForm" action="" novalidate="novalidate">
							<div class="row">
								<div class="form-group">
									<div class="col-lg-6 ">
										신청자 이름 <input type="text" id="name" name="name"
											class="form-control" maxlength="100"
											data-msg-required="Please enter your name." value=""
											placeholder="(로그인정보에서 이름 가져오기 el테그)">
									</div>
									<div class="col-lg-6 ">
										e-mail <input type="email" id="email" name="email"
											class="form-control" maxlength="100"
											data-msg-email="Please enter a valid email address."
											data-msg-required="Please enter your email address." value=""
											placeholder="(로그인정보에서 이메일 가져오기 el테그)">
									</div>
									<div class="col-lg-6 ">
										전화번호 <input type="text" id="tel" name="tel"
											class="form-control" maxlength="100"
											data-msg-required="Please enter your tel" value=""
											placeholder="(로그인정보에서 전화번호 가져오기 el테그)">
									</div>
									<div class="col-lg-6 ">
										입양지역 <input type="text" id="tel" name="tel"
											class="form-control" maxlength="100"
											data-msg-required="Please enter your tel" value=""
											placeholder="(DB정보에서 입양지역 가져오기 el테그)">
									</div>
									<div class="col-lg-6 ">
										유기번호 <input type="text" id="tel" name="tel"
											class="form-control" maxlength="100"
											data-msg-required="Please enter your tel" value=""
											placeholder="(유기번호를 넘겨받으며 유기번호 가져오기 el테그)">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<div class="col-md-12">
										보육환경을 설명해주세요. <input type="text" id="subject" name="subject"
											class="form-control" maxlength="100"
											data-msg-required="Please enter the subject." value=""
											placeholder="보육환경">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="form-group">

									<div class="col-md-12">
										입양신청이유
										<textarea id="message" class="form-control" name="message"
											rows="10" cols="50"
											data-msg-required="Please enter your 입양신청이유를 작성해 주세요."
											maxlength="5000" placeholder="입양신청이유"></textarea>

									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<input type="submit" data-loading-text="Loading..."
										class="btn btn-default btn-lg" value="입양신청하기">
								</div>
							</div>
						</form>
					</div>



				</div>
			</div>
		</section>
	</section>
	<!--end wrapper-->





	<script type="text/javascript" src="resources/js/jquery-1.10.2.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.easing.1.3.js"></script>
	<script src="resources/js/retina-1.1.0.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery.cookie.js"></script>
	<!-- jQuery cookie -->
	<script type="text/javascript" src="resources/js/styleswitch.js"></script>
	<!-- Style Colors Switcher -->
	<script type="text/javascript"
		src="resources/js/jquery.smartmenus.min.js"></script>
	<script type="text/javascript"
		src="resources/js/jquery.smartmenus.bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery.jcarousel.js"></script>
	<script type="text/javascript" src="resources/js/jflickrfeed.js"></script>
	<script type="text/javascript"
		src="resources/js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery.isotope.min.js"></script>
	<script type="text/javascript" src="resources/js/swipe.js"></script>
	<script type="text/javascript"
		src="resources/js/jquery-scrolltofixed-min.js"></script>
	<script type="text/javascript" src="resources/js/jquery.validate.js"></script>
	<script type="text/javascript" src="resources/js/view.contact.js"></script>
	<script type="text/javascript" src="resources/js/jquery.gmap.js"></script>

	<script src="js/main.js"></script>

	<!-- Start Style Switcher -->
	<div class="switcher"></div>
	<!-- End Style Switcher -->
</body>
</html>
<%@ include file="../../top_bottom/bottom.jsp"%>
