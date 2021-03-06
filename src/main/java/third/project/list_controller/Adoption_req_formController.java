package third.project.list_controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import third.project.bean.MemberBean;
import third.project.mem_dao.MemberDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class Adoption_req_formController {
	
	private static final Logger logger = LoggerFactory.getLogger(Adoption_req_formController.class);
	@Autowired
	MemberDAO memdao;
	
	@RequestMapping(value = "/adoption_req_form", method = RequestMethod.GET)
	public ModelAndView info_up(String id,String num, Model model,HttpServletRequest request) {
		System.out.println("신청자 아이디 = "+id);
		MemberBean m = new MemberBean();
		m.setMem_id(id);
		MemberBean memberInfo = memdao.loginMember(m);
		System.out.println("Adoption_req_formController.adoption_req_form()");
		model.addAttribute("num",num);
		System.out.println("신청유기번호 = "+num);
		
		request.setAttribute("now_id", id);
		
		return new ModelAndView("adoption_req_form","memberInfo", memberInfo);
	}
	
}
