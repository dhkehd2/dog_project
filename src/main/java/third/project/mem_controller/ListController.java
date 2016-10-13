package third.project.mem_controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import third.project.dog.bean.AnimalInfo;
import third.project.dog_dao.DogDAO;

@Controller
public class ListController {
	
	@Autowired
	DogDAO dogDAO;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list() {
	
		System.out.println("ListController.list()");
		List<AnimalInfo> animalList = dogDAO.animal_list();
		System.out.println(animalList);
		return new ModelAndView("list","animalList", animalList);
	}
	
}
