<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<%@ include file="../../top_bottom/top.jsp"%>

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

<c:forEach var="vo" items="${animalList}">
	<tr>
		<td>${vo}</td>
	
	</tr>
</c:forEach>


<%@ include file="../../top_bottom/bottom.jsp"%>
