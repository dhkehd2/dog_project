package third.project.mem_controller;

import java.util.List;

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
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list(HttpServletRequest request) {
			
		System.out.println("ListController.list()");
				
		int page=1;
		int limit=10;
		
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
		
				 
		//동물 list
		List<AnimalInfo> animalList  = null;
		//총 리스트 수
		int listcount = 0;
		
		String kind = request.getParameter("kind");
		
		
		if(kind==null || kind.equals("all")){
			listcount=dao.getListCount();
			animalList = dao.getList(page, limit);
			kind="all"; 
		}else{
			listcount=dao.getListCount(kind); 
			animalList = dao.getList(page, limit, kind);
		}
		
		System.out.println("현재견종 : "+kind);
		System.out.println("list 수 : "+listcount);
		
		//품종 전체 DB에서 가져옴
		List<KindInfo> kindList = dogDAO.kind_list();
		
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
		request.setAttribute("kindList", kindList); //품종 리스트
		request.setAttribute("now_kind", kind);//현재 품종
		System.out.println("==========================================");
		
		return new ModelAndView("list","animalList", animalList);
	}
	
}
