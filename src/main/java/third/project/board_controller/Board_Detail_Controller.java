package third.project.board_controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import third.project.board_DAO.BoradDAO;
import third.project.board_bean.BoardBean;

@Controller
public class Board_Detail_Controller {
	
	@Autowired
	BoradDAO boardDAO;
	
	@RequestMapping(value = "/board_detail", method = RequestMethod.GET)
	public String get_board_detail(HttpServletRequest request,int BOARD_NUM) {
		
		System.out.println("Board_Detail_Controller.get_board_list()");
				
		BoardBean board = boardDAO.get_Board_Bean(BOARD_NUM);
		System.out.println(board);
		request.setAttribute("board", board);
		
		return "board_detail_view";
	}
	
}
