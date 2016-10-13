<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<%@ include file="../../top_bottom/top.jsp"%>

<%String str = "aaaa"; 
request.setAttribute("str", str);
%>
list

<br>

<a href="info_up">회원정보수정</a>

<br>

<a href="my_adoption_req_list">내 입양신청내역</a>

<br>

<a href="animal_detail">(이미지클릭시 상세정보)</a>

<br>

<a href="animal_info_insert">동물 정보 DB저장</a>

<br>


<section class="wrapper">
	<section class="page_head">
		<div class="container">
			<!--본 메뉴 아래 무늬영역 -->
		</div>
	</section>

	<section class="content portfolio small-images">
		<div class="container">
			<div class="row sub_content">
				<!-- begin isotope -->
				<div class="col-lg-12 isotope">
					<!-- 카테고리 필터 -->
					<ul id="filter">
						<li data-filter="*" class="selected"><a href="#">All</a></li>
						<li data-filter=".${str}"><a href="#">aaaa</a></li>
						<li data-filter=".개"><a href="#">개</a></li>
						<li data-filter=".branding"><a href="#">Branding</a></li>
					</ul>
					<!-- 카테고리 필터 끝 -->

					<!-- 이미지 리스트 시작 -->
					<div class="mixed-container masonry_wrapper">
						
						<div class="item ${str}">
							<figure class="touching effect-bubba">
								<img src="${vo.popfile}" alt="" class="img-responsive" >

								<div class="option">
									<a href="animal_detail" class="fa fa-link"></a> 
									<a href="animal_detail" class="fa fa-search mfp-image"></a>
								</div>
								
								<figcaption class="item-description">
									<h5>입양신청하기</h5>
									<p>dog</p>
								</figcaption>
								
							</figure>
						</div>
						
						<c:forEach var="vo" items="${animalList}">
						
							<div class="item dog">
							<figure class="touching effect-bubba">
								<img src="${vo.popfile}" alt="" class="img-responsive" >
								
								<div class="option">
									<a href="animal_detail?desertionNo=${vo.desertionNo }" class="fa fa-link"></a> 
									<a href="${vo.popfile}" class="fa fa-search mfp-image"></a>
								</div>
								
								<figcaption class="item-description">
									<h5>입양신청하기</h5>
									<p>dog</p>
								</figcaption>
								
							</figure>
						</div>
						</c:forEach>

					</div>
					<!-- 이미지 리스트 끝 -->
				</div>
				<!--end isotope -->
				
				<!-- 페이징 -->
				<div class="col-sm-12 text-center">
					<ul class="pagination">
						<li><a href="#">&laquo;</a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&raquo;</a></li>
					</ul>
				</div>
				
			</div>
			<!--./row-->
		</div>
		<!--./div-->
	</section>
</section>

<script type="text/javascript" src="./resources/js/jquery-1.10.2.min.js"></script>
<script src="./resources/js/bootstrap.min.js"></script>
<script src="./resources/js/jquery.easing.1.3.js"></script>
<script src="./resources/js/retina-1.1.0.min.js"></script>
<script type="text/javascript" src="./resources/js/jquery.cookie.js"></script> <!-- jQuery cookie -->
<script type="text/javascript" src="./resources/js/styleswitch.js"></script> <!-- Style Colors Switcher -->
<script type="text/javascript" src="./resources/js/jquery.smartmenus.min.js"></script>
<script type="text/javascript" src="./resources/js/jquery.smartmenus.bootstrap.min.js"></script>
<script type="text/javascript" src="./resources/js/jquery.jcarousel.js"></script>
<script type="text/javascript" src="./resources/js/jflickrfeed.js"></script>
<script type="text/javascript" src="./resources/js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="./resources/js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="./resources/js/swipe.js"></script>
<script type="text/javascript" src="./resources/js/jquery-scrolltofixed-min.js"></script>

<script src="./resources/js/main.js"></script>


<%@ include file="../../top_bottom/bottom.jsp"%>
