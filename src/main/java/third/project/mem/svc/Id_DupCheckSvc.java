package third.project.mem.svc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import third.project.mem_dao.MemberDAO;

@Service
public class Id_DupCheckSvc {

	@Autowired
	MemberDAO dao;
	
	public boolean execute(String id) {
		String selectId = dao.id_check(id);
		if(id.equals(selectId)){
			return true;
		}else {
			return false;
		}
	}
}
