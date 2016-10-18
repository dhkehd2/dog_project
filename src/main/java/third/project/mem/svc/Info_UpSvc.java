package third.project.mem.svc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import third.project.bean.MemberBean;
import third.project.mem_dao.MemberDAO;

@Service
public class Info_UpSvc {

	@Autowired
	MemberDAO dao;
	
	public MemberBean execute(String id) {
		MemberBean memberBean = dao.info_upMember(id);
		return memberBean;
	}
}