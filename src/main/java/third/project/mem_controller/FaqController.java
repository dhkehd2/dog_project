package third.project.mem_controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FaqController {

	@RequestMapping(value = "faq")
	public String FaqProcess() {
		return "faq";
	}
	
}
