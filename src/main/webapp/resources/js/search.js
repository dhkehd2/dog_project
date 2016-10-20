/**
 * 지역 검색 js 함수
 */	  

			
		function resetSelect(){
			/*alert("dd");*/
			f = document.search;
			
			f.SUB0.options[0].selected=true;
			f.SUB1.options[0].selected=true;
			f.SUB2.options[0].selected=true;
			f.SUB3.options[0].selected=true;
			f.SUB4.options[0].selected=true;
			f.SUB5.options[0].selected=true;
			f.SUB6.options[0].selected=true;
			f.SUB7.options[0].selected=true;
			f.SUB8.options[0].selected=true;
			f.SUB9.options[0].selected=true;
			f.SUB10.options[0].selected=true;
			f.SUB11.options[0].selected=true;
			f.SUB12.options[0].selected=true;
			f.SUB13.options[0].selected=true;
			f.SUB14.options[0].selected=true;
			f.SUB15.options[0].selected=true;
			f.SUB16.options[0].selected=true;
			f.SUB17.options[0].selected=true;
		}

		//상위 셀렉트로 하위 셀렉트 제어하기
		function showSub(obj) {
			
			 f = document.search;
			
			 resetSelect();
			
			
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
			
			console.log("sel="+f.SUB1.options[0].selected);
		}
