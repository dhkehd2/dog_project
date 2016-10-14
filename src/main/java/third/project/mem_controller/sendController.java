package third.project.mem_controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import third.project.dog.bean.AnimalInfo;
import third.project.dog_dao.DogDAO;
import third.project.send.bean.SendInfo;
import third.project.send_dao.SendDAO;
@Controller
public class sendController {
	@Autowired
	SendDAO sendDAO;
	
	@RequestMapping(value = "/adoption_req_send", method = RequestMethod.GET)
	public void send(SendInfo si) {
	
		System.out.println("sendController.inputsend sql(si)");
		 sendDAO.inputsend(si);
		 System.out.println(si);
		
	}
}
