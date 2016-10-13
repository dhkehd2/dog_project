package third.project.list_controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import third.project.dog.bean.AnimalInfo;
import third.project.dog_dao.DogDAO;
import third.project.xmlPasering.XmlParsering;

@Controller
public class Animal_info_insert {

	@Autowired
	DogDAO dogDAO;

	String key = "MjOcp7r0zWThoEX%2BdW0edQi4Qcpjoa5HpSS%2FmDN7EikCFSMWjlgCH4V5HvgduYtXB0fhUY5b%2BE3jLawrAG4I8A%3D%3D";

	// 유기동물 정보를 조회한다.
	String abandonmentPublic = "http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic?"
			+ "bgnde=" + "20160301"// 유기날짜(검색시작일)
			+ "&endde=" + "20160430"// 유기날짜(검색 종료일)
			+ "&pageNo=" + "1" 
			+ "&numOfRows=" + "30"// 검색수
			+ "&ServiceKey=" + key;

	@RequestMapping(value = "/animal_info_insert")
	public String animal_info_insert() {

		System.out.println("ListController.animal_info_insert()");

		XmlParsering xmlParsering = new XmlParsering();
		List<AnimalInfo> list = null;
		try {
			list = xmlParsering.start4(abandonmentPublic);
		} catch (Exception e) {
			System.out.println("리스트 못 받아옴");
		}
		System.out.println("받아온 list 사이즈 : "+list.size());
		System.out.println("====================================");
				
		for (AnimalInfo animalInfo : list) {
			
			dogDAO.animal_info_insert(animalInfo);
		}

		return "redirect:list";
	}

}
