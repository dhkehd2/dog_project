package third.project.mem_controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import third.project.dog.bean.AnimalInfo;
import third.project.dog.bean.KindInfo;
import third.project.dog_dao.DogDAO;
import third.project.dog_dao.DogListDAO;

@Controller
public class ListController {
	
	@Autowired
	DogDAO dogDAO;
	
	@Autowired
	DogListDAO dao;
	
	Map<String,String> sido_list = new HashMap<String, String>();

	public ListController() {
		sido_list.put("6110000", "서울특별시");
		sido_list.put("6260000", "부산광역시");
		sido_list.put("6270000", "대구광역시");
		sido_list.put("6280000", "인천광역시");
		sido_list.put("6290000", "광주광역시");
		sido_list.put("5690000", "세종특별자치시");
		sido_list.put("6300000", "대전광역시");
		sido_list.put("6310000", "울산광역시");
		sido_list.put("6410000", "경기도");
		sido_list.put("6420000", "강원도");
		sido_list.put("6430000", "충청북도");
		sido_list.put("6440000", "충청남도");
		sido_list.put("6450000", "전라북도");
		sido_list.put("6460000", "전라남도");
		sido_list.put("6470000", "경상북도");
		sido_list.put("6480000", "경상남도");
		sido_list.put("6500000", "제주특별자치도");
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list(HttpServletRequest request) {
			
		System.out.println("ListController.list()");
		
		int nowpage=1;
		int limit=10;
		
		if(request.getParameter("nowpage")!=null){
			nowpage=Integer.parseInt(request.getParameter("nowpage"));
		}
		
		
		//============================[지역 검색정보 받아오기]================================
		String sido_code = request.getParameter("sido_code");//현페이지에 저장할 시도코드
		String sido_name = request.getParameter("sido_name");//현페이지에 저자할 시도이름
		String gungu_name = request.getParameter("gungu_name");//현페이지에 저장할 군구이름
		
		//받아온 정보가 null일 경우 초기화
		if(sido_code==null){sido_code="all";}
		if(sido_name==null){sido_name="all";}
		if(gungu_name==null){gungu_name="선택";}
		
		ArrayList<String> sigungu = new ArrayList<String>();//받아온 전국 시군구 리스트
		
		for (int i = 1; i <= 17; i++) {
			String nowsigungu = request.getParameter("SUB"+i);
			if(nowsigungu!=null){
				sigungu.add(nowsigungu);
			}else{
				sigungu.add("선택");
			}
		}
		
		//시도 이름 리스트에서 검색 후 저장
		if(sido_code!=null){
			for(String key:sido_list.keySet()){
				if(key.equals(sido_code)){
					sido_name=sido_list.get(key);
				}
			}
		}
		
		//시도 코드가 all 이 아니면 for문 실행
		//가져온 시군구가 null또는 선택이 아닐시
		if(!sido_name.equals("all")){
			for(String emp:sigungu){
				if(!emp.equals("선택")){
					gungu_name=emp;
				}
			}
		}
		
		
		
		System.out.println("현재 시도코드 : "+sido_code);
		System.out.println("현재 시도이름 : "+sido_name);
		System.out.println("현재 시군구 : "+gungu_name);
		
		request.setAttribute("sido_code", sido_code);
		request.setAttribute("sido_name", sido_name);
		request.setAttribute("gungu_name", gungu_name);
		
		//============================[지역 검색 받아오기 끝]================================
		
		//============================[동물 검색 정보 받아오기]================================
				
		// 현재 동물 정보
		String now_kind = request.getParameter("now_kind");
		if(now_kind==null){now_kind="all";}
				
		//품종 전체 DB에서 가져옴
		List<KindInfo> kindList = dogDAO.kind_list();
		
		System.out.println("현재견종 : "+now_kind);
		
		request.setAttribute("kindList", kindList); //품종 리스트 전달
		request.setAttribute("now_kind", now_kind);//현재 품종 전달
		
		//============================[동물 검색 받아오기 끝]================================
		
		
		//============================[검색결과 list 받아오기 시작]================================
		
		//동물 list
		List<AnimalInfo> animalList  = null;
		
		//총 리스트 수
		int listcount = 0;
		
			//견종 : all 시도 : all 시군 : 선택
		if(now_kind.equals("all") && sido_name.equals("all") && gungu_name.equals("선택") ){
			
			listcount=dao.get_x_x_x_ListCount();
			animalList = dao.get_x_x_x_List(nowpage, limit);
			
			//견종 : all 시도 : o 시군 : 선택	
		}else if(now_kind.equals("all") && (!sido_name.equals("all")) && gungu_name.equals("선택") ){
			
			listcount=dao.get_x_o_x_ListCount(sido_name);
			animalList = dao.get_x_o_x_List(nowpage, limit,sido_name);
			
			//견종 : all 시도 : o 시군 : o
		}else if(now_kind.equals("all") && (!sido_name.equals("all")) && (!gungu_name.equals("선택")) ){
			
			listcount=dao.get_x_o_o_ListCount(sido_name, gungu_name);
			animalList = dao.get_x_o_o_List(nowpage, limit,sido_name, gungu_name);
			
			//견종 : o   시도 : all 시군 : 선택
		}else if((!now_kind.equals("all")) && sido_name.equals("all") && gungu_name.equals("선택") ){
			
			listcount = dao.get_o_x_x_ListCount(now_kind); 
			animalList = dao.get_o_x_x_List(nowpage, limit, now_kind);
			
			//견종 : o   시도 : o 시군 : 선택
		}else if((!now_kind.equals("all")) && (!sido_name.equals("all")) && gungu_name.equals("선택") ){
			
			listcount=dao.get_o_o_x_ListCount(now_kind, sido_name);
			animalList = dao.get_o_o_x_List(nowpage, limit, now_kind, sido_name);
			
			//견종 : o   시도 : o 시군 : o
		}else if((!now_kind.equals("all")) && (!sido_name.equals("all")) && (!gungu_name.equals("선택")) ){
			
			listcount=dao.get_o_o_o_ListCount(now_kind, sido_name, gungu_name);
			animalList = dao.get_o_o_o_List(nowpage, limit, now_kind, sido_name, gungu_name);
		}
		
		System.out.println("list 수 : "+listcount);
		
		//============================[검색결과 list 받아오기 끝]================================
		
		//총 페이지 수
 		int maxpage=(int)((double)listcount/limit+0.95); //0.95를 더해서 올림 처리
 		//현재 페이지에 보여줄 시작 페이지 수(1, 11, 21 등...)
 		int startpage = (((int) ((double)nowpage / 10 + 0.9)) - 1) * 10 + 1;
 		//현재 페이지에 보여줄 마지막 페이지 수(10, 20, 30 등...)
		int endpage = startpage+10-1;

 		if (endpage> maxpage) endpage= maxpage;
		
 		System.out.println(nowpage);
 		
 		request.setAttribute("nowpage", nowpage); //현재 페이지 번호
 		request.setAttribute("maxpage", maxpage); //최대 페이지 번호
 		request.setAttribute("startpage", startpage); //현재 페이지에 표시할 첫 페이지 수
 		request.setAttribute("endpage", endpage); //현재 페이지에 표시할 끝 페이지 수
		request.setAttribute("listcount",listcount); //글 수
		
		
		System.out.println("==========================================");
		
		return new ModelAndView("list","animalList", animalList);
	}
	
}
