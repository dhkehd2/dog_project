package third.project.mem.svc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import third.project.bean.MemberBean;
import third.project.mem_dao.MemberDAO;

@Service
public class Pw_FindProcessSvc {

	@Autowired
	MemberDAO dao;
	
	@Autowired
	private MailSender mailSender;

	public MemberBean execute(MemberBean mb) {
		mb.setMem_bir(mb.getMem_bir() + " 00:00:00");
		MemberBean mbByDB = dao.pw_findMember(mb);
		return mbByDB;
	}

	public boolean isEqualAndPassEmail(String a, String b) {
		boolean res;

		if (a.equals(b)) {
			// 답변 일치하므로 비밀번호 이메일로 보내는 코드 작성
			SimpleMailMessage message = new SimpleMailMessage();
			message.setSubject("hahaha");
			message.setFrom("yyk1119@gmail.com");
			message.setText("hihi");
			message.setTo("gogoy2643@gmail.com");
			
			System.out.println(mailSender);
			mailSender.send(message);
			res = true;
		} else {
			// 답변 불일치하므로 비밀번호를 이메일로 보내지 않는다.
			res = false;
		}

		return res;
	}
}
