<%@page
	import="org.springframework.web.bind.annotation.SessionAttributes"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	int listcount = ((Integer) request.getAttribute("listcount")).intValue(); //동물 수
	int nowpage = ((Integer) request.getAttribute("nowpage")).intValue();//현재페이지 수
	int maxpage = ((Integer) request.getAttribute("maxpage")).intValue();//최대 페이지 수
	int startpage = ((Integer) request.getAttribute("startpage")).intValue();//현재 페이지에 표시할 첫 페이지 수
	int endpage = ((Integer) request.getAttribute("endpage")).intValue(); //현재 페이지에 표시할 끝 페이지 수
	String now_kind = (String) request.getAttribute("now_kind");//현재 페이지의 견종
	String sido_code = (String) request.getAttribute("sido_code");//현재 페이지의 시도 코드
	String sido_name = (String) request.getAttribute("sido_name");//현재 페이지의 시도 이름
	String gungu_name = (String) request.getAttribute("gungu_name");//현재 페이지의 시군구 이름
	

	String mem_checkId = (String)session.getAttribute("mem_checkId");
	   if(mem_checkId != null ){
	      //아이디저장 체크시 쿠키에 저장
	      if(mem_checkId.equals("on")){
	         
	    	 String id = (String)session.getAttribute("mem_id");
	         Cookie cookie = new Cookie("mem_id", id);
	         cookie.setMaxAge(60*60*24);
	         response.addCookie(cookie);
	      }
	   }else {
	      //아이디 저장 체크해제시 쿠키에 공백 저장
	      Cookie cookie = new Cookie("mem_id", "");
	      
	      cookie.setMaxAge(60*60*24);
	      response.addCookie(cookie);
	   }
	
%>



<% 
//now login ID
String now_id = (String)session.getAttribute("mem_id"); 
%>

<%if(now_id.equals("admin")){ %>
	<!-- admin top menu -->
	<%@ include file="../top_bottom/admin_top.jsp"%>
<%}else{ %>
	<!-- normal top menu -->
	<%@ include file="../top_bottom/top.jsp"%>
<%} %>

<!-- 리스트 메인 영역 시작 -->
<section class="wrapper">
	<section class="page_head">
		<div class="container">
			<div class="widget widget_search">
				<!-- 검색 영역 시작 -->
				<div class="site-search-area">
					
					
					<form method="get" id="site-searchform" action="list" name="search">
						
						<div style="display: inline;">
							
							<%@ include file="./search/search.jsp"%>
							
							<input type="submit" value="검색" />

						</div>
						
						<!-- 검색을 눌렀을때 같이 보내질 정보들 -->
						
						
					</form>
					
					<section class="page_head">
			<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="project_description">
						<div class="widget_title">
							<h4>
								<span>종류 : ${now_kind} 시도 : ${sido_name} 군구 :  ${gungu_name}</span>
							</h4>
						</div>
					</div>
			</div>
			
		</section>
					
					
					
				</div>
				<!-- 검색 영역 끝 -->
			</div>
		</div>

		<!-- 	</section>
	<section class="page_head"> -->

		<div class="container">
			<!--본 메뉴 아래 무늬영역 -->
		</div>


		<section class="content portfolio small-images">
			<div class="container">
				<div class="row sub_content">
					<!-- begin isotope -->
					<div class="col-lg-12 isotope">

						<!-- 이미지 리스트 시작 -->
						<div class="mixed-container masonry_wrapper">

							<c:forEach var="vo" items="${animalList}">

								<div class="item ${vo.kindNum}">

									<figure class="touching effect-bubba">

										<img src="${vo.popfile}" alt="" class="img-responsive">

										<div class="option">
											<a href="animal_detail?desertionNo=${vo.desertionNo }"
												class="fa fa-link"></a> <a href="${vo.popfile}"
												class="fa fa-search mfp-image"></a>
											<p style="color: white; font-size: 13px;">${vo.kindCd}</p>
											<p style="color: white; font-size: 13px;">${vo.orgNm}</p>
										</div>

									</figure>

								</div>
							</c:forEach>

						</div>
						<!-- 이미지 리스트 끝 -->
					</div>
					<!--end isotope -->

					<!-- 페이징 시작 -->
				<div class="col-sm-12 text-center">
	
					<ul class="pagination">
		
						<%if(nowpage<=1){ %>
							<li><a href="#">&laquo;</a></li>
						<%}else{%>
							<li>
							<a href="list
							?nowpage=<%=nowpage-1%>
							&now_kind=${now_kind}
							&sido_code=${sido_code}
							&sido_name=${sido_name}
							&gungu_name=${gungu_name}							
							">&laquo;</a>
							</li>
						<%} %>
			
						<%for(int a=startpage;a<=endpage;a++){%>
				
							<%if(a==nowpage){%>
								<li class="active">
								<a href="list
								?nowpage=<%=a%>
								&now_kind=${now_kind}
								&sido_code=${sido_code}
								&sido_name=${sido_name}
								&gungu_name=${gungu_name}
								">[<%=a %>]</a>
								</li>
							<%}else{%>
								<li>
								<a href="list
								?nowpage=<%=a%>
								&now_kind=${now_kind}
								&sido_code=${sido_code}
								&sido_name=${sido_name}
								&gungu_name=${gungu_name}								
								">[<%=a %>]</a>
								</li>
							<%} %>
						<%} %>
			
						<%if(nowpage>=maxpage){ %>
							<li><a href="#">&raquo;</a></li>
						<%}else{ %>	
							<li>
							<a href="list
							?nowpage=<%=nowpage+1%>
							&now_kind=${now_kind}
							&sido_code=${sido_code}
							&sido_name=${sido_name}
							&gungu_name=${gungu_name}
							">&raquo;</a>
							</li>
						<%} %>
						
					</ul>
							
				</div>
				<!-- 페이징 끝-->
				
				<!-- 정보 전달 form 시작-->
				<form id="info_init" action="list">
					<input type="hidden" name="now_kind" value="${now_kind }" />
					<input type="hidden" name="sido_code" value="${sido_code }" />
					<input type="hidden" name="sido_name" value="${sido_name }" />
					<input type="hidden" name="gungu_name" value="${gungu_name }" />
				</form>
				<!-- 정보 전달 form 시작-->
				
				</div>
				<!--./row-->
			</div>
			<!--./div-->
		</section>
	</section>
</section>
<!-- 리스트 메인 영역 끝 -->


<script type="text/javascript" src="./resources/js/jquery-1.10.2.min.js"></script>
<script src="./resources/js/bootstrap.min.js"></script>
<script src="./resources/js/jquery.easing.1.3.js"></script>
<script src="./resources/js/retina-1.1.0.min.js"></script>
<script type="text/javascript" src="./resources/js/jquery.cookie.js"></script>
<!-- jQuery cookie -->
<script type="text/javascript" src="./resources/js/styleswitch.js"></script>
<!-- Style Colors Switcher -->
<script type="text/javascript"src="./resources/js/jquery.smartmenus.min.js"></script>
<script type="text/javascript" src="./resources/js/jquery.smartmenus.bootstrap.min.js"></script>
<script type="text/javascript" src="./resources/js/jquery.jcarousel.js"></script>
<script type="text/javascript" src="./resources/js/jflickrfeed.js"></script>
<script type="text/javascript" src="./resources/js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="./resources/js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="./resources/js/swipe.js"></script>
<script type="text/javascript"src="./resources/js/jquery-scrolltofixed-min.js"></script>

<script src="./resources/js/main.js"></script>
<script src="./resources/js/search.js"></script>


<%@ include file="../top_bottom/bottom.jsp"%>
