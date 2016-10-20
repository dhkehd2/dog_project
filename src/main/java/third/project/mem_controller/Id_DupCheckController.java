package third.project.mem_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import third.project.mem.svc.Id_DupCheckSvc;

@Controller
public class Id_DupCheckController {

	@Autowired
	Id_DupCheckSvc svc;
	
	@RequestMapping(value ="id_dupCheck")
	@ResponseBody
	public String id_DupCheck(String id) {
		System.out.println("Id_DupCheckController.id_DupCheck()");
		System.out.println(id);
		boolean isCorrectId = svc.execute(id);
		if(isCorrectId) {
			//DB에 존재하는 아이디다
			return "true";
		}else {
			//DB에 존재하지 않는 아이디다
			return "false";
		}
	}
	
}
