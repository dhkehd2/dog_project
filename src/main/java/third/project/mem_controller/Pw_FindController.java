package third.project.mem_controller;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class Pw_FindController {

	@RequestMapping(value = "/pw_find", method = RequestMethod.GET)
	public String pw_find() {
		System.out.println("Pw_FindController.pw_find()");
		return "pw_find";
	}
	
}
