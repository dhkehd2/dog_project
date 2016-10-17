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
	
	@RequestMapping(value = "/pw_findProcess", method = RequestMethod.GET)
	@ResponseBody
	public String getQuestion(MemberBean mb,HttpServletRequest request,Model model) {
		System.out.println("Pw_FindProcessController.pw_findProcess()");
		boolean isCorrect = svc.execute(mb,request);
		
		System.out.println(request.getAttribute("mbByDB"));
		model.addAttribute("mbByDB", request.getAttribute("mbByDB"));
		
		if(isCorrect){
			//비밀번호 질문 출력
			return "correct";
		}else{
			//입력한 정보가 올바르지 않다
			return "incorrect";
		}
	}
	
}
