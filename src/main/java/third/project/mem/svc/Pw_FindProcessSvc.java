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
	
	public MemberBean execute(MemberBean mb) {
		mb.setMem_bir(mb.getMem_bir() + " 00:00:00");
		MemberBean mbByDB = dao.pw_findMember(mb);	
		return mbByDB;
	}
	
	public boolean isEqualAndPassEmail(String a,String b){
		boolean res;
		
		if(a.equals(b)){
			//답변 일치하므로 비밀번호 이메일로 보내는 코드 작성
			res = true;
		}else{
			//답변 불일치하므로 비밀번호를 이메일로 보내지 않는다.
			res = false;
		}
		
		return res;
	}
}
