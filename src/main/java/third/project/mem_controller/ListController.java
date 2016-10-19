package third.project.mem_controller;

import java.util.List;

import javax.servlet.http.Cookie;
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
		
				 
		//��臾� list
		List<AnimalInfo> animalList  = null;
		//珥� 由ъ�ㅽ�� ��
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
		
		System.out.println("���ш껄醫� : "+kind);
		System.out.println("list �� : "+listcount);
		
		//��醫� ��泥� DB���� 媛��몄��
		List<KindInfo> kindList = dogDAO.kind_list();
		
		//珥� ���댁� ��
 		int maxpage=(int)((double)listcount/limit+0.95); //0.95瑜� ���댁�� �щ┝ 泥�由�
 		//���� ���댁��� 蹂댁�ъ� ���� ���댁� ��(1, 11, 21 ��...)
 		int startpage = (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1;
 		//���� ���댁��� 蹂댁�ъ� 留�吏�留� ���댁� ��(10, 20, 30 ��...)
		int endpage = startpage+10-1;

 		if (endpage> maxpage) endpage= maxpage;
		
 		request.setAttribute("page", page); //���� ���댁� ��
 		request.setAttribute("maxpage", maxpage); //理��� ���댁� ��
 		request.setAttribute("startpage", startpage); //���� ���댁��� ������ 泥� ���댁� ��
 		request.setAttribute("endpage", endpage); //���� ���댁��� ������ �� ���댁� ��
		request.setAttribute("listcount",listcount); //湲� ��
		request.setAttribute("kindList", kindList); //��醫� 由ъ�ㅽ��
		request.setAttribute("now_kind", kind);//���� ��醫�
		System.out.println("==========================================");
		
		return new ModelAndView("list","animalList", animalList);
	}
	
}
