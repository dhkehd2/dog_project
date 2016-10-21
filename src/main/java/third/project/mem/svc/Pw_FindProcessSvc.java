package third.project.mem.svc;

import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

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
	private JavaMailSender mailSender;

	public MemberBean execute(MemberBean mb) {
		mb.setMem_bir(mb.getMem_bir() + " 00:00:00");
		MemberBean mbByDB = dao.pw_findMember(mb);
		return mbByDB;
	}

	public boolean isEqualAndPassEmail(String a, String b) {
		boolean res;

		if (a.equals(b)) {
			// �듬� �쇱���誘�濡� 鍮�諛�踰��� �대��쇰� 蹂대�대�� 肄��� ����
			MimeMessage msg = mailSender.createMimeMessage();
			try{
				msg.setSubject("hahaha");
				msg.setText("hihi");
				msg.setRecipient(RecipientType.TO, new InternetAddress("gogoy2643@naver.com"));
			}catch(Exception e){
				
			}
			
			mailSender.send(msg);
			res = true;
		} else {
			// �듬� 遺��쇱���誘�濡� 鍮�諛�踰��몃�� �대��쇰� 蹂대�댁� ������.
			res = false;
		}

		return res;
	}
}
