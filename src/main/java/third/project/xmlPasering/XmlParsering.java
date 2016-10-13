package third.project.xmlPasering;

import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
 
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

import third.project.dog.bean.AnimalInfo;

import org.w3c.dom.Node;
 
public class XmlParsering {
   String key = "MjOcp7r0zWThoEX%2BdW0edQi4Qcpjoa5HpSS%2FmDN7EikCFSMWjlgCH4V5HvgduYtXB0fhUY5b%2BE3jLawrAG4I8A%3D%3D";
   //유기동물조회 조회조건의 '시도'조건을 가져올 수 있다.
   String sido = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/sido?"
         + "ServiceKey="
         + key 
         + "&numOfRows=999&pageSize=999&pageNo=1&startPage=1";
   
   //유기동물조회 조회조건의 '시군구'조건을 가져올 수 있다.
   String sigungu = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/sigungu?"
         + "upr_cd="
         + "6480000"
         + "&ServiceKey="
         + key;
   
   //유기동물조회 조회조건의 '보호소'조건을 가져올 수 있다.
   String shelter = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/shelter?"
         + "upr_cd="
         + "6110000"
         + "&org_cd="
         + "322000"
         + "0&ServiceKey="
         + key;
   
   //유기동물조회 조회조건의 '품종'조건을 가져올 수 있다.
   /*
   축종코드
    - 개 : 417000
    - 고양이 : 422400
    - 기타 : 429900
   */
   String kind = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/kind?"
         + "up_kind_cd="
         + "417000"
         + "&ServiceKey="
         + key;
   
   //유기동물 정보를 조회한다.
   String abandonmentPublic = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic?"
         + "bgnde="
         + "20160301"//유기날짜(검색시작일)
         + "&endde="
         + "20160430"//유기날짜(검색 종료일)
         + "&pageNo="
         + "1"
         + "&numOfRows="
         + "30"//검색수
         + "&ServiceKey="
         + key;
   
 /*   public static void main(String[] args) {
 
        try{
 
           XmlParsering xmlParsering = new XmlParsering();
           
           //xmlParsering.start(xmlParsering.sido);
           
           //xmlParsering.start(xmlParsering.sigungu);
           
           //xmlParsering.start2(xmlParsering.shelter);
           
           //xmlParsering.start3(xmlParsering.kind);
           
           xmlParsering.start4(xmlParsering.abandonmentPublic);
           
        }catch (Exception e){
            e.printStackTrace();
        }
 
    } */
    
    private void start(String str) throws Exception{
        URL url = new URL(str);
        URLConnection connection = url.openConnection();
 
        Document doc = parseXML(connection.getInputStream());
        NodeList descNodes = doc.getElementsByTagName("item");
 
        for(int i=0; i<descNodes.getLength();i++){
 
            for(Node node = descNodes.item(i).getFirstChild(); node!=null; node=node.getNextSibling()){ //첫번째 자식을 시작으로 마지막까지 다음 형제를 실행
 
                if(node.getNodeName().equals("orgCd")){
                    System.out.println(node.getTextContent());
                }else if(node.getNodeName().equals("orgdownNm")){
                    System.out.println(node.getTextContent());
                }else if(node.getNodeName().equals("uprCd")){
                    System.out.println(node.getTextContent());
                }
 
            }
            System.out.println(i+1);
        }
    }

    private void start2(String str) throws Exception{
        URL url = new URL(str);
        URLConnection connection = url.openConnection();
 
        Document doc = parseXML(connection.getInputStream());
        NodeList descNodes = doc.getElementsByTagName("item");
 
        for(int i=0; i<descNodes.getLength();i++){
 
            for(Node node = descNodes.item(i).getFirstChild(); node!=null; node=node.getNextSibling()){ //첫번째 자식을 시작으로 마지막까지 다음 형제를 실행
 
                if(node.getNodeName().equals("careNm")){
                    System.out.println(node.getTextContent());
                }else if(node.getNodeName().equals("careRegNo")){
                    System.out.println(node.getTextContent());
                } 
            }
 
        }
    }
    
    private void start3(String str) throws Exception{
        URL url = new URL(str);
        URLConnection connection = url.openConnection();
 
        Document doc = parseXML(connection.getInputStream());
        NodeList descNodes = doc.getElementsByTagName("item");
 
        for(int i=0; i<descNodes.getLength();i++){
 
            for(Node node = descNodes.item(i).getFirstChild(); node!=null; node=node.getNextSibling()){ //첫번째 자식을 시작으로 마지막까지 다음 형제를 실행
 
                if(node.getNodeName().equals("KNm")){
                    System.out.println(node.getTextContent());
                }else if(node.getNodeName().equals("kindCd")){
                    System.out.println(node.getTextContent());
                } 
            }
            System.out.println(i+1);
        }
    }
    
