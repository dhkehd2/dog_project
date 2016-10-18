package third.project.mem.svc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import third.project.bean.MemberBean;
import third.project.mem_dao.MemberDAO;

public class Info_UpProcessSvc {

	@Autowired
	MemberDAO dao;
	
	public void execute() {
		
	}
}
