package third.project.list_controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import third.project.bean.MemberBean;
import third.project.mem.svc.Info_UpProcessSvc;

@Controller
public class Info_UpProcessController {

	@Autowired
	Info_UpProcessSvc svc;
	
	@RequestMapping(value="info_UpProcess")
	public String info_UpProcess(HttpSession session, MemberBean mb) {
		
		System.out.println("Info_UpProcessController.info_UpProcess()");
		
		Boolean isUpdateSuccess = svc.execute(mb);
		if(isUpdateSuccess) {
			System.out.println("update Success");
			return "redirect:/list";
		}else {
			System.out.println("update Fail");
			return "info_up";
		}
				
	}
	
}
