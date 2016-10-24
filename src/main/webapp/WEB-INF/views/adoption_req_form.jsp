<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../top_bottom/top.jsp"%>

<body>


	<!--start wrapper-->
	<section class="wrapper">
		<section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="page_title">
							<h2>입양신청</h2>
							<!--<span class="sub_heading">We are here for you 24/7</span>-->
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="content contact">
			<div class="container">
				<p><h2>유기견 입양 신청서 양식 입니다. 빠짐없이 작성해 주세요.</h2></p>
				<div class="row sub_content">
					<div class="col-lg-12 col-md-12 col-sm-12">
						

					<%-- <form id="contactForm" action="adoption_req_send" novalidate="novalidate">

                            <div class="row">
                                <div class="form-group">
                                	<!-- 제목 -->
                               		<div class="col-lg-6 ">
                                        <input type="text" id="BOARD_SUBJECT" name="BOARD_SUBJECT" class="form-control" maxlength="100" value="" placeholder="제목" >
                                    </div>
                                    
                                    <!-- 신청자 아이디 -->
                                    <div class="col-lg-6 ">
                                        <input type="text" id="BOARD_ID" name="BOARD_ID" class="form-control" maxlength="100" value="${now_id}" placeholder="신청자 아이디" >
                                    </div>
                                    
                                    <!-- 이메일 -->
                                    <div class="col-lg-6 ">
                                        <input type="email" id="BOARD_EMAIL" name="BOARD_EMAIL" class="form-control" maxlength="100" value="" placeholder="E-mail" >
                                    </div>
                                    
                                    <!-- 전화번호 -->
                                    <div class="col-lg-6 ">
                                        <input type="text" id="BOARD_TEL" name="BOARD_TEL" class="form-control" maxlength="100" value="" placeholder="전화번호" >
                                    </div>
                                    
                                    <!-- 입양지역 -->
                                    <div class="col-lg-6 ">
                                        <input type="text" id="BOARD_ARAE" name="BOARD_ARAE" class="form-control" maxlength="100" value="" placeholder="입양지역" >
                                    </div>
                                    
                                    <!-- 유기번호 -->
                                    <div class="col-lg-6 ">
                                        <input type="text" id="BOARD_desertionNo" name="BOARD_desertionNo" class="form-control" maxlength="100" value="${num}" placeholder="유기번호" >
                                    </div>
                                    <!-- 보육 환경 -->   
                            <div class="col-lg-6">
								<div class="widget_title">
									<h4>
										<span>보육 환경</span>
									</h4>
								</div>
							</div>	                  
                            <div class="col-lg-6">
                               <textarea id="BOARD_HOW" class="form-control" name="BOARD_HOW" rows="10" cols="50" maxlength="5000" placeholder="보육환경">
                                        
                               </textarea>
    						</div>
                            
                            <!-- 신청 이유 -->
                            <div class="col-lg-6">
								<div class="widget_title">
									<h4>
										<span>신청 이유</span>
									</h4>
								</div>
							</div>	
                            <div class="col-lg-6">
                                <textarea id="BOARD_WHY" class="form-control" name="BOARD_WHY" rows="10" cols="50" maxlength="5000" placeholder="신청이유">
                                        
                                </textarea>
							</div>
                            
                            <div class="row">
                                <div class="col-md-12">
                                    <input type="submit" class="btn btn-default btn-lg" value="신청하기">
                                </div>
                            </div>
                                    
                          </div>
                        </div>
                      </form> --%>
					
					<form action="adoption_req_send" >
											
						제목 <input type="text" id="BOARD_SUBJECT" name="BOARD_SUBJECT" >
						<br>
						신청자 아이디 <input type="text" id="BOARD_ID" name="BOARD_ID" value="${now_id}">
						<br>
						e-mail <input type="email" id="BOARD_EMAIL" name="BOARD_EMAIL">
						<br>
						전화번호 <input type="text" id="BOARD_TEL" name="BOARD_TEL">
						<br>
						입양지역 <input type="text" id="BOARD_ARAE" name="BOARD_ARAE">
						<br>
						유기번호 <input type="text" id="BOARD_desertionNo" name="BOARD_desertionNo" value="${num}">
						<br>
						보육환경을 설명해주세요. <textarea id="BOARD_HOW" class="form-control" name="BOARD_HOW"></textarea>
						
						<br>
						입양신청이유<textarea id="BOARD_WHY" class="form-control" name="BOARD_WHY"></textarea>
						<br>
						<input type="submit" value="신청하기">
						
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
<%@ include file="../top_bottom/bottom.jsp"%>
