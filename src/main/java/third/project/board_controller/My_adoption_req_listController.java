package third.project.board_controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import third.project.board_DAO.BoradDAO;
import third.project.board_bean.BoardBean;

/**
 * Handles requests for the application home page.
 */
@Controller
public class My_adoption_req_listController {
	
	
	@Autowired
	BoradDAO boardDAO;
	
	private static final Logger logger = LoggerFactory.getLogger(My_adoption_req_listController.class);
	
	@RequestMapping(value = "/my_adoption_list", method = RequestMethod.GET)
	public String get_board_list(HttpServletRequest request,String now_id) {
		
		System.out.println("My_adoption_req_listController.get_board_list()");
		
		System.out.println(now_id);
		
		int page=1;
		int limit=10;
		
		int listcount=0;
		
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
			
		
		
		List<BoardBean> board_List  = null;
		
		if(now_id!=null && now_id.equals("admin")){//관리자일때
			board_List = boardDAO.get_Board_List(page, limit);
			listcount=boardDAO.get_Board_ListCount();//리스트 수 받아옴
		}else{//일반 사용자일때
			board_List = boardDAO.get_Board_List(page, limit, now_id);
			listcount=boardDAO.get_Board_ListCount(now_id);//리스트 수 받아옴
		}
		
		//총 페이지 수
 		int maxpage=(int)((double)listcount/limit+0.95); //0.95를 더해서 올림 처리
 		//현재 페이지에 보여줄 시작 페이지 수(1, 11, 21 등...)
 		int startpage = (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1;
 		//현재 페이지에 보여줄 마지막 페이지 수(10, 20, 30 등...)
		int endpage = startpage+10-1;

 		if (endpage> maxpage) endpage= maxpage;
		
		request.setAttribute("page", page); //현재 페이지 수
 		request.setAttribute("maxpage", maxpage); //최대 페이지 수
 		request.setAttribute("startpage", startpage); //현재 페이지에 표시할 첫 페이지 수
 		request.setAttribute("endpage", endpage); //현재 페이지에 표시할 끝 페이지 수
		request.setAttribute("listcount",listcount); //글 수
		request.setAttribute("board_List", board_List);//글 리스트
				
		return "my_adoption_req_list";
	}
	
}
