package third.project.mem_controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import third.project.bean.MemberBean;
import third.project.mem.svc.Id_FindProcessSvc;

@Controller
public class Id_FindProcessController {
	
	@Autowired
	Id_FindProcessSvc svc;
	
	@RequestMapping(value = "/id_findProcess", method = RequestMethod.GET)
	public String id_findProcess(MemberBean mb,HttpServletRequest request) {
		System.out.println("Id_FindProcessController.id_findProcess()");
		System.out.println(mb);
		String id = svc.execute(mb);

		request.setAttribute("mem_id", id);
		
		return "/login";
	}
	
}
