<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
//now login ID
String now_id = (String)session.getAttribute("mem_id"); 
%>
<%@ include file="../top_bottom/top.jsp"%>



<!--start wrapper-->
<section class="wrapper">
	<section class="page_head">
		<div class="container">

	
			<div class="widget widget_categories">
				<div class="widget_title">
					<h4>
						<span>MyPage</span>
					</h4>
				</div>
				
			</div>

		</div>
	</section>
</section>

<section class="content left_sidebar">
	<div class="container">
		<div class="row">
			<!--Sidebar Widget-->
			<div class="col-lg-4 col-md-4 col-sm-4">
				<div class="sidebar">
				
				<ul class="arrows_list list_style">
					<li><a href="info_up"> 회원정보 수정 </a></li>
					<li><a href="my_adoption_list?now_id=<%= now_id%>"> 입양신청 리스트 </a></li>
					
					<%if(now_id.equals("admin")){ %>
					<li><a href="animal_info_insert"><span class="data-hover" data-hover="UpdateList">동물리스트 업데이트</span></a></li>
					<%} %>
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