<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="third.project.board_bean.*" %>
<%
	BoardBean board = (BoardBean)request.getAttribute("board");
%>
<%@ include file="../top_bottom/top.jsp"%>

					
					
<!--start wrapper-->
	<section class="wrapper">
		<section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="page_title">
							<h2>신청수정</h2>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="content portfolio_single">
			<div class="container">
				<div class="row sub_content">
					<div class="col-lg-12 col-md-12 col-sm-12">
						
						
						<form action="adoption_req_up">
						
						<input type="hidden" id="BOARD_NUM" name="BOARD_NUM" value="${board.BOARD_NUM }">
												
						제목 <input class="form-control" type="text" id="BOARD_SUBJECT" name="BOARD_SUBJECT" value="${board.BOARD_SUBJECT}">
						<br>
						신청자 아이디 <input class="form-control" type="text" id="BOARD_ID" name="BOARD_ID" value="${board.BOARD_ID}">
						<br>
						e-mail <input class="form-control" type="email" id="BOARD_EMAIL" name="BOARD_EMAIL" value="${board.BOARD_EMAIL}">
						<br>
						전화번호 <input class="form-control" type="text" id="BOARD_TEL" name="BOARD_TEL" value="${board.BOARD_TEL}">
						<br>
						입양지역 <input class="form-control" type="text" id="BOARD_ARAE" name="BOARD_ARAE" value="${board.BOARD_ARAE}">
						<br>
						유기번호 <input class="form-control" type="text" id="BOARD_desertionNo" name="BOARD_desertionNo" value="${board.BOARD_desertionNo}">
						<br>
						보육환경을 설명해주세요. <textarea class="form-control" id="BOARD_HOW" class="form-control" name="BOARD_HOW">${board.BOARD_HOW}</textarea>
						
						<br>
						입양신청이유<textarea class="form-control" id="BOARD_WHY" class="form-control" name="BOARD_WHY">${board.BOARD_WHY}</textarea>
						<br>
						<input class="btn btn-default btn-lg" type="submit" value="수정하기">
						
						</form>
						
						<a href="my_adoption_list" class="btn btn-default btn-lg">취소하기</a>
						
					</div>
				</div>
			</div>					
		</section>
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