<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../top_bottom/top.jsp"%>
<%
 String id=(String)session.getAttribute("mem_id");
	String id2 = "gogoy2643";
	request.setAttribute("id2", id2);
%>
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
							onclick="location='adoption_req_form?id=${id2}'">
							<i class="fa fa-check-circle"></i> 입양신청 하기
						</button>
				</div>

			</div>
		</section>
	</section>
	<!--end wrapper-->

<%@ include file="../../top_bottom/bottom.jsp"%>
