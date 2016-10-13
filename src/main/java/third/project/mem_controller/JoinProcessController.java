package third.project.mem_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import third.project.bean.MemberBean;
import third.project.mem.svc.JoinProcessSvc;

public class JoinProcessController {
	
	@Autowired
	JoinProcessSvc svc;

	@RequestMapping("/joinProcess")
	public String writeProcess(MemberBean mb) {

		svc.execute(mb);
		
		return "redirect:/view/login.jsp";
	}
}
