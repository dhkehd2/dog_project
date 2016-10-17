package third.project.dog_dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import third.project.dog.bean.AnimalInfo;
import third.project.dog.bean.KindInfo;

@Repository
public class DogDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<AnimalInfo> animal_list() {//전체 동물 조회
		System.out.println("DogDAO.animal_list()");
		return sqlSessionTemplate.selectList("AnimalInfo_ns.selectAllAnimalInfo");
	}
	
	public List<KindInfo> kind_list() {//전체 품종 조회
		System.out.println("DogDAO.kind_list()");
		return sqlSessionTemplate.selectList("AnimalInfo_ns.selectAllKindInfo");
	}
	
	public void animal_info_insert(AnimalInfo animalInfo) {//동물 정보 DB 업데이트
		System.out.println("DogDAO.animal_info_insert()");
		sqlSessionTemplate.insert("AnimalInfo_ns.insertAnimalInfo", animalInfo);
	}
	 
	public AnimalInfo animal_info_select(String desertionNo) {//동물 정보 desertionNo 로 찾기
		System.out.println("DogDAO.animal_info_select()");
		return sqlSessionTemplate.selectOne("AnimalInfo_ns.selectAnimalInfo", desertionNo);

	}
	
}
