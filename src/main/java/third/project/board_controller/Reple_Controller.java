package third.project.board_controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import third.project.board_DAO.BoradDAO;
import third.project.board_bean.BoardBean;

@Controller
public class Reple_Controller {
	
	
	
	@Autowired
	BoradDAO boardDAO;
	
	@RequestMapping(value = "/reple_form", method = RequestMethod.GET)
	public String get_reple(HttpServletRequest request,int BOARD_NUM) {
		
		System.out.println("Reple_Controller.get_reple()");
				
		BoardBean board = boardDAO.get_Board_Bean(BOARD_NUM);
		System.out.println(board);
		request.setAttribute("board", board);
		
		return "reple_form";
	}
	
}
