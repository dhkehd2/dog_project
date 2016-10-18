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
			// �듬� �쇱���誘�濡� 鍮�諛�踰��� �대��쇰� 蹂대�대�� 肄��� ����
			/*SimpleMailMessage message = new SimpleMailMessage();
			message.setSubject("hahaha");
			message.setFrom("yyk1119@gmail.com");
			message.setText("hihi");
			message.setTo("gogoy2643@gmail.com");
			
			System.out.println(mailSender);
			mailSender.send(message);*/
			res = true;
		} else {
			// �듬� 遺��쇱���誘�濡� 鍮�諛�踰��몃�� �대��쇰� 蹂대�댁� ������.
			res = false;
		}

		return res;
	}
}
