package third.project.mem_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import third.project.bean.MemberBean;
import third.project.mem.svc.Id_FindProcessSvc;

@Controller
public class Id_FindController {
		
	@RequestMapping(value = "/id_find", method = RequestMethod.GET)
	public String id_find(MemberBean mb) {
			
		System.out.println("Id_FindController.id_find()");
		return "id_find";
	}
	
}
