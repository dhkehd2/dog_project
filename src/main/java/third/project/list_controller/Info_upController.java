package third.project.list_controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import third.project.bean.MemberBean;
import third.project.mem.svc.Info_UpProcessSvc;
import third.project.mem.svc.Info_UpSvc;

/**
 * Handles requests for the application home page.
 */
@Controller
public class Info_upController {
	
	private static final Logger logger = LoggerFactory.getLogger(Info_upController.class);
	
	@Autowired
	Info_UpSvc svc;
	
	@RequestMapping(value = "/info_up", method = RequestMethod.GET)
	public String info_up(HttpSession session, HttpServletRequest request) {
		
		String id = (String) session.getAttribute("mem_id");
		MemberBean memberBean = svc.execute(id);
		request.setAttribute("mb", memberBean);
		
		System.out.println("Info_upController.info_up()");
		return "info_up";
	}
	
}
