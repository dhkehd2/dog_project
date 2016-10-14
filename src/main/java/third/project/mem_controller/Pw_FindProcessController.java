package third.project.mem_controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import third.project.bean.MemberBean;
import third.project.mem.svc.Pw_FindProcessSvc;

@Controller
public class Pw_FindProcessController {
	
	@Autowired
	Pw_FindProcessSvc svc;
	
	@RequestMapping(value = "/pw_findProcess", method = RequestMethod.GET)
	public String pw_findProcess(Model model,MemberBean mb) {
	
		svc.execute(mb);
		System.out.println("Pw_FindProcessController.pw_findProcess()");
		return "redirect:/login";
	}
	
}
