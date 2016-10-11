package third.project.list_controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class My_adoption_req_listController {
	
	private static final Logger logger = LoggerFactory.getLogger(My_adoption_req_listController.class);
	
	@RequestMapping(value = "/my_adoption_req_list", method = RequestMethod.GET)
	public String info_up() {
		
		System.out.println("My_adoption_req_listController.my_adoption_req_list()");
		return "my_adoption_req_list";
	}
	
}
