package third.project.mem_dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import third.project.bean.MemberBean;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void joinMember(MemberBean mb) {
		//DB에 mb에 있는 정보들을 저장(insert)
		int count = sqlSessionTemplate.insert("Member_ns.insertMember", mb);
		System.out.println(count);
	}
	
	public MemberBean loginMember(MemberBean mb) {
		//DB에 저장되어 있는 정보와 입력한 아이디, 비밀번호 정보를 비교
		String mem_id = mb.getMem_id();
		MemberBean selectByIdBean = sqlSessionTemplate.selectOne("Member_ns.selectMemberById", mem_id);
		return selectByIdBean;
		
	}
	
	public void id_findMember(MemberBean mb) {
		//DB에 저장되어 있는 이름과 생년월일과 일치하면, DB에 저장되어 있는 아이디를 불러온다.
		
	}
	
	public void pw_findMember(MemberBean mb) {
		//DB에 저장되어 있는 아이디,이름,생년월일,비밀번호질문과 일치하면, DB에 저장되어 있는 비밀번호를 불러온다.
		
	}
}
