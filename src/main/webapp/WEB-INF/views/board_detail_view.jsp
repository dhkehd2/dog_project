<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ include file="../top_bottom/top.jsp"%>
<%@ page import="third.project.board_bean.*" %>
<%
	BoardBean board = (BoardBean)request.getAttribute("board");
%>

	<!--start wrapper-->
	<section class="wrapper">
		<section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="page_title">
							<h2>신청상세</h2>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="content portfolio_single">
			<div class="container">
				<div class="row sub_content">
					<div class="col-lg-12 col-md-12 col-sm-12">
					
						<!-- <form id="contactForm" action="" novalidate="novalidate">

                            <div class="row">
                                <div class="form-group">
                                	제목
                               		<div class="col-lg-6 ">
                                        <input type="text" id="BOARD_SUBJECT" name="BOARD_SUBJECT" class="form-control" maxlength="100" value="" placeholder="제목" >
                                    </div>
                                    
                                    신청자 아이디
                                    <div class="col-lg-6 ">
                                        <input type="text" id="BOARD_ID" name="BOARD_ID" class="form-control" maxlength="100" value="" placeholder="신청자 아이디" >
                                    </div>
                                    
                                    이메일
                                    <div class="col-lg-6 ">
                                        <input type="email" id="BOARD_EMAIL" name="BOARD_EMAIL" class="form-control" maxlength="100" value="" placeholder="E-mail" >
                                    </div>
                                    
                                    전화번호
                                    <div class="col-lg-6 ">
                                        <input type="text" id="BOARD_TEL" name="BOARD_TEL" class="form-control" maxlength="100" value="" placeholder="전화번호" >
                                    </div>
                                    
                                    입양지역
                                    <div class="col-lg-6 ">
                                        <input type="text" id="BOARD_ARAE" name="BOARD_ARAE" class="form-control" maxlength="100" value="" placeholder="입양지역" >
                                    </div>
                                    
                                    입양지역
                                    <div class="col-lg-6 ">
                                        <input type="text" id="BOARD_desertionNo" name="BOARD_desertionNo" class="form-control" maxlength="100" value="" placeholder="유기번호" >
                                    </div>
                                </div>
                            </div>
                            
                            보육환경                          
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-12">
                                    
                                        <textarea id="BOARD_HOW" class="form-control" name="BOARD_HOW" rows="10" cols="50" maxlength="5000" placeholder="보육환경">
                                        
                                        </textarea>

                                    </div>
                                </div>
                            </div>
                            
                            신청 이유
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-md-12">
                                       
                                        <textarea id="BOARD_WHY" class="form-control" name="BOARD_WHY" rows="10" cols="50" maxlength="5000" placeholder="신청이유">
                                        
                                        </textarea>

                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-12">
                                    <input type="submit" data-loading-text="Loading..." class="btn btn-default btn-lg" value="수정하기">
                                </div>
                            </div>
						</form> -->
						
				<%-- 	<form action="adoption_req_send">
												
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
					</form> --%>
						
					
						<div class="project_details">
							<div class="widget_title">
								<h4>
									<span><%=board.getBOARD_SUBJECT() %></span>
								</h4>
							</div>
							<ul class="details">
								<li><span>신청아이디 :</span><%=board.getBOARD_ID() %></li>
								<li><span>이메일 :</span> <%=board.getBOARD_EMAIL() %></li>
								<li><span>전화번호 :</span> <%=board.getBOARD_TEL() %></li>
								<li><span>신청시간 :</span> <%=board.getBOARD_DAY() %></li>
								<li><span>신청지역 :</span> <%=board.getBOARD_ARAE() %></li>
								<li><span>유기번호 :</span> <%=board.getBOARD_desertionNo() %></li>
							</ul>
						</div>
						
						<div class="project_description">
							<div class="widget_title">
								<h4>
									<span>보유환경</span>
								</h4>
							</div>

							<p><%=board.getBOARD_HOW()%></p>
							
						</div>
						
						<div class="project_description">
							<div class="widget_title">
								<h4>
									<span>신청이유</span>
								</h4>
							</div>

							<p><%=board.getBOARD_WHY() %></p>
							
						</div>
						
						<a href="board_up?BOARD_NUM=<%=board.getBOARD_NUM() %>" class="btn btn-default btn-lg">수정하러가기</a>
						
						<a href="board_delete?BOARD_NUM=<%=board.getBOARD_NUM() %>" class="btn btn-default btn-lg">신청취소</a>
						
						<a href="my_adoption_list" class="btn btn-default btn-lg">신청 리스트로 이동</a>
						
						<a href="reple_form?BOARD_NUM=<%=board.getBOARD_NUM() %>" class="btn btn-default btn-lg">답변</a>
						
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