package third.project.board_bean;

//입양신청 내역 빈
/*
 CREATE TABLE BOARD_TB(
	BOARD_NUM NUMBER,--글번호
	BOARD_SUBJECT VARCHAR2(100),--제목
	BOARD_ID VARCHAR2(20),--아이디
	BOARD_EMAIL VARCHAR2(80),--이메일
	BOARD_TEL VARCHAR2(20),--전화번호
	BOARD_ARAE VARCHAR2(800), --입양지역
	BOARD_desertionNo VARCHAR2(100), --유기번호
	BOARD_HOW Clob,--보육환경 설명
	BOARD_WHY Clob,--입양신청 이유

	BOARD_RE_REF NUMBER,--참조되는 글 번호
	BOARD_RE_LEV NUMBER,--들여쓰기 수준
	BOARD_RE_SEQ NUMBER,-- 글 순번
	BOARD_READCOUNT NUMBER,--조회수
	BOARD_DATE String, --날짜
	PRIMARY KEY(BOARD_NUM)
);
*/
public class BoardBean {
	int BOARD_NUM;
	String BOARD_SUBJECT;
	String BOARD_ID;
	String BOARD_EMAIL;
	String BOARD_TEL;
	String BOARD_ARAE;
	String BOARD_desertionNo;
	String BOARD_HOW;
	String BOARD_WHY;
	
	int BOARD_RE_REF;
	int BOARD_RE_LEV;
	int BOARD_RE_SEQ;
	int BOARD_READCOUNT;
	String BOARD_DAY;
	public int getBOARD_NUM() {
		return BOARD_NUM;
	}
	public void setBOARD_NUM(int bOARD_NUM) {
		BOARD_NUM = bOARD_NUM;
	}
	public String getBOARD_SUBJECT() {
		return BOARD_SUBJECT;
	}
	public void setBOARD_SUBJECT(String bOARD_SUBJECT) {
		BOARD_SUBJECT = bOARD_SUBJECT;
	}
	public String getBOARD_ID() {
		return BOARD_ID;
	}
	public void setBOARD_ID(String bOARD_ID) {
		BOARD_ID = bOARD_ID;
	}
	public String getBOARD_EMAIL() {
		return BOARD_EMAIL;
	}
	public void setBOARD_EMAIL(String bOARD_EMAIL) {
		BOARD_EMAIL = bOARD_EMAIL;
	}
	public String getBOARD_TEL() {
		return BOARD_TEL;
	}
	public void setBOARD_TEL(String bOARD_TEL) {
		BOARD_TEL = bOARD_TEL;
	}
	public String getBOARD_ARAE() {
		return BOARD_ARAE;
	}
	public void setBOARD_ARAE(String bOARD_ARAE) {
		BOARD_ARAE = bOARD_ARAE;
	}
	public String getBOARD_desertionNo() {
		return BOARD_desertionNo;
	}
	public void setBOARD_desertionNo(String bOARD_desertionNo) {
		BOARD_desertionNo = bOARD_desertionNo;
	}
	public String getBOARD_HOW() {
		return BOARD_HOW;
	}
	public void setBOARD_HOW(String bOARD_HOW) {
		BOARD_HOW = bOARD_HOW;
	}
	public String getBOARD_WHY() {
		return BOARD_WHY;
	}
	public void setBOARD_WHY(String bOARD_WHY) {
		BOARD_WHY = bOARD_WHY;
	}
	public int getBOARD_RE_REF() {
		return BOARD_RE_REF;
	}
	public void setBOARD_RE_REF(int bOARD_RE_REF) {
		BOARD_RE_REF = bOARD_RE_REF;
	}
	public int getBOARD_RE_LEV() {
		return BOARD_RE_LEV;
	}
	public void setBOARD_RE_LEV(int bOARD_RE_LEV) {
		BOARD_RE_LEV = bOARD_RE_LEV;
	}
	public int getBOARD_RE_SEQ() {
		return BOARD_RE_SEQ;
	}
	public void setBOARD_RE_SEQ(int bOARD_RE_SEQ) {
		BOARD_RE_SEQ = bOARD_RE_SEQ;
	}
	public int getBOARD_READCOUNT() {
		return BOARD_READCOUNT;
	}
	public void setBOARD_READCOUNT(int bOARD_READCOUNT) {
		BOARD_READCOUNT = bOARD_READCOUNT;
	}
	public String getBOARD_DAY() {
		return BOARD_DAY;
	}
	public void setBOARD_DAY(String bOARD_DAY) {
		BOARD_DAY = bOARD_DAY;
	}
	@Override 
	public String toString() {
		return "BoardBean [BOARD_NUM=" + BOARD_NUM + ", BOARD_SUBJECT=" + BOARD_SUBJECT + ", BOARD_ID=" + BOARD_ID
				+ ", BOARD_EMAIL=" + BOARD_EMAIL + ", BOARD_TEL=" + BOARD_TEL + ", BOARD_ARAE=" + BOARD_ARAE
				+ ", BOARD_desertionNo=" + BOARD_desertionNo + ", BOARD_HOW=" + BOARD_HOW + ", BOARD_WHY=" + BOARD_WHY
				+ ", BOARD_RE_REF=" + BOARD_RE_REF + ", BOARD_RE_LEV=" + BOARD_RE_LEV + ", BOARD_RE_SEQ=" + BOARD_RE_SEQ
				+ ", BOARD_READCOUNT=" + BOARD_READCOUNT + ", BOARD_DAY=" + BOARD_DAY + "]";
	}
	
	
	
	
	
}