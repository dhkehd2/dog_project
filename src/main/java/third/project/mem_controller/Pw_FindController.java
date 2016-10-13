package third.project.mem_controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import third.project.bean.MemberBean;
import third.project.mem.svc.Pw_FindSvc;

@Controller
public class Pw_FindController {
	
	@Autowired
	Pw_FindSvc svc;
	
	@RequestMapping(value = "/pw_find", method = RequestMethod.GET)
	public String pw_find(Model model,MemberBean mb) {
	
		svc.execute(mb);
		System.out.println("Pw_FindController.pw_find()");
		return "pw_find";
	}
	
}
