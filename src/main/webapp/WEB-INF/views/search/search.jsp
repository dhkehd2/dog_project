<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
	
	
	<!-- 동물종류 검색 -->
	동물종류
	<select name="now_kind">

<%-- 			<c:if test="${now_kind == null || now_kind == ''}">
				<option class="input-text" value="all">all</option>
			</c:if>

			<c:if test="${now_kind != null}">
				<option class="input-text" value="${now_kind }">${now_kind }</option>
			</c:if>
								
			<option class="input-text" value="${now_kind }">====================</option> --%>
								
			<option class="input-text" value="all">all</option>

		<c:forEach var="kind" items="${kindList}">

			<option class="input-text" value="${kind.kind_name}">${kind.kind_name}</option>

		</c:forEach>

	</select>
	
	<!-- 지역 검색  -->
	<!-- 시도 검색 시작 -->
	시도
	<select name="sido_code" onChange="showSub(this.options[this.selectedIndex].value);">
		
		<option class="input-text" value="all">all</option>
		<option class="input-text" value="6110000">서울특별시</option>
		<option class="input-text" value="6260000">부산광역시</option>
		<option class="input-text" value="6270000">대구광역시</option>
		<option class="input-text" value="6280000">인천광역시</option>
		<option class="input-text" value="6290000">광주광역시</option>
		<option class="input-text" value="5690000">세종특별자치시</option>
		<option class="input-text" value="6300000">대전광역시</option>
		<option class="input-text" value="6310000">울산광역시</option>
		<option class="input-text" value="6410000">경기도</option>
		<option class="input-text" value="6420000">강원도</option>
		<option class="input-text" value="6430000">충청북도</option>
		<option class="input-text" value="6440000">충청남도</option>
		<option class="input-text" value="6450000">전라북도</option>
		<option class="input-text" value="6460000">전라남도</option>
		<option class="input-text" value="6470000">경상북도</option>
		<option class="input-text" value="6480000">경상남도</option>
		<option class="input-text" value="6500000">제주특별자치도</option>

	</select>

	<!-- 시도 하위 군구 검색 태그들 -->
	군구
	<select name="SUB0" style="display:; width: 120px;">
		<option value="선택">선택</option>
	</select>

	<select name="SUB1" style="display: none; width: 120px;">
		<option value="선택">선택</option>
		<option class="input-text" value="가정보호">가정보호</option>
		<option class="input-text" value="강남구">강남구</option>
		<option class="input-text" value="강동구">강동구</option>
		<option class="input-text" value="강북구">강북구</option>
		<option class="input-text" value="강서구">강서구</option>
		<option class="input-text" value="개별사업">개별사업</option>
		<option class="input-text" value="관악구">관악구</option>
		<option class="input-text" value="광진구">광진구</option>
		<option class="input-text" value="구로구">구로구</option>
		<option class="input-text" value="금천구">금천구</option>
		<option class="input-text" value="노원구">노원구</option>
		<option class="input-text" value="도봉구">도봉구</option>
		<option class="input-text" value="동대문구">동대문구</option>
		<option class="input-text" value="동작구">동작구</option>
		<option class="input-text" value="마포구">마포구</option>
		<option class="input-text" value="서대문구">서대문구</option>
		<option class="input-text" value="서초구">서초구</option>
		<option class="input-text" value="성동구">성동구</option>
		<option class="input-text" value="성북구">성북구</option>
		<option class="input-text" value="송파구">송파구</option>
		<option class="input-text" value="양천구">양천구</option>
		<option class="input-text" value="영등포구">영등포구</option>
		<option class="input-text" value="용산구">용산구</option>
		<option class="input-text" value="은평구">은평구</option>
		<option class="input-text" value="종로구">종로구</option>
		<option class="input-text" value="중구">중구</option>
		<option class="input-text" value="중랑구">중랑구</option>
	</select>

	<select name="SUB2" style="display: none; width: 120px;">
		<option value="선택">선택</option>
		<option class="input-text" value="강서구">강서구</option>
		<option class="input-text" value="금정구">금정구</option>
		<option class="input-text" value="기장군">기장군</option>
		<option class="input-text" value="남구">남구</option>
		<option class="input-text" value="동구">동구</option>
		<option class="input-text" value="동래구">동래구</option>
		<option class="input-text" value="부산진구">부산진구</option>
		<option class="input-text" value="북구">북구</option>
		<option class="input-text" value="사상구">사상구</option>
		<option class="input-text" value="사하구">사하구</option>
		<option class="input-text" value="서구">서구</option>
		<option class="input-text" value="수영구">수영구</option>
		<option class="input-text" value="연제구">연제구</option>
		<option class="input-text" value="영도구">영도구</option>
		<option class="input-text" value="중구">중구</option>
		<option class="input-text" value="해운대구">해운대구</option>
	</select>

	<select name="SUB3" style="display: none; width: 120px;">
		<option value="선택">선택</option>
		<option class="input-text" value="남구">남구</option>
		<option class="input-text" value="달서구">달서구</option>
		<option class="input-text" value="달성군">달성군</option>
		<option class="input-text" value="동구">동구</option>
		<option class="input-text" value="북구">북구</option>
		<option class="input-text" value="서구">서구</option>
		<option class="input-text" value="수성구">수성구</option>
		<option class="input-text" value="중구">중구</option>
	</select>

	<select name="SUB4" style="display: none; width: 120px;">
		<option value="선택">선택</option>
		<option class="input-text" value="강화군">강화군</option>
		<option class="input-text" value="계양구">계양구</option>
		<option class="input-text" value="남구">남구</option>
		<option class="input-text" value="남동구">남동구</option>
		<option class="input-text" value="동구">동구</option>
		<option class="input-text" value="부평구">부평구</option>
		<option class="input-text" value="서구">서구</option>
		<option class="input-text" value="연수구">연수구</option>
		<option class="input-text" value="옹진군">옹진군</option>
		<option class="input-text" value="중구">중구</option>
	</select>

	<select name="SUB5" style="display: none; width: 120px;">
		<option value="선택">선택</option>
		<option class="input-text" value="광산구">광산구</option>
		<option class="input-text" value="남구">남구</option>
		<option class="input-text" value="동구">동구</option>
		<option class="input-text" value="북구">북구</option>
		<option class="input-text" value="서구">서구</option>
	</select>

	<select name="SUB6" style="display: none; width: 120px;">
		<option value="선택">선택</option>
	</select>

	<select name="SUB7" style="display: none; width: 120px;">
		<option value="선택">선택</option>
		<option class="input-text" value="대덕구">대덕구</option>
		<option class="input-text" value="동구">동구</option>
		<option class="input-text" value="서구">서구</option>
		<option class="input-text" value="유성구">유성구</option>
		<option class="input-text" value="중구">중구</option>
	</select>

	<select name="SUB8" style="display: none; width: 120px;">
		<option value="선택">선택</option>
		<option class="input-text" value="남구">남구</option>
		<option class="input-text" value="동구">동구</option>
		<option class="input-text" value="북구">북구</option>
		<option class="input-text" value="울주군">울주군</option>
		<option class="input-text" value="중구">중구</option>
	</select>

	<select name="SUB9" style="display: none; width: 120px;">
		<option value="선택">선택</option>
		<option class="input-text" value="가평군">가평군</option>
		<option class="input-text" value="고양시">고양시</option>
		<option class="input-text" value="과천시">과천시</option>
		<option class="input-text" value="광명시">광명시</option>
		<option class="input-text" value="광주시">광주시</option>
		<option class="input-text" value="구리시">구리시</option>
		<option class="input-text" value="군포시">군포시</option>
		<option class="input-text" value="김포시">김포시</option>
		<option class="input-text" value="남양주시">남양주시</option>
		<option class="input-text" value="동두천시">동두천시</option>

		<option class="input-text" value="부천시">부천시</option>
		<option class="input-text" value="성남시">성남시</option>
		<option class="input-text" value="수원시">수원시</option>
		<option class="input-text" value="시흥시">시흥시</option>
		<option class="input-text" value="안산시">안산시</option>
		<option class="input-text" value="안성시">안성시</option>
		<option class="input-text" value="안양시">안양시</option>
		<option class="input-text" value="양주시">양주시</option>
		<option class="input-text" value="양평군">양평군</option>
		<option class="input-text" value="여주시">여주시</option>

		<option class="input-text" value="연천군">연천군</option>
		<option class="input-text" value="오산시">오산시</option>
		<option class="input-text" value="용인시">용인시</option>
		<option class="input-text" value="용인시 기흥구">용인시 기흥구</option>
		<option class="input-text" value="의왕시">의왕시</option>
		<option class="input-text" value="의정부시">의정부시</option>
		<option class="input-text" value="이천시">이천시</option>
		<option class="input-text" value="파주시">파주시</option>
		<option class="input-text" value="평택시">평택시</option>
		<option class="input-text" value="포천시">포천시</option>

		<option class="input-text" value="하남시">하남시</option>
		<option class="input-text" value="화성시">화성시</option>
	</select>

	<select name="SUB10" style="display: none; width: 120px;">
		<option value="선택">선택</option>
		<option class="input-text" value="강릉시">강릉시</option>
		<option class="input-text" value="고성군">고성군</option>
		<option class="input-text" value="동해시">동해시</option>
		<option class="input-text" value="삼척시">삼척시</option>
		<option class="input-text" value="속초시">속초시</option>
		<option class="input-text" value="양구군">양구군</option>
		<option class="input-text" value="양양군">양양군</option>
		<option class="input-text" value="영월군">영월군</option>
		<option class="input-text" value="원주시">원주시</option>
		<option class="input-text" value="인제군">인제군</option>
		<option class="input-text" value="정선군">정선군</option>
		<option class="input-text" value="철원군">철원군</option>
		<option class="input-text" value="춘천시">춘천시</option>
		<option class="input-text" value="태백시">태백시</option>
		<option class="input-text" value="평창군">평창군</option>
		<option class="input-text" value="홍천군">홍천군</option>
		<option class="input-text" value="화천군">화천군</option>
		<option class="input-text" value="횡성군">횡성군</option>
	</select>

	<select name="SUB11" style="display: none; width: 120px;">
		<option value="선택">선택</option>
		<option class="input-text" value="괴산군">괴산군</option>
		<option class="input-text" value="단양군">단양군</option>
		<option class="input-text" value="보은군">보은군</option>
		<option class="input-text" value="영동군">영동군</option>
		<option class="input-text" value="옥천군">옥천군</option>
		<option class="input-text" value="음성군">음성군</option>
		<option class="input-text" value="제천시">제천시</option>
		<option class="input-text" value="증평군">증평군</option>
		<option class="input-text" value="진천군">진천군</option>
		<option class="input-text" value="청주시">청주시</option>
		<option class="input-text" value="충주시">충주시</option>
	</select>

	<select name="SUB12" style="display: none; width: 120px;">
		<option value="선택">선택</option>
		<option class="input-text" value="계룡시">계룡시</option>
		<option class="input-text" value="공주시">공주시</option>
		<option class="input-text" value="금산군">금산군</option>
		<option class="input-text" value="논산시">논산시</option>
		<option class="input-text" value="당진시">당진시</option>
		<option class="input-text" value="보령시">보령시</option>
		<option class="input-text" value="부여군">부여군</option>
		<option class="input-text" value="서산시">서산시</option>
		<option class="input-text" value="서천군">서천군</option>
		<option class="input-text" value="아산시">아산시</option>
		<option class="input-text" value="연기군">연기군</option>
		<option class="input-text" value="예산군">예산군</option>
		<option class="input-text" value="천안시">천안시</option>
		<option class="input-text" value="청양군">청양군</option>
		<option class="input-text" value="태안군">태안군</option>
		<option class="input-text" value="홍성군">홍성군</option>
	</select>

	<select name="SUB13" style="display: none; width: 120px;">
		<option value="선택">선택</option>
		<option class="input-text" value="고창군">고창군</option>
		<option class="input-text" value="군산시">군산시</option>
		<option class="input-text" value="김제시">김제시</option>
		<option class="input-text" value="남원시">남원시</option>
		<option class="input-text" value="무주군">무주군</option>
		<option class="input-text" value="부안군">부안군</option>
		<option class="input-text" value="순창군">순창군</option>
		<option class="input-text" value="완주군">완주군</option>
		<option class="input-text" value="익산시">익산시</option>
		<option class="input-text" value="임실군">임실군</option>
		<option class="input-text" value="장수군">장수군</option>
		<option class="input-text" value="전주시">전주시</option>
		<option class="input-text" value="정읍시">정읍시</option>
		<option class="input-text" value="진안군">진안군</option>
	</select>

	<select name="SUB14" style="display: none; width: 120px;">
		<option value="선택">선택</option>
		<option class="input-text" value="강진군">강진군</option>
		<option class="input-text" value="고흥군">고흥군</option>
		<option class="input-text" value="곡성군">곡성군</option>
		<option class="input-text" value="광양시">광양시</option>
		<option class="input-text" value="구례군">구례군</option>
		<option class="input-text" value="나주시">나주시</option>
		<option class="input-text" value="담양군">담양군</option>
		<option class="input-text" value="목포시">목포시</option>
		<option class="input-text" value="무안군">무안군</option>
		<option class="input-text" value="보성군">보성군</option>

		<option class="input-text" value="순천시">순천시</option>
		<option class="input-text" value="신안군">신안군</option>
		<option class="input-text" value="여수시">여수시</option>
		<option class="input-text" value="영광군">영광군</option>
		<option class="input-text" value="영암군">영암군</option>
		<option class="input-text" value="완도군">완도군</option>
		<option class="input-text" value="장성군">장성군</option>
		<option class="input-text" value="장흥군">장흥군</option>
		<option class="input-text" value="진도군">진도군</option>
		<option class="input-text" value="함평군">함평군</option>
		<option class="input-text" value="해남군">해남군</option>
		<option class="input-text" value="화순군">화순군</option>
	</select>

	<select name="SUB15" style="display: none; width: 120px;">
		<option value="선택">선택</option>
		<option class="input-text" value="경산시">경산시</option>
		<option class="input-text" value="경주시">경주시</option>
		<option class="input-text" value="고령군">고령군</option>
		<option class="input-text" value="구미시">구미시</option>
		<option class="input-text" value="군위군">군위군</option>
		<option class="input-text" value="김천시">김천시</option>
		<option class="input-text" value="문경시">문경시</option>
		<option class="input-text" value="봉화군">봉화군</option>
		<option class="input-text" value="상주시">상주시</option>
		<option class="input-text" value="성주군">성주군</option>

		<option class="input-text" value="안동시">안동시</option>
		<option class="input-text" value="영덕군">영덕군</option>
		<option class="input-text" value="영양군">영양군</option>
		<option class="input-text" value="영주시">영주시</option>
		<option class="input-text" value="영천시">영천시</option>
		<option class="input-text" value="예천군">예천군</option>
		<option class="input-text" value="울릉군">울릉군</option>
		<option class="input-text" value="울진군">울진군</option>
		<option class="input-text" value="의성군">의성군</option>
		<option class="input-text" value="청도군">청도군</option>

		<option class="input-text" value="청송군">청송군</option>
		<option class="input-text" value="칠곡군">칠곡군</option>
		<option class="input-text" value="포항시">포항시</option>
	</select>

	<select name="SUB16" style="display: none; width: 120px;">
		<option value="선택">선택</option>
		<option class="input-text" value="거제시">거제시</option>
		<option class="input-text" value="거창군">거창군</option>
		<option class="input-text" value="고성군">고성군</option>
		<option class="input-text" value="김해시">김해시</option>
		<option class="input-text" value="남해군">남해군</option>
		<option class="input-text" value="밀양시">밀양시</option>
		<option class="input-text" value="사천시">사천시</option>
		<option class="input-text" value="산청군">산청군</option>
		<option class="input-text" value="양산시">양산시</option>
		<option class="input-text" value="의령군">의령군</option>

		<option class="input-text" value="진주시">진주시</option>
		<option class="input-text" value="창녕군">창녕군</option>
		<option class="input-text" value="창원 마산합포회원구">창원 마산합포회원구</option>
		<option class="input-text" value="창원 의창성산구">창원 의창성산구</option>
		<option class="input-text" value="창원 진해구">창원 진해구</option>
		<option class="input-text" value="통영시">통영시</option>
		<option class="input-text" value="하동군">하동군</option>
		<option class="input-text" value="함안군">함안군</option>
		<option class="input-text" value="함양군">함양군</option>
		<option class="input-text" value="합천군">합천군</option>
	</select>

	<select name="SUB17" style="display: none; width: 120px;">
		<option value="선택">선택</option>
		<option class="input-text" value="서귀포시">서귀포시</option>
		<option class="input-text" value="제주시">제주시</option>
		<option class="input-text" value="제주특별자치도">제주특별자치도</option>
	</select>

	<!-- 시도 검색 끝 -->

	<script type="text/javascript">
		//상위 셀렉트로 하위 셀렉트 제어하기
		function showSub(obj) {

			f = document.forms.search;

			if (obj == 0) {

				f.SUB0.style.display = "";
				f.SUB1.style.display = "none";
				f.SUB2.style.display = "none";
				f.SUB3.style.display = "none";
				f.SUB4.style.display = "none";
				f.SUB5.style.display = "none";
				f.SUB6.style.display = "none";
				f.SUB7.style.display = "none";
				f.SUB8.style.display = "none";
				f.SUB9.style.display = "none";
				f.SUB10.style.display = "none";
				f.SUB11.style.display = "none";
				f.SUB12.style.display = "none";
				f.SUB13.style.display = "none";
				f.SUB14.style.display = "none";
				f.SUB15.style.display = "none";
				f.SUB16.style.display = "none";
				f.SUB17.style.display = "none";

			} else if (obj == 6110000) {//서울

				f.SUB0.style.display = "none";
				f.SUB1.style.display = "";
				f.SUB2.style.display = "none";
				f.SUB3.style.display = "none";
				f.SUB4.style.display = "none";
				f.SUB5.style.display = "none";
				f.SUB6.style.display = "none";
				f.SUB7.style.display = "none";
				f.SUB8.style.display = "none";
				f.SUB9.style.display = "none";
				f.SUB10.style.display = "none";
				f.SUB11.style.display = "none";
				f.SUB12.style.display = "none";
				f.SUB13.style.display = "none";
				f.SUB14.style.display = "none";
				f.SUB15.style.display = "none";
				f.SUB16.style.display = "none";
				f.SUB17.style.display = "none";

			} else if (obj == 6260000) {//부산

				f.SUB0.style.display = "none";
				f.SUB1.style.display = "none";
				f.SUB2.style.display = "";
				f.SUB3.style.display = "none";
				f.SUB4.style.display = "none";
				f.SUB5.style.display = "none";
				f.SUB6.style.display = "none";
				f.SUB7.style.display = "none";
				f.SUB8.style.display = "none";
				f.SUB9.style.display = "none";
				f.SUB10.style.display = "none";
				f.SUB11.style.display = "none";
				f.SUB12.style.display = "none";
				f.SUB13.style.display = "none";
				f.SUB14.style.display = "none";
				f.SUB15.style.display = "none";
				f.SUB16.style.display = "none";
				f.SUB17.style.display = "none";

			} else if (obj == 6270000) {//대구

				f.SUB0.style.display = "none";
				f.SUB1.style.display = "none";
				f.SUB2.style.display = "none";
				f.SUB3.style.display = "";
				f.SUB4.style.display = "none";
				f.SUB5.style.display = "none";
				f.SUB6.style.display = "none";
				f.SUB7.style.display = "none";
				f.SUB8.style.display = "none";
				f.SUB9.style.display = "none";
				f.SUB10.style.display = "none";
				f.SUB11.style.display = "none";
				f.SUB12.style.display = "none";
				f.SUB13.style.display = "none";
				f.SUB14.style.display = "none";
				f.SUB15.style.display = "none";
				f.SUB16.style.display = "none";
				f.SUB17.style.display = "none";

			} else if (obj == 6280000) {//인천

				f.SUB0.style.display = "none";
				f.SUB1.style.display = "none";
				f.SUB2.style.display = "none";
				f.SUB3.style.display = "none";
				f.SUB4.style.display = "";
				f.SUB5.style.display = "none";
				f.SUB6.style.display = "none";
				f.SUB7.style.display = "none";
				f.SUB8.style.display = "none";
				f.SUB9.style.display = "none";
				f.SUB10.style.display = "none";
				f.SUB11.style.display = "none";
				f.SUB12.style.display = "none";
				f.SUB13.style.display = "none";
				f.SUB14.style.display = "none";
				f.SUB15.style.display = "none";
				f.SUB16.style.display = "none";
				f.SUB17.style.display = "none";

			} else if (obj == 6290000) {//광주

				f.SUB0.style.display = "none";
				f.SUB1.style.display = "none";
				f.SUB2.style.display = "none";
				f.SUB3.style.display = "none";
				f.SUB4.style.display = "none";
				f.SUB5.style.display = "";
				f.SUB6.style.display = "none";
				f.SUB7.style.display = "none";
				f.SUB8.style.display = "none";
				f.SUB9.style.display = "none";
				f.SUB10.style.display = "none";
				f.SUB11.style.display = "none";
				f.SUB12.style.display = "none";
				f.SUB13.style.display = "none";
				f.SUB14.style.display = "none";
				f.SUB15.style.display = "none";
				f.SUB16.style.display = "none";
				f.SUB17.style.display = "none";

			} else if (obj == 5690000) {//세종

				f.SUB0.style.display = "none";
				f.SUB1.style.display = "none";
				f.SUB2.style.display = "none";
				f.SUB3.style.display = "none";
				f.SUB4.style.display = "none";
				f.SUB5.style.display = "none";
				f.SUB6.style.display = "";
				f.SUB7.style.display = "none";
				f.SUB8.style.display = "none";
				f.SUB9.style.display = "none";
				f.SUB10.style.display = "none";
				f.SUB11.style.display = "none";
				f.SUB12.style.display = "none";
				f.SUB13.style.display = "none";
				f.SUB14.style.display = "none";
				f.SUB15.style.display = "none";
				f.SUB16.style.display = "none";
				f.SUB17.style.display = "none";

			} else if (obj == 6300000) {//대전

				f.SUB0.style.display = "none";
				f.SUB1.style.display = "none";
				f.SUB2.style.display = "none";
				f.SUB3.style.display = "none";
				f.SUB4.style.display = "none";
				f.SUB5.style.display = "none";
				f.SUB6.style.display = "none";
				f.SUB7.style.display = "";
				f.SUB8.style.display = "none";
				f.SUB9.style.display = "none";
				f.SUB10.style.display = "none";
				f.SUB11.style.display = "none";
				f.SUB12.style.display = "none";
				f.SUB13.style.display = "none";
				f.SUB14.style.display = "none";
				f.SUB15.style.display = "none";
				f.SUB16.style.display = "none";
				f.SUB17.style.display = "none";

			} else if (obj == 6310000) {//울산

				f.SUB0.style.display = "none";
				f.SUB1.style.display = "none";
				f.SUB2.style.display = "none";
				f.SUB3.style.display = "none";
				f.SUB4.style.display = "none";
				f.SUB5.style.display = "none";
				f.SUB6.style.display = "none";
				f.SUB7.style.display = "none";
				f.SUB8.style.display = "";
				f.SUB9.style.display = "none";
				f.SUB10.style.display = "none";
				f.SUB11.style.display = "none";
				f.SUB12.style.display = "none";
				f.SUB13.style.display = "none";
				f.SUB14.style.display = "none";
				f.SUB15.style.display = "none";
				f.SUB16.style.display = "none";
				f.SUB17.style.display = "none";

			} else if (obj == 6410000) {//경기도

				f.SUB0.style.display = "none";
				f.SUB1.style.display = "none";
				f.SUB2.style.display = "none";
				f.SUB3.style.display = "none";
				f.SUB4.style.display = "none";
				f.SUB5.style.display = "none";
				f.SUB6.style.display = "none";
				f.SUB7.style.display = "none";
				f.SUB8.style.display = "none";
				f.SUB9.style.display = "";
				f.SUB10.style.display = "none";
				f.SUB11.style.display = "none";
				f.SUB12.style.display = "none";
				f.SUB13.style.display = "none";
				f.SUB14.style.display = "none";
				f.SUB15.style.display = "none";
				f.SUB16.style.display = "none";
				f.SUB17.style.display = "none";

			} else if (obj == 6420000) {//강원도

				f.SUB0.style.display = "none";
				f.SUB1.style.display = "none";
				f.SUB2.style.display = "none";
				f.SUB3.style.display = "none";
				f.SUB4.style.display = "none";
				f.SUB5.style.display = "none";
				f.SUB6.style.display = "none";
				f.SUB7.style.display = "none";
				f.SUB8.style.display = "none";
				f.SUB9.style.display = "none";
				f.SUB10.style.display = "";
				f.SUB11.style.display = "none";
				f.SUB12.style.display = "none";
				f.SUB13.style.display = "none";
				f.SUB14.style.display = "none";
				f.SUB15.style.display = "none";
				f.SUB16.style.display = "none";
				f.SUB17.style.display = "none";

			} else if (obj == 6430000) {//충청북도

				f.SUB0.style.display = "none";
				f.SUB1.style.display = "none";
				f.SUB2.style.display = "none";
				f.SUB3.style.display = "none";
				f.SUB4.style.display = "none";
				f.SUB5.style.display = "none";
				f.SUB6.style.display = "none";
				f.SUB7.style.display = "none";
				f.SUB8.style.display = "none";
				f.SUB9.style.display = "none";
				f.SUB10.style.display = "none";
				f.SUB11.style.display = "";
				f.SUB12.style.display = "none";
				f.SUB13.style.display = "none";
				f.SUB14.style.display = "none";
				f.SUB15.style.display = "none";
				f.SUB16.style.display = "none";
				f.SUB17.style.display = "none";

			} else if (obj == 6440000) {//충청남도

				f.SUB0.style.display = "none";
				f.SUB1.style.display = "none";
				f.SUB2.style.display = "none";
				f.SUB3.style.display = "none";
				f.SUB4.style.display = "none";
				f.SUB5.style.display = "none";
				f.SUB6.style.display = "none";
				f.SUB7.style.display = "none";
				f.SUB8.style.display = "none";
				f.SUB9.style.display = "none";
				f.SUB10.style.display = "none";
				f.SUB11.style.display = "none";
				f.SUB12.style.display = "";
				f.SUB13.style.display = "none";
				f.SUB14.style.display = "none";
				f.SUB15.style.display = "none";
				f.SUB16.style.display = "none";
				f.SUB17.style.display = "none";

			} else if (obj == 6450000) {//전라북도

				f.SUB0.style.display = "none";
				f.SUB1.style.display = "none";
				f.SUB2.style.display = "none";
				f.SUB3.style.display = "none";
				f.SUB4.style.display = "none";
				f.SUB5.style.display = "none";
				f.SUB6.style.display = "none";
				f.SUB7.style.display = "none";
				f.SUB8.style.display = "none";
				f.SUB9.style.display = "none";
				f.SUB10.style.display = "none";
				f.SUB11.style.display = "none";
				f.SUB12.style.display = "none";
				f.SUB13.style.display = "";
				f.SUB14.style.display = "none";
				f.SUB15.style.display = "none";
				f.SUB16.style.display = "none";
				f.SUB17.style.display = "none";

			} else if (obj == 6460000) {//전라남도

				f.SUB0.style.display = "none";
				f.SUB1.style.display = "none";
				f.SUB2.style.display = "none";
				f.SUB3.style.display = "none";
				f.SUB4.style.display = "none";
				f.SUB5.style.display = "none";
				f.SUB6.style.display = "none";
				f.SUB7.style.display = "none";
				f.SUB8.style.display = "none";
				f.SUB9.style.display = "none";
				f.SUB10.style.display = "none";
				f.SUB11.style.display = "none";
				f.SUB12.style.display = "none";
				f.SUB13.style.display = "none";
				f.SUB14.style.display = "";
				f.SUB15.style.display = "none";
				f.SUB16.style.display = "none";
				f.SUB17.style.display = "none";

			} else if (obj == 6470000) {//경상북도

				f.SUB0.style.display = "none";
				f.SUB1.style.display = "none";
				f.SUB2.style.display = "none";
				f.SUB3.style.display = "none";
				f.SUB4.style.display = "none";
				f.SUB5.style.display = "none";
				f.SUB6.style.display = "none";
				f.SUB7.style.display = "none";
				f.SUB8.style.display = "none";
				f.SUB9.style.display = "none";
				f.SUB10.style.display = "none";
				f.SUB11.style.display = "none";
				f.SUB12.style.display = "none";
				f.SUB13.style.display = "none";
				f.SUB14.style.display = "none";
				f.SUB15.style.display = "";
				f.SUB16.style.display = "none";
				f.SUB17.style.display = "none";

			} else if (obj == 6480000) {//경상남도

				f.SUB0.style.display = "none";
				f.SUB1.style.display = "none";
				f.SUB2.style.display = "none";
				f.SUB3.style.display = "none";
				f.SUB4.style.display = "none";
				f.SUB5.style.display = "none";
				f.SUB6.style.display = "none";
				f.SUB7.style.display = "none";
				f.SUB8.style.display = "none";
				f.SUB9.style.display = "none";
				f.SUB10.style.display = "none";
				f.SUB11.style.display = "none";
				f.SUB12.style.display = "none";
				f.SUB13.style.display = "none";
				f.SUB14.style.display = "none";
				f.SUB15.style.display = "none";
				f.SUB16.style.display = "";
				f.SUB17.style.display = "none";

			} else if (obj == 6500000) {//제주도

				f.SUB0.style.display = "none";
				f.SUB1.style.display = "none";
				f.SUB2.style.display = "none";
				f.SUB3.style.display = "none";
				f.SUB4.style.display = "none";
				f.SUB5.style.display = "none";
				f.SUB6.style.display = "none";
				f.SUB7.style.display = "none";
				f.SUB8.style.display = "none";
				f.SUB9.style.display = "none";
				f.SUB10.style.display = "none";
				f.SUB11.style.display = "none";
				f.SUB12.style.display = "none";
				f.SUB13.style.display = "none";
				f.SUB14.style.display = "none";
				f.SUB15.style.display = "none";
				f.SUB16.style.display = "none";
				f.SUB17.style.display = "";

			}
		}
	</script>
</body>
</html>