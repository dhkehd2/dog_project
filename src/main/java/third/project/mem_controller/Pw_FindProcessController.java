package third.project.mem_controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import third.project.bean.MemberBean;
import third.project.mem.svc.Pw_FindProcessSvc;

@Controller
public class Pw_FindProcessController {
	
	@Autowired
	Pw_FindProcessSvc svc;
	
	//�ъ�⑹�� 吏�臾� �살�댁�ㅻ�� 而⑦�몃·��
	@RequestMapping(value = "/pw_findProcess", method = RequestMethod.GET)
	public @ResponseBody MemberBean getQuestion(MemberBean mb) {
		System.out.println("Pw_FindProcessController.pw_findProcess()");
		MemberBean mbByDB = svc.execute(mb);
		
		return mbByDB;
	}
	
	//�ъ�⑹�� �듬� 留���吏� ���명���� 而⑦�몃·��
	@RequestMapping(value = "/pw_findProcess_final", method = RequestMethod.GET)
	public String isCorrectAnswer(String mem_a,String cli_a,String mem_pw,String mem_email, HttpServletRequest request) {
		System.out.println("Pw_FindProcessController.isCorrectAnswer()");
		
		
		boolean isEqual = svc.isEqualAndPassEmail(mem_a, cli_a,mem_pw,mem_email);
		
		request.setAttribute("isCorrectAnswer", new Boolean(isEqual));
		
		
		if(isEqual){
			request.setAttribute("mem_pw", mem_pw);
			return "login";
		}else{
			return "pw_find";
		}
		
		
	}
}
