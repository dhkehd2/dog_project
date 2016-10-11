package third.project.mem_controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Pw_FindController {
	
	@RequestMapping(value = "/pw_find", method = RequestMethod.GET)
	public String pw_find(Locale locale, Model model) {
	
		System.out.println("Pw_FindController.pw_find()");
		return "pw_find";
	}
	
}
