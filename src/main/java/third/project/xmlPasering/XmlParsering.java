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
   //���⵿����ȸ ��ȸ������ '�õ�'������ ������ �� �ִ�.
   String sido = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/sido?"
         + "ServiceKey="
         + key 
         + "&numOfRows=999&pageSize=999&pageNo=1&startPage=1";
   
   //���⵿����ȸ ��ȸ������ '�ñ���'������ ������ �� �ִ�.
   String sigungu = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/sigungu?"
         + "upr_cd="
         + "6480000"
         + "&ServiceKey="
         + key;
   
   //���⵿����ȸ ��ȸ������ '��ȣ��'������ ������ �� �ִ�.
   String shelter = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/shelter?"
         + "upr_cd="
         + "6110000"
         + "&org_cd="
         + "322000"
         + "0&ServiceKey="
         + key;
   
   //���⵿����ȸ ��ȸ������ 'ǰ��'������ ������ �� �ִ�.
   /*
   �����ڵ�
    - �� : 417000
    - ����� : 422400
    - ��Ÿ : 429900
   */
   String kind = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/kind?"
         + "up_kind_cd="
         + "417000"
         + "&ServiceKey="
         + key;
   
   //���⵿�� ������ ��ȸ�Ѵ�.
   String abandonmentPublic = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic?"
         + "bgnde="
         + "20160301"//���⳯¥(�˻�������)
         + "&endde="
         + "20160430"//���⳯¥(�˻� ������)
         + "&pageNo="
         + "1"
         + "&numOfRows="
         + "30"//�˻���
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
 
            for(Node node = descNodes.item(i).getFirstChild(); node!=null; node=node.getNextSibling()){ //ù��° �ڽ��� �������� ���������� ���� ������ ����
 
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
 
            for(Node node = descNodes.item(i).getFirstChild(); node!=null; node=node.getNextSibling()){ //ù��° �ڽ��� �������� ���������� ���� ������ ����
 
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
 
            for(Node node = descNodes.item(i).getFirstChild(); node!=null; node=node.getNextSibling()){ //ù��° �ڽ��� �������� ���������� ���� ������ ����
 
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
       //api���� �������ִ� ��� ������������ ���°�'��ȣ��'�� �͸� �����´�.
        URL url = new URL(str);
        URLConnection connection = url.openConnection();
 
        Document doc = parseXML(connection.getInputStream());
        NodeList descNodes = doc.getElementsByTagName("item");
        
        List<AnimalInfo> list = new ArrayList<AnimalInfo>();
       
        
        String desertionNo; //�����ȣ
       String filename; //Thumbnail Image
       String happenDt; //������
       String happenPlace; //�߰����
       String kindCd; //ǰ��
       String colorCd; //����
       String age; //����
       String weight; //ü��
       String noticeNo; //�����ȣ
       String noticeSdt; //���������
       String noticeEdt; //���� ������
       String popfile; //���� Image
       String processState; //����
       String sexCd; //����
       String neuterYn; //�߼�ȭ����
       String specialMark; //Ư¡
       String careNm; //��ȣ���̸�
       String careTel; //��ȣ����ȭ��ȣ
       String careAddr; //��ȣ���
       String orgNm; //���ұ��
       String chargeNm; //�����
       String officetel; //����ڿ���ó
       String noticeComment; //Ư�̻���
        
        for(int i=0; i<descNodes.getLength();i++){
           
           AnimalInfo info = new AnimalInfo();
           
            for(Node node = descNodes.item(i).getFirstChild(); node!=null; node=node.getNextSibling()){ //ù��° �ڽ��� �������� ���������� ���� ������ ����
               
               
                
               if(node.getNodeName().equals("desertionNo")){//�����ȣ
                   desertionNo = node.getTextContent();
                    info.setDesertionNo(desertionNo);
                }else if(node.getNodeName().equals("filename")){//Thumbnail Image
                   filename = node.getTextContent();
                   info.setFilename(filename);
                }else if(node.getNodeName().equals("happenDt")){//������
                   happenDt = node.getTextContent();
                   info.setHappenDt(happenDt);
                }else if(node.getNodeName().equals("happenPlace")){//�߰����
                   happenPlace = node.getTextContent();
                   info.setHappenPlace(happenPlace);
                }else if(node.getNodeName().equals("kindCd")){//ǰ��
                   kindCd = node.getTextContent();
                   info.setKindCd(kindCd);
                }else if(node.getNodeName().equals("colorCd")){//����
                   colorCd = node.getTextContent();
                   info.setColorCd(colorCd);
                }else if(node.getNodeName().equals("age")){//����
                   age = node.getTextContent();
                   info.setAge(age);
                }else if(node.getNodeName().equals("weight")){//ü��
                   weight = node.getTextContent();
                   info.setWeight(weight);
                }else if(node.getNodeName().equals("noticeNo")){//�����ȣ
                   noticeNo = node.getTextContent();
                   info.setNoticeNo(noticeNo);
                }else if(node.getNodeName().equals("noticeSdt")){//���������
                   noticeSdt = node.getTextContent();
                   info.setNoticeSdt(noticeSdt);
                }else if(node.getNodeName().equals("noticeEdt")){//���� ������
                   noticeEdt = node.getTextContent();
                   info.setNoticeEdt(noticeEdt);
                }else if(node.getNodeName().equals("popfile")){//���� Image
                   popfile = node.getTextContent();
                   info.setPopfile(popfile);
                }else if(node.getNodeName().equals("processState")){//����
                   processState = node.getTextContent();
                   info.setProcessState(processState);
                }else if(node.getNodeName().equals("sexCd")){//����
                   sexCd = node.getTextContent();
                   info.setSexCd(sexCd);
                }else if(node.getNodeName().equals("neuterYn")){//�߼�ȭ����
                   neuterYn = node.getTextContent();
                   info.setNeuterYn(neuterYn);
                }else if(node.getNodeName().equals("specialMark")){//Ư¡
                   specialMark = node.getTextContent();
                   info.setSpecialMark(specialMark);
                }else if(node.getNodeName().equals("careNm")){//��ȣ���̸�
                   careNm = node.getTextContent();
                   info.setCareNm(careNm);
                }else if(node.getNodeName().equals("careTel")){//��ȣ����ȭ��ȣ
                   careTel = node.getTextContent();
                   info.setCareTel(careTel);
                }else if(node.getNodeName().equals("careAddr")){//��ȣ���
                   careAddr = node.getTextContent();
                   info.setCareAddr(careAddr);
                }else if(node.getNodeName().equals("orgNm")){//���ұ��
                   orgNm = node.getTextContent();
                   info.setOrgNm(orgNm);
                }else if(node.getNodeName().equals("chargeNm")){//�����
                   chargeNm = node.getTextContent();
                   info.setChargeNm(chargeNm);
                }else if(node.getNodeName().equals("officetel")){//����ڿ���ó
                   officetel = node.getTextContent();
                   info.setOfficetel(officetel);
                }else if(node.getNodeName().equals("noticeComment")){//Ư�̻���
                   noticeComment = node.getTextContent();
                   info.setNoticeComment(noticeComment);
                } 
            }
            if(info.getProcessState().contains("보호중")){
               //System.out.println(info.toString());
               list.add(info);
               info = null;
               System.out.println("[��ȣ���� ���� ��] : "+list.size());
               System.out.println("=======================================================");
            }else{
               //System.out.println("[�Ծ� or �ȶ���]");
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