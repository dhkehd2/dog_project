package third.project.mem_controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutProcessController {

	@RequestMapping(value= "logout_process")
	public String logoutProcess(HttpSession session) {
		session.removeAttribute("mem_id");
		
		return "redirect:/login";
	}
}
