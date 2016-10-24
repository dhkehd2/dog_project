<%@page import="third.project.bean.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../top_bottom/top.jsp"%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Edge Responsive Multipurpose Template</title>
    <meta name="description" content="">

    <!-- CSS FILES -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="resources/css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="resources/css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" type="text/css" href="resources/css/switcher.css" media="screen" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>   
	<script>
	$(function() {
		  $( "#mem_bir" ).datepicker({
		         changeMonth: true, 
		         changeYear: true,
		         nextText: '다음 달',
		         prevText: '이전 달' 
		  });
		});
	
	
	function update_add() {
		$('#sample4_roadAddress').show("slow");
		
	}
	
	function pw_show() {
		$("#mem_pwCheck").show("fast");
	}
	
	function pw_check() {
		
		if(document.getElementById("mem_pw").value == document.getElementById("mem_pwCheck").value){
			alert("비밀번호 일치");
		}else {
			alert("비밀번호 불일치");
			document.getElementById("mem_pwCheck").value="";
		}
	}
	</script>
</head>
<body>

<!--start wrapper-->
<section class="wrapper">
   

    <section class="contact_2">

        <div class="container">
            <div class="row sub_content">
                <div class="col-lg-12 col-md-12 col-sm-12">
                	<div class="headingCenter">
                    <div class="dividerHeading">
                        <h4><span>회원정보수정</span></h4>
                    </div>
                    <p>회원정보수정란을 작성해 주세요.</p>
					</div>
					
                    <div class="alert alert-success hidden alert-dismissable" id="contactSuccess">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <strong>Success!</strong> Your message has been sent to us.
                    </div>

                    <div class="alert alert-error hidden" id="contactError">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <strong>Error!</strong> There was an error sending your message.
                    </div>

                    <form id="contactForm" action="info_UpProcess" novalidate="novalidate">
                        <div class="row">
                            <div class="form-group">
                                <div class="col-lg-12 ">
                                	<div class="middle">
                                    <input type="text" id="mem_id" name="mem_id" class="form-control" maxlength="100" data-msg-required="아이디를 입력해주세요." value="${mb.mem_id}" placeholder="아이디" readonly>
                                	</div>
                                </div>
                                <div class="col-lg-12 ">
                                    <div class="middle">
                                    <input type="password" id="mem_pw" name="mem_pw" class="form-control" maxlength="100" data-msg-required="비밀번호를 입력해주세요." value="" placeholder="비밀번호" onblur="pw_show()">
                                	</div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group">
                                <div class="col-lg-12 ">
                                    <div class="middle">
                                    <input type="password" id="mem_pwCheck" name="mem_pwCheck" class="form-control" maxlength="100" data-msg-required="비밀번호를 한번 더 입력해주세요." value="" placeholder="비밀번호 확인" onblur="pw_check()">
                                	</div>
                                </div>
                                <div class="col-lg-12 ">
                                    <div class="middle">
                                    <input type="text" id="mem_name" name="mem_name" class="form-control" maxlength="100" data-msg-required="이름을 입력해주세요." value="${mb.mem_name}" placeholder="이름" >
                                	</div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group">
                                <div class="col-lg-12 ">
                                    <div class="middle">
                                    <input type="text" id="mem_tel" name="mem_tel" class="form-control" maxlength="100" data-msg-required="전화번호를 입력해주세요." value="${mb.mem_tel}" placeholder="전화번호" >
                                	</div>
                                </div>
                                <div class="col-lg-12 ">
                                    <div class="middle">
                                    <input type="text" id="mem_email" name="mem_email" class="form-control" maxlength="100" data-msg-required="이메일 주소를 입력해주세요." value="${mb.mem_email}" placeholder="이메일" >
                                	</div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group">
                                <div class="col-lg-12 ">
                                    <div class="middle">
                                    <input type="text" id="sample4_roadAddress" name="sample4_roadAddress" class="form-control"  onclick="sample4_execDaumPostcode()" data-msg-required="도로명 주소를 입력해주세요." placeholder="도로명주소" style="display: none;" readonly>
									<input type="text" id="mem_add" name="mem_add" class="form-control" maxlength="100" onchange="add_address()" data-msg-required="상세주소를 입력해주세요." value="${mb.mem_add}" placeholder="상세주소" onclick="update_add()">
									<!-- <input type="hidden" id="mem_add" name="mem_add"> -->
									
                                	</div>
                                </div>
                                <div class="col-lg-12 ">
                                    <div class="middle">
                                    <input type="text" id="mem_bir" name="mem_bir" class="form-control" maxlength="100" data-msg-required="생년월일을 입력해주세요." value="${mb.mem_bir}" placeholder="생년월일" onchange="rearrange_bir()" readonly>
                                	</div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group">
                                <div class="col-lg-12 ">
                                   <div class="expMiddle">
	                                   <h3>성별을 체크해 주세요. &nbsp;
		                                   <input type="radio" name="mem_gen" value="male">&nbsp;남성&nbsp;
		                                   <input type="radio" name="mem_gen" value="female">&nbsp;여성
	                                   </h3>
                                   </div>
                                </div>
                                
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div class="middle">
                                    <label for="mem_q" style="text-align: left;">비밀번호 찾기 질문</label>
                                    <select id="mem_q" name="mem_q" class="form-control">
                                    	<option value="당신의 보물 1호는?" class="form-control">당신의 보물 1호는?</option>
                                    	<option value="당신의 출신 초등학교는?" class="form-control">당신의 출신 초등학교는?</option>
                                    	<option value="당신의 어릴적 별명은?" class="form-control">당신의 어릴적 별명은?</option>
                                    </select>
                                	</div>
                                </div>
                               

                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-12">
                                	<div class="middle">
                                    	<textarea id="mem_a" name="mem_a" class="form-control" rows="10" cols="50" data-msg-required="비밀번호 질문에 답변을 입력해주세요." maxlength="5000" placeholder="비밀번호 질문 답변"></textarea>
									</div>
                                </div>
                                <div class="col-lg-12 ">
                                   <div class="expMiddle">
	                                   <h3>동물을 키워 본 경험이 있습니까? &nbsp;
		                                   <input type="radio" name="mem_exp" value="yes">&nbsp;예&nbsp;
		                                   <input type="radio" name="mem_exp" value="no">&nbsp;아니오
	                                   </h3>
                                   </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-11 text-right">
                                <input type="button" data-loading-text="Loading..." class="btn btn-default btn-lg" value="회원정보수정"
                                onclick="document.getElementById('contactForm').submit();">
                                <input type="button" data-loading-text="Loading..." class="btn btn-default btn-lg" value="로그인 화면으로" onclick="location='login'">
                            </div>
                        </div>
                    </form>
                </div>


            </div>
        </div>
    </section>
