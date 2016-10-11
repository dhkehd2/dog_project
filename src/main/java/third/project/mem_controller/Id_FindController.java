package third.project.mem_controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Id_FindController {
	
	@RequestMapping(value = "/id_find", method = RequestMethod.GET)
	public String id_find() {
	
		System.out.println("Id_FindController.id_find()");
		return "id_find";
	}
	
}
