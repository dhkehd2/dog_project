<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../top_bottom/top.jsp"%>

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
					
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="middle">
							<img src="${animalInfo.popfile}" alt="">
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

						<p>${animalInfo.noticeComment}</p>

					</div>
				</div>
				
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="widget_title">
						<h4>
							<span>유기동물 세부사항</span>
						</h4>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6">
						
						<div class="project_details">
							
							<tr>
								<td><ul class="details">
										<li><span>유기번호 :</span>${animalInfo.desertionNo}</li>
										<li><span>접수일 :</span>${animalInfo.happenDt}</li>
										<li><span>발견장소 :</span>${animalInfo.happenPlace}</li>
										<li><span>품종 :</span>${animalInfo.kindCd}</li>
										<li><span>색상 :</span>${animalInfo.colorCd}</li>
										<li><span>나이 :</span>${animalInfo.age}</li>
										<li><span>체중 :</span>${animalInfo.weight}</li>
										<li><span>공고번호 :</span>${animalInfo.noticeNo}</li>
										<li><span>공고시작일 :</span>${animalInfo.noticeSdt}</li>
										<li><span>공고종료일 :</span>${animalInfo.noticeEdt}</li>
	
								</ul></td>
								
							</tr>
						</div>
					</div>
					
					<div class="col-lg-6 col-md-6 col-sm-6">
						<div class="project_details">
							<tr>
								<td><ul class="details">
										<li><span>상태 :</span>${animalInfo.processState}</li>
										<li><span>성별 :</span>${animalInfo.sexCd}</li>
										<li><span>중성화여부 :</span>${animalInfo.neuterYn}</li>
										<li><span>특징 :</span>${animalInfo.specialMark}</li>
										<li><span>보호소이름 :</span>${animalInfo.careNm}</li>
										<li><span>보호소전화번호 :</span>${animalInfo.careTel}</li>
										<li><span>보호장소 :</span>${animalInfo.careAddr}</li>
										<li><span>관할기관 :</span>${animalInfo.orgNm}</li>
										<li><span>담당자 :</span>${animalInfo.chargeNm}</li>
										<li><span>담당자연락처 :</span>${animalInfo.officetel}</li></td>
								</ul>
							</tr>
						</div>
					
					</div>
				</div>
				<div class="col-lg-12 col-md-12 col-xs-12">
					
						<!-- Indicates a successful or positive action -->
						<button class="btn btn-success btn-lg btn-block" type="button"
							onclick="location='adoption_req_form?id=${mem_id}&num=${animalInfo.desertionNo}'">
							<i class="fa fa-check-circle"></i> 입양신청 하기
						</button>
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
<%@ include file="../top_bottom/bottom.jsp"%>