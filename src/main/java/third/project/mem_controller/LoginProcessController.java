package third.project.mem_controller;

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
	public String loginProcess(MemberBean mb) {
		svc.execute(mb);
		System.out.println("LoginProcessController.loginProcess()");
		
		return "redirect:/list";
	}
}