</section>
<!--end wrapper-->



<!-- <script type="text/javascript" src="resources/js/jquery-1.10.2.min.js"></script> -->
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/jquery.easing.1.3.js"></script>
<script src="resources/js/retina-1.1.0.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.cookie.js"></script> jQuery cookie
<script type="text/javascript" src="resources/js/styleswitch.js"></script> Style Colors Switcher
<script type="text/javascript" src="resources/js/jquery.smartmenus.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.smartmenus.bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.jcarousel.js"></script>
<script type="text/javascript" src="resources/js/jflickrfeed.js"></script>
<script type="text/javascript" src="resources/js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="resources/js/swipe.js"></script>
<script type="text/javascript" src="resources/js/jquery-scrolltofixed-min.js"></script>
<script type="text/javascript" src="resources/js/jquery.validate.js"></script>
<script type="text/javascript" src="resources/js/view.contact.js"></script>
<script type="text/javascript" src="resources/js/jquery.gmap.js"></script>

<script src="resources/js/main.js"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	function rearrange_bir() {
		var str = document.getElementById('mem_bir').value;
		var newStr="";
		for (var i = 0; i < 4;  i++) {
			newStr += str[6+i];
		}
		newStr += "/"
		for (var i=0;i<5;i++){
			newStr += str[i];
		}
		
		document.getElementById('mem_bir').value = newStr;
	}

	//도로명주소와 상세주소의 더한 정보를 MemberBean의 mem_add에 전달한다.
	function add_address() {
		document.getElementById('mem_add').value = 
			document.getElementById('sample4_roadAddress').value +
			document.getElementById('detail').value;
	}

    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.

                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('mem_add').value = fullRoadAddr;
                
            }
        }).open();
    }
</script>

<!-- Start Style Switcher -->
<div class="switcher"></div>
<!-- End Style Switcher -->
</body>
</html>
<%@ include file="../top_bottom/join_bottom.jsp"%>
