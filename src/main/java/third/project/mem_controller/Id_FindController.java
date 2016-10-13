package third.project.mem_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import third.project.bean.MemberBean;
import third.project.mem.svc.Id_FindSvc;

@Controller
public class Id_FindController {
	
	@Autowired
	Id_FindSvc svc;
	
	@RequestMapping(value = "/id_find", method = RequestMethod.GET)
	public String id_find(MemberBean mb) {
	
		svc.execute(mb);
		System.out.println("Id_FindController.id_find()");
		return "id_find";
	}
	
}
