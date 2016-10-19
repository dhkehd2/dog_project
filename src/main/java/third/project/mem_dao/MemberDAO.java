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
		//DB占쏙옙 mb占쏙옙 占쌍댐옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙(insert)
		int count = sqlSessionTemplate.insert("Member_ns.insertMember", mb);
		System.out.println(count);
	}
	
	public MemberBean loginMember(MemberBean mb) {
		//DB占쏙옙 占쏙옙占쏙옙퓸占� 占쌍댐옙 占쏙옙占쏙옙占쏙옙 占쌉뤄옙占쏙옙 占쏙옙占싱듸옙, 占쏙옙橘占싫� 占쏙옙占쏙옙占쏙옙 占쏙옙
		String mem_id = mb.getMem_id();
		MemberBean selectByIdBean = sqlSessionTemplate.selectOne("Member_ns.selectMemberById", mem_id);
		return selectByIdBean;
		
	}
	
	public String id_findMember(MemberBean mb) {
		//DB占쏙옙 占쏙옙占쏙옙퓸占� 占쌍댐옙 占싱몌옙占쏙옙 占쏙옙占쏙옙占쏙옙構占� 占쏙옙치占싹몌옙, DB占쏙옙 占쏙옙占쏙옙퓸占� 占쌍댐옙 占쏙옙占싱듸옙 占쌀뤄옙占승댐옙.	
		String selectIdByNameAndTelStr = sqlSessionTemplate.selectOne("Member_ns.selectIdByNameAndTel", mb);
		return selectIdByNameAndTelStr;
	}
	
	public MemberBean pw_findMember(MemberBean mb) {
		//DB占쏙옙 占쏙옙占쏙옙퓸占� 占쌍댐옙 占쏙옙占싱듸옙,占싱몌옙,占쏙옙占쏙옙占쏙옙占�,占쏙옙橘占싫ｏ옙占쏙옙占쏙옙占� 占쏙옙치占싹몌옙, DB占쏙옙 占쏙옙占쏙옙퓸占� 占쌍댐옙 占쏙옙橘占싫ｏ옙占� 占쌀뤄옙占승댐옙.
		MemberBean mbByDB = sqlSessionTemplate.selectOne("Member_ns.selectMemberById",mb.getMem_id());
		return mbByDB;
	}
	
	public MemberBean info_upMember(String id) {
		MemberBean selectIdByDB = sqlSessionTemplate.selectOne("Member_ns.selectMemberById", id);
		return selectIdByDB;
	}
	
	public int info_upProcess(MemberBean mb) {
		int updateByDB = sqlSessionTemplate.update("Member_ns.updateMemberById", mb);
		return updateByDB;
	}
	
}
