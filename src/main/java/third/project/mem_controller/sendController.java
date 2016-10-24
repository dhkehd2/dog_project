package third.project.mem_controller;

import java.sql.Date;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import third.project.board_bean.BoardBean;
import third.project.send_dao.SendDAO;


@Controller
public class sendController {
	@Autowired
	SendDAO sendDAO;
	
	@RequestMapping(value = "/adoption_req_send", method = RequestMethod.GET)
	public String send(BoardBean boardBean) {
	
		System.out.println("sendController.send()");
		
				
		//우리나라 식으로
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 kk시 mm분 ss초");
		String now_date = sdf.format(new java.util.Date());	
		
		System.out.println();
		boardBean.setBOARD_DAY(now_date);
		
		System.out.println(boardBean);
		
		sendDAO.inputsend(boardBean);
		
		return "redirect:/list";
		
	}
}
