package third.project.list_controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import third.project.bean.MemberBean;
import third.project.mem.svc.Info_UpProcessSvc;

public class Info_UpProcessController {

	@Autowired
	Info_UpProcessSvc svc;
	
	public void info_UpProcess(MemberBean mb, HttpServletRequest request) {
		
		
	}
	
}
