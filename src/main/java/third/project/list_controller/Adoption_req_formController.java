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
public class Adoption_req_formController {
	
	private static final Logger logger = LoggerFactory.getLogger(Adoption_req_formController.class);
	
	@RequestMapping(value = "/adoption_req_form", method = RequestMethod.GET)
	public String info_up() {
		
		System.out.println("Adoption_req_formController.adoption_req_form()");
		return "adoption_req_form";
	}
	
}
