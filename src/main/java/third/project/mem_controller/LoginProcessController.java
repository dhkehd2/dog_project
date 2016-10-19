package third.project.mem_controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import third.project.bean.MemberBean;
import third.project.mem.svc.LoginProcessSvc;

@Controller
public class LoginProcessController {

	@Autowired
	LoginProcessSvc svc;
	
	@RequestMapping(value="loginProcess")
	public String loginProcess(MemberBean mb,HttpSession session,HttpServletResponse response,String mem_checkId) {
		System.out.println("LoginProcessController.loginProcess()");
		session.setAttribute("mem_checkId", mem_checkId);
		boolean isCorrectPw = svc.execute(mb);
		if(isCorrectPw){
			//로그인이 성공
			session.setAttribute("mem_id", mb.getMem_id());		
			return "redirect:/list";
		}else {
			//로그인이 실패
			return "redirect:/login";
		}
		
	}
}
