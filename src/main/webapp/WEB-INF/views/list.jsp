<%@page import="org.springframework.web.bind.annotation.SessionAttributes"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../top_bottom/top.jsp"%>

list
<%
	int listcount=((Integer)request.getAttribute("listcount")).intValue(); //동물 수
	int nowpage=((Integer)request.getAttribute("page")).intValue();//현재페이지 수
	int maxpage=((Integer)request.getAttribute("maxpage")).intValue();//최대 페이지 수
	int startpage=((Integer)request.getAttribute("startpage")).intValue();//현재 페이지에 표시할 첫 페이지 수
	int endpage=((Integer)request.getAttribute("endpage")).intValue(); //현재 페이지에 표시할 끝 페이지 수
	String now_kind=(String)request.getAttribute("kind");//현재 페이지의 견종
	
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
			<div class="widget widget_search">
				<div class="site-search-area">
				
					<form method="get" id="site-searchform" action="list">
					
						<div style="display: inline;">
							
							
							<select name="kind">
								
								<c:if test="${now_kind == null}">
									<option class="input-text" value="all" >all</option>
								</c:if>
								
								<c:if test="${now_kind != null}">
									<option class="input-text" value="${now_kind }" >${now_kind }</option>
								</c:if>
						
								<option class="input-text" value="all" >all</option>
								
								<c:forEach var="kind" items="${kindList}">
									
									<option class="input-text" value="${kind.kind_name}" >${kind.kind_name}</option>
																		
								</c:forEach>
							   							
							</select>
							
							<input type="submit" value="검색" />
														
						</div>
						
					</form>
					
				</div><!-- end site search -->
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
					<!-- 카테고리 필터 -->
				<%-- 	<ul id="filter">
					
						<li data-filter="*" class="selected"><a href="#">All</a></li>

						<c:forEach var="kind" items="${kindList}">
							
							<li data-filter=".${kind.kind_num}"><a href="#">${kind.kind_name}</a></li>
							
						</c:forEach>
						
					</ul> --%>
					<!-- 카테고리 필터 끝 -->

					<!-- 이미지 리스트 시작 -->
					<div class="mixed-container masonry_wrapper">
						
						<c:forEach var="vo" items="${animalList}">
														
							<div class="item ${vo.kindNum}">
							
								<figure class="touching effect-bubba">
								
									<img src="${vo.popfile}" alt="" class="img-responsive" >
								
									<div class="option" >
										<a href="animal_detail?desertionNo=${vo.desertionNo }" class="fa fa-link"></a> 
										<a href="${vo.popfile}" class="fa fa-search mfp-image"></a>
										<p style="color: white;">${vo.kindCd}</p>
										<p style="color: white;">${vo.orgNm}</p>
									</div>
									
									
									<figcaption class="item-description" >
										<p>${vo.kindCd}</p>
										<p>${vo.orgNm}</p>
									</figcaption>
									
									
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
						<%}else{ %>
							<li><a href="./list?page=<%=nowpage-1 %>&kind=${now_kind }">&laquo;</a></li>
						<%} %>
			
						<%for(int a=startpage;a<=endpage;a++){%>
				
							<%if(a==nowpage){%>
								<li class="active"><a href="./list?page=<%=a %>&kind=${now_kind }">[<%=a %>]</a></li>
							<%}else{ %>
								<li><a href="./list?page=<%=a %>&kind=${now_kind }">[<%=a %>]</a></li>
							<%} %>
						<%} %>
			
						<%if(nowpage>=maxpage){ %>
							<li><a href="#">&raquo;</a></li>
						<%}else{ %>	
							<li><a href="./list?page=<%=nowpage+1 %>&kind=${now_kind }">&raquo;</a></li>
						<%} %>
				
					</ul>
							
				</div>
				<!-- 페이징 끝-->
				
			</div>
			<!--./row-->
		</div>
		<!--./div-->
	</section>
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


<%@ include file="../top_bottom/bottom.jsp"%>
