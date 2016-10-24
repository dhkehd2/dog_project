<%@page import="org.springframework.web.bind.annotation.SessionAttributes"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../top_bottom/login_top.jsp"%>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>Edge Responsive Multipurpose Template</title>
	<meta name="description" content="">

    
</head>
<body>

	
	<!--start wrapper-->
	<section class="wrapper">
    <section class="page_head">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <nav id="breadcrumbs">
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li>Pages</li>
                        </ul>
                    </nav>
					
                    <div class="page_title">
	                    <div class="middle">
	                        <h2>faq</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

		<section class="content faq">
			<div class="container">
				<div class="row">
					<div class="middle">
						<div class="col-lg-12">
	                        <div class="panel-group accordion" id="accordion">
	                        <div class="panel panel-default">
	                            <div class="panel-heading">
	                                <h4 class="panel-title">
	                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse02">
	                                        <i class="switch fa fa-plus"></i>
	                                        강아지가 먹어야할 음식과 먹지말아야할 음식은 뭔가요?
	                                    </a>
	                                </h4>
	                            </div>
	                            <div id="collapse02" class="panel-collapse collapse">
	                                <div class="panel-body">
	                                먹지 말아야할 음식 : 우유, 양파, 초콜릿, 포도 <br>
	                                먹어도 되는 음식 : 연어, 닭가슴살, 당근
	                                </div>
	                            </div>
	                        </div>
	
	                        <div class="panel panel-default">
	                            <div class="panel-heading">
	                                <h4 class="panel-title">
	                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
	                                        <i class="switch fa fa-plus"></i>
	                                        외출할 때 강아지에게 인사를 해야 되나요?
	                                    </a>
	                                </h4>
	                            </div>
	                            <div id="collapseTwo" class="panel-collapse collapse">
	                                <div class="panel-body">
	                                외출복으로 갈아입고 주인이 떠나면 강아지는 혼자 남았다고 생각하게 됩니다. <br>
	                                외출할때는 아무말 없이 외출하는 것이 강아지를 배려하는 행동입니다.
	                                </div>
	                            </div>
	                        </div>
	
	                        <div class="panel panel-default">
	                            <div class="panel-heading">
	                                <h4 class="panel-title">
	                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
	                                        <i class="switch fa fa-plus"></i>
	                                        강아지는 색맹인가요?
	                                    </a>
	                                </h4>
	                            </div>
	                            <div id="collapseThree" class="panel-collapse collapse">
	                                <div class="panel-body">
	                                강아지에게는 간상세포와 원뿔세포가 있는데,<br>
	                         	간상세포는 명암을 구분하는 기능을 하고,
	                         	원뿔세포는 빛을 받아들여서 색을 구분하는 기능을 합니다.<br>
	                         	강아지는 간상세포가 사람보다 많지만 원뿔세포는 적어서 색을 제대로 구분하지 못하는 거랍니다.<br>
	                         	노랑,파랑 정도는 구분할 수 있어서 색맹은 아니에요.
	                                </div>
	                            </div>
	                        </div>
	
	                        <div class="panel panel-default">
	                            <div class="panel-heading">
	                                <h4 class="panel-title">
	                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive">
	                                        <i class="switch fa fa-plus"></i>
	                                        예방접종은 몇차까지, 어떤걸 맞추나요?
	                                    </a>
	                                </h4>
	                            </div>
	                            <div id="collapseFive" class="panel-collapse collapse">
	                                <div class="panel-body">
	                                1차- 종합백신,코로나장염백신<br>
	                                2차- 종합백신,코로나장염백신<br>
	                                3차- 종합백신,호흡기백신<br>
	                                4차- 종합백신,호흡기백신,광견병백신<br>
	                                5차- 종합백신,호흡기백신</div>
	                            </div>
	                        </div>
	
	                        <div class="panel panel-default">
	                            <div class="panel-heading">
	                                <h4 class="panel-title">
	                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix">
	                                        <i class="switch fa fa-plus"></i>
	                                        강아지가 산책을 하다가 축 늘어질때 어떻게해야 되나요?
	                                    </a>
	                                </h4>
	                            </div>
	                            <div id="collapseSix" class="panel-collapse collapse">
	                                <div class="panel-body">여름에 이런경우들이 많은데, 바로 열사병이 걸려서 그런거에요<br>
									열사병에 걸리면 몸은 축 늘어지고 눈은 게슴츠레 해지며 숨도 잘못쉰답니다<br>
									바로 그늘진 곳이나 시원한곳으로 자리를 옮겨주고 입에 고인 침을 제거해서 숨쉬기 편하게 만들어주시구요<br>
									차가운 물로 수건을 적신후 얼굴과 몸전체를 닦아주시면서 온몸을 마사지 해주세요
									</div>
	                            </div>
	                        </div>
	
	                        <div class="panel panel-default">
	                            <div class="panel-heading">
	                                <h4 class="panel-title">
	                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseSeven">
	                                        <i class="switch fa fa-plus"></i>
	                                        비밀번호 분실시 어떻게 해야 하나요?
	                                    </a>
	                                </h4>
	                            </div>
	                            <div id="collapseSeven" class="panel-collapse collapse">
	                                <div class="panel-body">
	                                비밀번호 분실시 비밀번호 찾기 버튼을 누르고,<br>
	                                아이디, 이름, 생년월일과 비밀번호 찾기 질문과 답변을 입력하시면<br>
	                                로그인 페이지에서 비밀번호가 출력됩니다.
	                                </div>
	                            </div>
	                        </div>
	
	                        <div class="panel panel-default">
	                            <div class="panel-heading">
	                                <h4 class="panel-title">
	                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseEight">
	                                        <i class="switch fa fa-plus"></i>
	                                        아이디 분실시 어떻게 해야 하나요?
	                                    </a>
	                                </h4>
	                            </div>
	                            <div id="collapseEight" class="panel-collapse collapse">
	                                <div class="panel-body">
	                                아이디 분실시 아이디 찾기 버튼을 누르고<br>
	                               이름, 전화번호를 입력하면 로그인 페이지에서 아이디가 출력됩니다.
	                                </div>
	                            </div>
	                        </div>
	
	                        <div class="panel panel-default">
	                            <div class="panel-heading">
	                                <h4 class="panel-title">
	                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseNine">
	                                        <i class="switch fa fa-plus"></i>
	                                        강아지와 실내에서 할 수 있는 운동이 무엇이 있나요?
	                                    </a>
	                                </h4>
	                            </div>
	                            <div id="collapseNine" class="panel-collapse collapse">
	                                <div class="panel-body">
	                                던진물건 주워오기, 간식 숨기기, <br>
	                                레이저빔 쏘기, 계단 오르내리기, 줄다리기
	                                </div>
	                            </div>
	                        </div>
	
	                        <div class="panel panel-default">
	                            <div class="panel-heading">
	                                <h4 class="panel-title">
	                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTen">
	                                        <i class="switch fa fa-plus"></i>
	                                        강아지는 스트레스를 어떻게 해소하나요?
	                                    </a>
	                                </h4>
	                            </div>
	                            <div id="collapseTen" class="panel-collapse collapse">
	                                <div class="panel-body">
	                                산책하기 , 맛있는 음식 먹이기, <br>
	                                주인과의 접촉과 소통 , 음악들려주기 
	                                </div>
	                            </div>
	                        </div>
	
	                        <div class="panel panel-default">
	                            <div class="panel-heading">
	                                <h4 class="panel-title">
	                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseEleven">
	                                        <i class="switch fa fa-plus"></i>
	                                        강아지도 우울증에 걸리나요?
	                                    </a>
	                                </h4>
	                            </div>
	                            <div id="collapseEleven" class="panel-collapse collapse">
	                                <div class="panel-body">
	                                강아지도 환경변화(같이 동거동락했던 동물의 죽음이나, 같이 사는 가족의 죽음으로 인한 우울증),<br>
	                          계절변화(동물도 계절의 변화로 인해 정서적 혼란이 올 수 있음),<br>
	                          외로움(혼자 장시간 방치되면 우울증이 올 수 있음)에 의해 우울증이 생길 수 있습니다.                                
	                                </div>
	                            </div>
	                        </div>
	
	                        <div class="panel panel-default">
	                            <div class="panel-heading">
	                                <h4 class="panel-title">
	                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTweleve">
	                                        <i class="switch fa fa-plus"></i>
	                                        둘째 강아지를 입양할때 염두해야 할 점이 있나요?
	                                    </a>
	                                </h4>
	                            </div>
	                            <div id="collapseTweleve" class="panel-collapse collapse">
	                                <div class="panel-body">
	                                우선 첫째강아지를 우선순위에 두어야 합니다. 둘째강아지보다도 첫째 강아지를 보살펴줘야 합니다.<br>
	                                둘째 강아지가 들어오기 전에 첫째 강아지가 다른 강아지와 생활하는 사회성 훈련을 해야합니다.<br>
	                                첫째 강아지와 둘째강아지가 서열싸움을 할 땐 너무 심할 경우, 두마리 다 말려주셔야 합니다.<br>
	                                충분한 시간을 두고 강아지들이 친해질 수 있도록 해주셔야 합니다.
	                                </div>
	                            </div>
	                        </div>
	                   </div>
	                </div>
                </div>
			</section>
	<!--end wrapper-->

	
	<!-- Start Style Switcher -->
    <div class="switcher"></div>
    <!-- End Style Switcher -->
</body>
</html>
<%@ include file="../top_bottom/bottom.jsp"%>
