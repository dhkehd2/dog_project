<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../top_bottom/top.jsp"%>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Portfolio Single - Edge Responsive Multipurpose Template</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />

<!-- CSS FILES -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" type="text/css" href="resources/css/style.css"
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
								<li>Portfolio</li>
							</ul>
						</nav>

						<div class="page_title">
							<h2>Portfolio single</h2>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="content portfolio_single">
			<div class="container">
				<div class="row sub_content">
					<tr></tr>
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="middle">
							<img src="resources/images/portfolio/portfolio_slider1.png" alt="">
							<!-- src = 사진주소를 가져오는 el테그 입력 -->
							<!-- <div class="porDetCarousel">
								<div class="carousel-content">
									<img class="carousel-item" src="resources/images/portfolio/portfolio_slider1.png" alt="">
									<img class="carousel-item" src="resources/images/portfolio/portfolio_slider2.png" alt="">
									<img class="carousel-item" src="resources/images/portfolio/portfolio_slider3.png" alt="">
								</div>
							</div> -->
						</div>
					</div>
					
				</div>
				
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="project_description">
						<div class="widget_title">
							<h4>
								<span>특이사항</span>
							</h4>
						</div>

						<p>(noticeComment를 가져오는 el테그)</p>

					</div>
				</div>
				
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="widget_title">
						<h4>
							<span>유기견 세부사항</span>
						</h4>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6">
						
						<div class="project_details">
							
							<tr>
								<td><ul class="details">
										<li><span>유기번호 :</span>(desertionNo를 가져오는 el테그)</li>
										<li><span>접수일 :</span>(happenDt를 가져오는 el테그)</li>
										<li><span>발견장소 :</span>(happenPlace를 가져오는 el테그)</li>
										<li><span>품종 :</span>(kindCd를 가져오는 el테그)</li>
										<li><span>색상 :</span>(colorCd를 가져오는 el테그)</li>
										<li><span>나이 :</span>(age를 가져오는 el테그)</li>
										<li><span>체중 :</span>(weight를 가져오는 el테그)</li>
										<li><span>공고번호 :</span>(noticeNo를 가져오는 el테그)</li>
										<li><span>공고시작일 :</span>(noticeSdt를 가져오는 el테그)</li>
										<li><span>공고종료일 :</span>(noticeEdt를 가져오는 el테그)</li>
	
									</ul></td>
								<td>
							</tr>
						</div>
					</div>
					
					<div class="col-lg-6 col-md-6 col-sm-6">
						<div class="project_details">
							<tr>
								<td><ul class="details">
										<li><span>상태 :</span>(processState를 가져오는 el테그)</li>
										<li><span>성별 :</span>(sexCd를 가져오는 el테그)</li>
										<li><span>중성화여부 :</span>(neuterYn 를 가져오는 el테그)</li>
										<li><span>특징 :</span>(specialMark를 가져오는 el테그)</li>
										<li><span>보호소이름 :</span>(careNm를 가져오는 el테그)</li>
										<li><span>보호소전화번호 :</span>(careTel를 가져오는 el테그)</li>
										<li><span>보호장소 :</span>(careAddr를 가져오는 el테그)</li>
										<li><span>보호장소 :</span>(orgNm를 가져오는 el테그)</li>
										<li><span>담당자 :</span>(chargeNm를 가져오는 el테그)</li>
										<li><span>담당자연락처 :</span>(officetel를 가져오는 el테그)</li></td>
								</ul>
							</tr>
						</div>
					
					</div>
				</div>
				<div class="col-lg-12 col-md-12 col-xs-12">
					
						<!-- Indicates a successful or positive action -->
						<button class="btn btn-success btn-lg btn-block" type="button"
							onclick="location='adoption_req_form'">
							<i class="fa fa-check-circle"></i> 입양신청 하기
						</button>
				</div>

			</div>
		</section>
	</section>
	<!--end wrapper-->



	<section class="footer_bottom">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 ">
					<p class="copyright">
						&copy; Copyright 2015 Edge | Powered by <a
							href="http://www.jqueryrain.com/">jQuery Rain</a>
					</p>
				</div>
				<div class="col-sm-6 ">
					<div class="footer_social">
						<ul class="footbot_social">
							<li><a class="fb" href="#." data-placement="top"
								data-toggle="tooltip" title="Facbook"><i
									class="fa fa-facebook"></i></a></li>
							<li><a class="twtr" href="#." data-placement="top"
								data-toggle="tooltip" title="Twitter"><i
									class="fa fa-twitter"></i></a></li>
							<li><a class="dribbble" href="#." data-placement="top"
								data-toggle="tooltip" title="Dribbble"><i
									class="fa fa-dribbble"></i></a></li>
							<li><a class="skype" href="#." data-placement="top"
								data-toggle="tooltip" title="Skype"><i class="fa fa-skype"></i></a></li>
							<li><a class="rss" href="#." data-placement="top"
								data-toggle="tooltip" title="RSS"><i class="fa fa-rss"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>

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


	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$.fn.carousel = function(op) {
								var op, ui = {};
								op = $.extend({
									speed : 500,
									autoChange : false,
									interval : 5000
								}, op);
								ui.carousel = this;
								ui.items = ui.carousel.find('.carousel-item');
								ui.itemsLen = ui.items.length;

								// CREATE CONTROLS
								ui.ctrl = $('<div />', {
									'class' : 'carousel-control'
								});
								ui.prev = $('<div />', {
									'class' : 'carousel-prev'
								});
								ui.next = $('<div />', {
									'class' : 'carousel-next'
								});
								ui.pagList = $('<ul />', {
									'class' : 'carousel-pagination'
								});
								ui.pagItem = $('<li></li>');
								for (var i = 0; i < ui.itemsLen; i++) {
									ui.pagItem.clone().appendTo(ui.pagList);
								}
								ui.prev.appendTo(ui.ctrl);
								ui.next.appendTo(ui.ctrl);
								ui.pagList.appendTo(ui.ctrl);
								ui.ctrl.appendTo(ui.carousel);
								ui.carousel.find('.carousel-pagination li').eq(
										0).addClass('active');
								ui.carousel.find('.carousel-item').each(
										function() {
											$(this).hide();
										});
								ui.carousel.find('.carousel-item').eq(0).show()
										.addClass('active');

								// CHANGE ITEM
								var changeImage = function(direction, context) {
									var current = ui.carousel
											.find('.carousel-item.active');

									if (direction == 'index') {
										if (current.index() === context.index())
											return false;

										context.addClass('active').siblings()
												.removeClass('active');

										ui.items.eq(context.index()).addClass(
												'current').fadeIn(
												op.speed,
												function() {
													current.removeClass(
															'active').hide();
													$(this).addClass('active')
															.removeClass(
																	'current');
												});
									}

									if (direction == 'prev') {
										if (current.index() == 0) {
											ui.carousel
													.find('.carousel-item:last')
													.addClass('current')
													.fadeIn(
															op.speed,
															function() {
																current
																		.removeClass(
																				'active')
																		.hide();
																$(this)
																		.addClass(
																				'active')
																		.removeClass(
																				'current');
															});
										} else {
											current
													.prev()
													.addClass('current')
													.fadeIn(
															op.speed,
															function() {
																current
																		.removeClass(
																				'active')
																		.hide();
																$(this)
																		.addClass(
																				'active')
																		.removeClass(
																				'current');
															});
										}
									}

									if (direction == undefined) {
										if (current.index() == ui.itemsLen - 1) {
											ui.carousel
													.find(
															'.carousel-item:first')
													.addClass('current')
													.fadeIn(
															300,
															function() {
																current
																		.removeClass(
																				'active')
																		.hide();
																$(this)
																		.addClass(
																				'active')
																		.removeClass(
																				'current');
															});
										} else {
											current
													.next()
													.addClass('current')
													.fadeIn(
															300,
															function() {
																current
																		.removeClass(
																				'active')
																		.hide();
																$(this)
																		.addClass(
																				'active')
																		.removeClass(
																				'current');
															});
										}
									}
									ui.carousel
											.find('.carousel-pagination li')
											.eq(
													ui.carousel
															.find(
																	'.carousel-item.current')
															.index()).addClass(
													'active').siblings()
											.removeClass('active');
								};

								ui.carousel.on('click', 'li', function() {
									changeImage('index', $(this));
								}).on('click', '.carousel-prev', function() {
									changeImage('prev');
								}).on('click', '.carousel-next', function() {
									changeImage();
								});

								// AUTO CHANGE
								if (op.autoChange) {
									var changeInterval = setInterval(
											changeImage, op.interval);
									ui.carousel.on('mouseenter', function() {
										clearInterval(changeInterval);
									}).on(
											'mouseleave',
											function() {
												changeInterval = setInterval(
														changeImage,
														op.interval);
											});
								}
								return this;
							};

							$('.porDetCarousel').each(function() {
								$(this).carousel({
									autoChange : true
								});
							});
						});
	</script>
	<script src="resources/js/main.js"></script>

	<!-- Start Style Switcher -->
	<div class="switcher"></div>
	<!-- End Style Switcher -->
</body>
</html>
<%@ include file="../../top_bottom/bottom.jsp"%>
