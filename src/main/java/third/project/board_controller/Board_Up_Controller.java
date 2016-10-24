package third.project.board_controller;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import third.project.board_DAO.BoradDAO;
import third.project.board_bean.BoardBean;
import third.project.send_dao.SendDAO;

@Controller
public class Board_Up_Controller {
	
	@Autowired
	BoradDAO boardDAO;
	
	@Autowired
	SendDAO sendDAO;
	
	//page move
	@RequestMapping(value = "/board_up", method = RequestMethod.GET)
	public String get_board_up(HttpServletRequest request,int BOARD_NUM) {
		
		System.out.println("Board_Detail_Controller.get_board_up()");
				
		BoardBean board = boardDAO.get_Board_Bean(BOARD_NUM);
		System.out.println(board);
		request.setAttribute("board", board);
		
		return "board_up";
	}
	
	//update pro
	@RequestMapping(value = "/adoption_req_up", method = RequestMethod.GET)
	public String get_board_up_pro(HttpServletRequest request,BoardBean board) {
		System.out.println("Board_Detail_Controller.get_board_up_pro()");
		
		//날짜 변경
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 kk시 mm분 ss초");
		String now_date = sdf.format(new java.util.Date());	
		
		board.setBOARD_DAY(now_date);
		
		System.out.println(board);
		
		
		sendDAO.board_upProcess(board);
		
		
		return "redirect:/list";
	}
	
	//delete pro
		@RequestMapping(value = "/board_delete", method = RequestMethod.GET)
		public String get_board_delete_pro(int BOARD_NUM) {
			System.out.println("Board_Detail_Controller.get_board_delete_pro()");
			
			sendDAO.board_delete_Process(BOARD_NUM);
			
			return "redirect:/list";
		}
	
	
}
