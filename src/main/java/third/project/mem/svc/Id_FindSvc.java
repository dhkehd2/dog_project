package third.project.mem.svc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import third.project.bean.MemberBean;
import third.project.mem_dao.MemberDAO;

@Service
public class Id_FindSvc {

	@Autowired
	MemberDAO dao;
	
	public void execute(MemberBean mb) {
		dao.id_findMember(mb);
	}
	
}
