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

	public boolean isEqualAndPassEmail(String a, String b,String mem_pw,String mem_email) {
		boolean res;

		if (a.equals(b)) {
			// 비밀번호가 일치하므로 비밀번호를 메일로 보내준다.
			MimeMessage msg = mailSender.createMimeMessage();
			try{
				msg.setSubject("Password");
				msg.setText("Your Password : "+ mem_pw);
				msg.setRecipient(RecipientType.TO, new InternetAddress(mem_email));
			}catch(Exception e){
				
			}
			
			mailSender.send(msg);
			res = true;
		} else {
			// 비밀버호가 불일치하므로 메일로 보낼 필요가 없다.
			res = false;
		}

		return res;
	}
}
