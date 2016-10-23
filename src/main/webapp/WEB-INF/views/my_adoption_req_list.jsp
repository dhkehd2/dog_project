<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="third.project.board_bean.*" %>

<%@ include file="../top_bottom/top.jsp"%>

<%
	List board_List=(List)request.getAttribute("board_List");//글 목록 리스트
	int listcount=((Integer)request.getAttribute("listcount")).intValue(); //글 수
	int nowpage=((Integer)request.getAttribute("page")).intValue();//현재페이지 수
	int maxpage=((Integer)request.getAttribute("maxpage")).intValue();//최대 페이지 수
	int startpage=((Integer)request.getAttribute("startpage")).intValue();//현재 페이지에 표시할 첫 페이지 수
	int endpage=((Integer)request.getAttribute("endpage")).intValue(); //현재 페이지에 표시할 끝 페이지 수
%>

<body>
	<!--start wrapper-->
	<section class="wrapper">
    <section class="page_head">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">


                    <div class="page_title">
                        <h2>입양신청 내역</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>

	
	<div class="middle">
        <div class="row sub_content">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="dividerHeading">
                    <h4><span>목록</span></h4>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12">
            	<div class = "leeseul_middle">
	                <table class="table table-striped table-hover">
	                    <thead>
	                    <tr>
	                        
	                        <th>번호</th>
	                        <th>제목</th>
	                        <th>날짜</th>
	                       
	                    </tr>
	                    </thead>
	                    <tbody>
	                    
	                    <% 
						for(int i=0;i<board_List.size();i++){
						BoardBean board=(BoardBean)board_List.get(i);
						%>
	                    	
	                    	<tr>
	                        
	                        <!-- 글번호 -->
	                         <td><%=i+1 %></td>
	                       <%--  <td><%=board.getBOARD_NUM() %></td> --%>
	                        
	                        <!-- 제목 -->
	                        <td>
	                        
	                        <%if(board.getBOARD_RE_LEV()!=0){//댓글일 시? %>
								<%for(int a=0;a<=board.getBOARD_RE_LEV()*2;a++){//댓글에 댓글일 수 록 더많이 들여쓰기 %>
								&nbsp;&nbsp;
								<%} %>
							▶
							<%}else{ %>
							▶
							<%} %>
							<!-- 컨트롤러에 넘겨주었는데 못받음 -->
	                        <a href="board_detail?BOARD_NUM=<%=board.getBOARD_NUM() %>"><%=board.getBOARD_SUBJECT() %></a>
	                       
	                        </td>
	                        
	                        <!-- 날짜 -->
	                        <td><%=board.getBOARD_DAY() %></td>
	                       
	                   		</tr>
	                    <%} %>	
	                    <%-- </c:forEach> --%>
	                      
	                    </tbody>
	                </table>
                </div>
            </div>
            
            	<!-- 페이징 시작 -->
				<div class="col-sm-12 text-center">
	
					<ul class="pagination">
		
						<%if(nowpage<=1){ %>
							<li><a>[이전]</a></li>
						<%}else{%>
							<li>
							<a href="./my_adoption_list?page=<%=nowpage-1 %>">[이전]</a>&nbsp;
							</li>
						<%} %>
			
						<%for(int a=startpage;a<=endpage;a++){%>
				
							<%if(a==nowpage){%>
								<li class="active">
								<a>[<%=a %>]</a>
								</li>
							<%}else{%>
								<li>
								<a href="./my_adoption_list?page=<%=a %>">[<%=a %>]</a>&nbsp;
								</li>
							<%} %>
						<%} %>
			
						<%if(nowpage>=maxpage){ %>
							<li><a>[다음]</a></li>
						<%}else{ %>	
							<li>
							<a href="./my_adoption_list?page=<%=nowpage+1 %>">[다음]</a>
							</li>
						<%} %>
						
					</ul>
							
				</div>
				<!-- 페이징 끝-->
            
            
            
        </div> <!--./row-->
        </div>
        </section>

</body>
</html>
<%@ include file="../top_bottom/bottom.jsp"%>