    public List<AnimalInfo> start4(String str) throws Exception{
       System.out.println("XmlParsering.start4()");
       //api에서 제공해주는 모든 동물데이터중 상태가'보호중'인 것만 가져온다.
        URL url = new URL(str);
        URLConnection connection = url.openConnection();
 
        Document doc = parseXML(connection.getInputStream());
        NodeList descNodes = doc.getElementsByTagName("item");
        
        List<AnimalInfo> list = new ArrayList<AnimalInfo>();
       
        
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
        
        for(int i=0; i<descNodes.getLength();i++){
           
           AnimalInfo info = new AnimalInfo();
           
            for(Node node = descNodes.item(i).getFirstChild(); node!=null; node=node.getNextSibling()){ //첫번째 자식을 시작으로 마지막까지 다음 형제를 실행
               
               
                
               if(node.getNodeName().equals("desertionNo")){//유기번호
                   desertionNo = node.getTextContent();
                    info.setDesertionNo(desertionNo);
                }else if(node.getNodeName().equals("filename")){//Thumbnail Image
                   filename = node.getTextContent();
                   info.setFilename(filename);
                }else if(node.getNodeName().equals("happenDt")){//접수일
                   happenDt = node.getTextContent();
                   info.setHappenDt(happenDt);
                }else if(node.getNodeName().equals("happenPlace")){//발견장소
                   happenPlace = node.getTextContent();
                   info.setHappenPlace(happenPlace);
                }else if(node.getNodeName().equals("kindCd")){//품종
                   kindCd = node.getTextContent();
                   info.setKindCd(kindCd);
                }else if(node.getNodeName().equals("colorCd")){//색상
                   colorCd = node.getTextContent();
                   info.setColorCd(colorCd);
                }else if(node.getNodeName().equals("age")){//나이
                   age = node.getTextContent();
                   info.setAge(age);
                }else if(node.getNodeName().equals("weight")){//체중
                   weight = node.getTextContent();
                   info.setWeight(weight);
                }else if(node.getNodeName().equals("noticeNo")){//공고번호
                   noticeNo = node.getTextContent();
                   info.setNoticeNo(noticeNo);
                }else if(node.getNodeName().equals("noticeSdt")){//공고시작일
                   noticeSdt = node.getTextContent();
                   info.setNoticeSdt(noticeSdt);
                }else if(node.getNodeName().equals("noticeEdt")){//공고 종료일
                   noticeEdt = node.getTextContent();
                   info.setNoticeEdt(noticeEdt);
                }else if(node.getNodeName().equals("popfile")){//원본 Image
                   popfile = node.getTextContent();
                   info.setPopfile(popfile);
                }else if(node.getNodeName().equals("processState")){//상태
                   processState = node.getTextContent();
                   info.setProcessState(processState);
                }else if(node.getNodeName().equals("sexCd")){//성별
                   sexCd = node.getTextContent();
                   info.setSexCd(sexCd);
                }else if(node.getNodeName().equals("neuterYn")){//중성화여부
                   neuterYn = node.getTextContent();
                   info.setNeuterYn(neuterYn);
                }else if(node.getNodeName().equals("specialMark")){//특징
                   specialMark = node.getTextContent();
                   info.setSpecialMark(specialMark);
                }else if(node.getNodeName().equals("careNm")){//보호소이름
                   careNm = node.getTextContent();
                   info.setCareNm(careNm);
                }else if(node.getNodeName().equals("careTel")){//보호소전화번호
                   careTel = node.getTextContent();
                   info.setCareTel(careTel);
                }else if(node.getNodeName().equals("careAddr")){//보호장소
                   careAddr = node.getTextContent();
                   info.setCareAddr(careAddr);
                }else if(node.getNodeName().equals("orgNm")){//관할기관
                   orgNm = node.getTextContent();
                   info.setOrgNm(orgNm);
                }else if(node.getNodeName().equals("chargeNm")){//담당자
                   chargeNm = node.getTextContent();
                   info.setChargeNm(chargeNm);
                }else if(node.getNodeName().equals("officetel")){//담당자연락처
                   officetel = node.getTextContent();
                   info.setOfficetel(officetel);
                }else if(node.getNodeName().equals("noticeComment")){//특이사항
                   noticeComment = node.getTextContent();
                   info.setNoticeComment(noticeComment);
                } 
            }
            if(info.getProcessState().contains("보호중")){
               //System.out.println(info.toString());
               list.add(info);
               info = null;
               System.out.println("[보호중인 동물 수] : "+list.size());
               System.out.println("=======================================================");
            }else{
               //System.out.println("[입양 or 안락사]");
            }
            //System.out.println("["+i+"]");
            
        }
        
        return list;
    }
    
    
    private Document parseXML(InputStream stream) throws Exception{
 
        DocumentBuilderFactory objDocumentBuilderFactory = null;
        DocumentBuilder objDocumentBuilder = null;
        Document doc = null;
 
        try{
 
            objDocumentBuilderFactory = DocumentBuilderFactory.newInstance();
            objDocumentBuilder = objDocumentBuilderFactory.newDocumentBuilder();
 
            doc = objDocumentBuilder.parse(stream);
 
        }catch(Exception ex){
            throw ex;
        }       
 
        return doc;
    }
 
}