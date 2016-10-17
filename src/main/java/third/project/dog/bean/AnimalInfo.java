package third.project.dog.bean;

public class AnimalInfo {

	String desertionNo; //유기번호
	String filename; //Thumbnail Image
	String happenDt; //접수일
	String happenPlace; //발견장소
	String kindCd; //품종
	String colorCd; //색상
	String age; //나이
	String weight; //체중
	String noticeNo; //공고번호
	String noticeSdt; //공고시작일
	String noticeEdt; //공고 종료일
	String popfile; //원본 Image
	String processState; //상태
	String sexCd; //성별
	String neuterYn; //중성화여부
	String specialMark; //특징
	String careNm; //보호소이름
	String careTel; //보호소전화번호
	String careAddr; //보호장소
	String orgNm; //관할기관
	String chargeNm; //담당자
	String officetel; //담당자연락처
	String noticeComment; //특이사항
	
	String kindNum;//필터위한 품종 번호
	
	
	@Override
	public String toString() {
		return "AnimalInfo ["
				+ "\ndesertionNo=" + desertionNo 
				+ "\n filename=" + filename 
				+ "\n happenDt=" + happenDt
				+ "\n happenPlace=" + happenPlace 
				+ "\n kindCd=" + kindCd 
				+ "\n colorCd=" + colorCd 
				+ "\n age=" + age
				+ "\n weight=" + weight 
				+ "\n noticeNo=" + noticeNo 
				+ "\n noticeSdt=" + noticeSdt 
				+ "\n noticeEdt=" + noticeEdt 
				+ "\n popfile=" + popfile 
				+ "\n processState=" + processState 
				+ "\n sexCd=" + sexCd
				+ "\n neuterYn=" + neuterYn 
				+ "\n specialMark=" + specialMark 
				+ "\n careNm=" + careNm 
				+ "\n careTel=" + careTel 
				+ "\n careAddr=" + careAddr 
				+ "\n orgNm=" + orgNm 
				+ "\n chargeNm=" + chargeNm 
				+ "\n officetel=" + officetel 
				+ "\n noticeComment=" + noticeComment
				+ "\n kindNum="+ kindNum
				+ "\n]";
	}
	public String getKindNum() {
		return kindNum;
	}
	public void setKindNum(String kindNum) {
		this.kindNum = kindNum;
	}
	public String getDesertionNo() {
		return desertionNo;
	}
	public void setDesertionNo(String desertionNo) {
		this.desertionNo = desertionNo;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getHappenDt() {
		return happenDt;
	}
	public void setHappenDt(String happenDt) {
		this.happenDt = happenDt;
	}
	public String getHappenPlace() {
		return happenPlace;
	}
	public void setHappenPlace(String happenPlace) {
		this.happenPlace = happenPlace;
	}
	public String getKindCd() {
		return kindCd;
	}
	public void setKindCd(String kindCd) {
		this.kindCd = kindCd;
	}
	public String getColorCd() {
		return colorCd;
	}
	public void setColorCd(String colorCd) {
		this.colorCd = colorCd;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(String noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getNoticeSdt() {
		return noticeSdt;
	}
	public void setNoticeSdt(String noticeSdt) {
		this.noticeSdt = noticeSdt;
	}
	public String getNoticeEdt() {
		return noticeEdt;
	}
	public void setNoticeEdt(String noticeEdt) {
		this.noticeEdt = noticeEdt;
	}
	public String getPopfile() {
		return popfile;
	}
	public void setPopfile(String popfile) {
		this.popfile = popfile;
	}
	public String getProcessState() {
		return processState;
	}
	public void setProcessState(String processState) {
		this.processState = processState;
	}
	public String getSexCd() {
		return sexCd;
	}
	public void setSexCd(String sexCd) {
		this.sexCd = sexCd;
	}
	public String getNeuterYn() {
		return neuterYn;
	}
	public void setNeuterYn(String neuterYn) {
		this.neuterYn = neuterYn;
	}
	public String getSpecialMark() {
		return specialMark;
	}
	public void setSpecialMark(String specialMark) {
		this.specialMark = specialMark;
	}
	public String getCareNm() {
		return careNm;
	}
	public void setCareNm(String careNm) {
		this.careNm = careNm;
	}
	public String getCareTel() {
		return careTel;
	}
	public void setCareTel(String careTel) {
		this.careTel = careTel;
	}
	public String getCareAddr() {
		return careAddr;
	}
	public void setCareAddr(String careAddr) {
		this.careAddr = careAddr;
	}
	public String getOrgNm() {
		return orgNm;
	}
	public void setOrgNm(String orgNm) {
		this.orgNm = orgNm;
	}
	public String getChargeNm() {
		return chargeNm;
	}
	public void setChargeNm(String chargeNm) {
		this.chargeNm = chargeNm;
	}
	public String getOfficetel() {
		return officetel;
	}
	public void setOfficetel(String officetel) {
		this.officetel = officetel;
	}
	public String getNoticeComment() {
		return noticeComment;
	}
	public void setNoticeComment(String noticeComment) {
		this.noticeComment = noticeComment;
	}

	
}
