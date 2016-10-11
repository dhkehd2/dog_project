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
public class Animal_detail_upController {
	
	private static final Logger logger = LoggerFactory.getLogger(Animal_detail_upController.class);
	
	@RequestMapping(value = "/animal_detail", method = RequestMethod.GET)
	public String info_up() {
		
		System.out.println("Animal_detai.animal_detail()");
		return "animal_detail";
	}
	
}
