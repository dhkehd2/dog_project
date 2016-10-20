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
   //占쏙옙占썩동占쏙옙占쏙옙회 占쏙옙회占쏙옙占쏙옙占쏙옙 '占시듸옙'占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙 占쌍댐옙.
   String sido = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/sido?"
         + "ServiceKey="
         + key 
         + "&numOfRows=999&pageSize=999&pageNo=1&startPage=1";
   
   //占쏙옙占썩동占쏙옙占쏙옙회 占쏙옙회占쏙옙占쏙옙占쏙옙 '占시깍옙占쏙옙'占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙 占쌍댐옙.
   String sigungu = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/sigungu?"
         + "upr_cd="
         + "6480000"
         + "&ServiceKey="
         + key;
   
   //占쏙옙占썩동占쏙옙占쏙옙회 占쏙옙회占쏙옙占쏙옙占쏙옙 '占쏙옙호占쏙옙'占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙 占쌍댐옙.
   String shelter = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/shelter?"
         + "upr_cd="
         + "6110000"
         + "&org_cd="
         + "322000"
         + "0&ServiceKey="
         + key;
   
   //占쏙옙占썩동占쏙옙占쏙옙회 占쏙옙회占쏙옙占쏙옙占쏙옙 '품占쏙옙'占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙 占쌍댐옙.
   /*
   占쏙옙占쏙옙占쌘듸옙
    - 占쏙옙 : 417000
    - 占쏙옙占쏙옙占� : 422400
    - 占쏙옙타 : 429900
   */
   String kind = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/kind?"
         + "up_kind_cd="
         + "417000"
         + "&ServiceKey="
         + key;
   
   //占쏙옙占썩동占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙회占싼댐옙.
   String abandonmentPublic = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic?"
         + "bgnde="
         + "20160301"//占쏙옙占썩날짜(占싯삼옙占쏙옙占쏙옙占쏙옙)
         + "&endde="
         + "20160430"//占쏙옙占썩날짜(占싯삼옙 占쏙옙占쏙옙占쏙옙)
         + "&pageNo="
         + "1"
         + "&numOfRows="
         + "30"//占싯삼옙占쏙옙
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
 
            for(Node node = descNodes.item(i).getFirstChild(); node!=null; node=node.getNextSibling()){ //첫占쏙옙째 占쌘쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙
 
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
 
            for(Node node = descNodes.item(i).getFirstChild(); node!=null; node=node.getNextSibling()){ //첫占쏙옙째 占쌘쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙
 
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
 
            for(Node node = descNodes.item(i).getFirstChild(); node!=null; node=node.getNextSibling()){ //첫占쏙옙째 占쌘쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙
 
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
       //api占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쌍댐옙 占쏙옙占� 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占승곤옙'占쏙옙호占쏙옙'占쏙옙 占싶몌옙 占쏙옙占쏙옙占승댐옙.
        URL url = new URL(str);
        URLConnection connection = url.openConnection();
 
        Document doc = parseXML(connection.getInputStream());
        NodeList descNodes = doc.getElementsByTagName("item");
        
        List<AnimalInfo> list = new ArrayList<AnimalInfo>();
       
        
        String desertionNo; //占쏙옙占쏙옙占싫�
       String filename; //Thumbnail Image
       String happenDt; //占쏙옙占쏙옙占쏙옙
       String happenPlace; //占쌩곤옙占쏙옙占�
       String kindCd; //품占쏙옙
       String colorCd; //占쏙옙占쏙옙
       String age; //占쏙옙占쏙옙
       String weight; //체占쏙옙
       String noticeNo; //占쏙옙占쏙옙占싫�
       String noticeSdt; //占쏙옙占쏙옙占쏙옙占쏙옙占�
       String noticeEdt; //占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙
       String popfile; //占쏙옙占쏙옙 Image
       String processState; //占쏙옙占쏙옙
       String sexCd; //占쏙옙占쏙옙
       String neuterYn; //占쌩쇽옙화占쏙옙占쏙옙
       String specialMark; //특징
       String careNm; //占쏙옙호占쏙옙占싱몌옙
       String careTel; //占쏙옙호占쏙옙占쏙옙화占쏙옙호
       String careAddr; //占쏙옙호占쏙옙占�
       String orgNm; //占쏙옙占쌀깍옙占�
       String chargeNm; //占쏙옙占쏙옙占�
       String officetel; //占쏙옙占쏙옙悶占쏙옙占시�
       String noticeComment; //특占싱삼옙占쏙옙
        
        for(int i=0; i<descNodes.getLength();i++){
           
           AnimalInfo info = new AnimalInfo();
           
            for(Node node = descNodes.item(i).getFirstChild(); node!=null; node=node.getNextSibling()){ //첫占쏙옙째 占쌘쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙
               
               
                
               if(node.getNodeName().equals("desertionNo")){//占쏙옙占쏙옙占싫�
                   desertionNo = node.getTextContent();
                    info.setDesertionNo(desertionNo);
                }else if(node.getNodeName().equals("filename")){//Thumbnail Image
                   filename = node.getTextContent();
                   info.setFilename(filename);
                }else if(node.getNodeName().equals("happenDt")){//占쏙옙占쏙옙占쏙옙
                   happenDt = node.getTextContent();
                   info.setHappenDt(happenDt);
                }else if(node.getNodeName().equals("happenPlace")){//占쌩곤옙占쏙옙占�
                   happenPlace = node.getTextContent();
                   info.setHappenPlace(happenPlace);
                }else if(node.getNodeName().equals("kindCd")){//품占쏙옙
                   kindCd = node.getTextContent();
                   info.setKindCd(kindCd);
                }else if(node.getNodeName().equals("colorCd")){//占쏙옙占쏙옙
                   colorCd = node.getTextContent();
                   info.setColorCd(colorCd);
                }else if(node.getNodeName().equals("age")){//占쏙옙占쏙옙
                   age = node.getTextContent();
                   info.setAge(age);
                }else if(node.getNodeName().equals("weight")){//체占쏙옙
                   weight = node.getTextContent();
                   info.setWeight(weight);
                }else if(node.getNodeName().equals("noticeNo")){//占쏙옙占쏙옙占싫�
                   noticeNo = node.getTextContent();
                   info.setNoticeNo(noticeNo);
                }else if(node.getNodeName().equals("noticeSdt")){//占쏙옙占쏙옙占쏙옙占쏙옙占�
                   noticeSdt = node.getTextContent();
                   info.setNoticeSdt(noticeSdt);
                }else if(node.getNodeName().equals("noticeEdt")){//占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙
                   noticeEdt = node.getTextContent();
                   info.setNoticeEdt(noticeEdt);
                }else if(node.getNodeName().equals("popfile")){//占쏙옙占쏙옙 Image
                   popfile = node.getTextContent();
                   info.setPopfile(popfile);
                }else if(node.getNodeName().equals("processState")){//占쏙옙占쏙옙
                   processState = node.getTextContent();
                   info.setProcessState(processState);
                }else if(node.getNodeName().equals("sexCd")){//占쏙옙占쏙옙
                   sexCd = node.getTextContent();
                   info.setSexCd(sexCd);
                }else if(node.getNodeName().equals("neuterYn")){//占쌩쇽옙화占쏙옙占쏙옙
                   neuterYn = node.getTextContent();
                   info.setNeuterYn(neuterYn);
                }else if(node.getNodeName().equals("specialMark")){//특징
                   specialMark = node.getTextContent();
                   info.setSpecialMark(specialMark);
                }else if(node.getNodeName().equals("careNm")){//占쏙옙호占쏙옙占싱몌옙
                   careNm = node.getTextContent();
                   info.setCareNm(careNm);
                }else if(node.getNodeName().equals("careTel")){//占쏙옙호占쏙옙占쏙옙화占쏙옙호
                   careTel = node.getTextContent();
                   info.setCareTel(careTel);
                }else if(node.getNodeName().equals("careAddr")){//占쏙옙호占쏙옙占�
                   careAddr = node.getTextContent();
                   info.setCareAddr(careAddr);
                }else if(node.getNodeName().equals("orgNm")){//占쏙옙占쌀깍옙占�
                   orgNm = node.getTextContent();
                   info.setOrgNm(orgNm);
                }else if(node.getNodeName().equals("chargeNm")){//占쏙옙占쏙옙占�
                   chargeNm = node.getTextContent();
                   info.setChargeNm(chargeNm);
                }else if(node.getNodeName().equals("officetel")){//占쏙옙占쏙옙悶占쏙옙占시�
                   officetel = node.getTextContent();
                   info.setOfficetel(officetel);
                }else if(node.getNodeName().equals("noticeComment")){//특占싱삼옙占쏙옙
                   noticeComment = node.getTextContent();
                   info.setNoticeComment(noticeComment);
                } 
            }
            if(info.getProcessState().contains("보호중")){
               //System.out.println(info.toString());
               list.add(info);
               info = null;
               System.out.println("[占쏙옙호占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙] : "+list.size());
               System.out.println("=======================================================");
            }else{
               //System.out.println("[占쌉억옙 or 占싫띰옙占쏙옙]");
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