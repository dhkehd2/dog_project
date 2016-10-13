package third.project.list_controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import third.project.dog.bean.AnimalInfo;
import third.project.dog_dao.DogDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class Animal_detail_upController {

	@Autowired
	DogDAO dogDAO;
	
	@RequestMapping(value = "/animal_detail", method = RequestMethod.GET)
	public ModelAndView info_up(String desertionNo) {
		
		System.out.println("Animal_detail.animal_detail()");
		AnimalInfo animalInfo = dogDAO.animal_info_select(desertionNo);
		
		return new ModelAndView("animal_detail","animalInfo", animalInfo);
	}
	
}
