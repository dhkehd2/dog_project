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
	
	//사용자 질문 얻어오는 컨트롤러
	@RequestMapping(value = "/pw_findProcess", method = RequestMethod.GET)
	public @ResponseBody MemberBean getQuestion(MemberBean mb) {
		System.out.println("Pw_FindProcessController.pw_findProcess()");
		MemberBean mbByDB = svc.execute(mb);
		
		return mbByDB;
	}
	
	//사용자 답변 맞는지 확인하는 컨트롤러
	@RequestMapping(value = "/pw_findProcess_final", method = RequestMethod.GET)
	public String isCorrectAnswer(String mem_a,String cli_a,HttpServletRequest request) {
		System.out.println("Pw_FindProcessController.isCorrectAnswer()");
		
		boolean isEqual = svc.isEqualAndPassEmail(mem_a, cli_a);
		
		request.setAttribute("isCorrectAnswer", new Boolean(isEqual));
		
		if(isEqual){
			return "login";
		}else{
			return "pw_find";
		}
		
		
	}
}
