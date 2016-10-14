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
		//DB�� mb�� �ִ� �������� ����(insert)
		int count = sqlSessionTemplate.insert("Member_ns.insertMember", mb);
		System.out.println(count);
	}
	
	public MemberBean loginMember(MemberBean mb) {
		//DB�� ����Ǿ� �ִ� ������ �Է��� ���̵�, ��й�ȣ ������ ��
		String mem_id = mb.getMem_id();
		MemberBean selectByIdBean = sqlSessionTemplate.selectOne("Member_ns.selectMemberById", mem_id);
		return selectByIdBean;
		
	}
	
	public void id_findMember(MemberBean mb) {
		//DB�� ����Ǿ� �ִ� �̸��� ������ϰ� ��ġ�ϸ�, DB�� ����Ǿ� �ִ� ���̵� �ҷ��´�.
		
	}
	
	public void pw_findMember(MemberBean mb) {
		//DB�� ����Ǿ� �ִ� ���̵�,�̸�,�������,��й�ȣ������ ��ġ�ϸ�, DB�� ����Ǿ� �ִ� ��й�ȣ�� �ҷ��´�.
		
	}
	
	
}
