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
			//DB�� �����ϴ� ���̵��
			return "true";
		}else {
			//DB�� �������� �ʴ� ���̵��
			return "false";
		}
	}
	
}
