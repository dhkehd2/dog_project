package third.project.send.bean;

public class SendInfo {

	int send_seq; //글번호
	String send_title; //글제목
	String send_emall; //접수일
	String send_name;//접수자 이름
	String send_tel; //발견장소
	String send_arae; //품종
	String send_desertionNo; //색상
	String send_how; //나이
	String send_why; //체중
	public int getSend_seq() {
		return send_seq;
	}
	public void setSend_seq(int send_seq) {
		this.send_seq = send_seq;
	}
	public String getSend_title() {
		return send_title;
	}
	public void setSend_title(String send_title) {
		this.send_title = send_title;
	}
	public String getSend_emall() {
		return send_emall;
	}
	public void setSend_emall(String send_emall) {
		this.send_emall = send_emall;
	}
	public String getSend_tel() {
		return send_tel;
	}
	public void setSend_tel(String send_tel) {
		this.send_tel = send_tel;
	}
	public String getSend_arae() {
		return send_arae;
	}
	public void setSend_arae(String send_arae) {
		this.send_arae = send_arae;
	}
	public String getSend_desertionNo() {
		return send_desertionNo;
	}
	public void setSend_desertionNo(String send_desertionNo) {
		this.send_desertionNo = send_desertionNo;
	}
	public String getSend_how() {
		return send_how;
	}
	public void setSend_how(String send_how) {
		this.send_how = send_how;
	}
	public String getSend_why() {
		return send_why;
	}
	public void setSend_why(String send_why) {
		this.send_why = send_why;
	}
	@Override
	public String toString() {
		return "SendInfo [send_seq=" + send_seq + ", send_title=" + send_title + ", send_emall=" + send_emall
				+ ", send_tel=" + send_tel + ", send_arae=" + send_arae + ", send_desertionNo=" + send_desertionNo
				+ ", send_how=" + send_how + ", send_why=" + send_why + "]";
	}
	
	
	}
