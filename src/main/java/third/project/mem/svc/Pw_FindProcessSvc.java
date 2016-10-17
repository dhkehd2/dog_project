package third.project.mem.svc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import third.project.bean.MemberBean;
import third.project.mem_dao.MemberDAO;

@Service
public class Pw_FindProcessSvc {

	@Autowired
	MemberDAO dao;
	
	public boolean execute(MemberBean mb,HttpServletRequest request) {
		boolean res;
		mb.setMem_bir(mb.getMem_bir() + " 00:00:00");
		MemberBean mbByDB = dao.pw_findMember(mb);
		
		request.setAttribute("mbByDB", mbByDB);
		
		if(mbByDB != null){
			//id에 해당하는 회원정보 데이터베이스가 있다.
			if(mb.getMem_name().equals(mbByDB.getMem_name()) && mb.getMem_bir().equals(mbByDB.getMem_bir())){
				//둘다 같다면 통과
				res = true;
			}else{
				//역시 잘못된 정보
				res = false;
			}
		}else{
			//id에 해당하는 회원정보가 데이터베이스에 없다.
			res = false;
		}
		
		return res;
	}
}
