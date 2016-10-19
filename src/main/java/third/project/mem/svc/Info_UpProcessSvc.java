package third.project.mem.svc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import third.project.bean.MemberBean;
import third.project.mem_dao.MemberDAO;
@Service
public class Info_UpProcessSvc {

	@Autowired
	MemberDAO dao;
	
	public boolean execute(MemberBean mb) {
		
		int updateResult = dao.info_upProcess(mb);
		if(updateResult ==1) {
			return true;
		}else {
			return false;
		}
		
	}
}
