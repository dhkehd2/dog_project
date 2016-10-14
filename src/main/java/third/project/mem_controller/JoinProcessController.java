package third.project.mem_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import third.project.bean.MemberBean;
import third.project.mem.svc.JoinProcessSvc;

@Controller
public class JoinProcessController {
	
	@Autowired
	JoinProcessSvc svc;

	@RequestMapping("/joinProcess")
	public String joinProcess(MemberBean mb) {
		
		svc.execute(mb);
		
		return "redirect:/login";
	}
}
