package third.project.my_page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class My_Page_Controller {
	
	//page move
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public String get_my_page() {
	
		System.out.println("My_Page_Controller.get_my_page()");
		
		return "my_page";
	}
	
	
	
}
