package third.project.mem_dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import third.project.bean.MemberBean;
import third.project.dog.bean.AnimalInfo;

@Repository
public class MemberDAO {

	/*@Autowired
	private SqlSessionTemplate sqlSessionTemplate;*/
	
	public void joinMember(MemberBean mb) {
		//DB�� mb�� �ִ� �������� ����(insert)
				
	}
	
	public void loginMember(MemberBean mb) {
		//DB�� ����Ǿ� �ִ� ������ �Է��� ���̵�, ��й�ȣ ������ ��
		
	}
	
	public void id_findMember(MemberBean mb) {
		//DB�� ����Ǿ� �ִ� �̸��� ������ϰ� ��ġ�ϸ�, DB�� ����Ǿ� �ִ� ���̵� �ҷ��´�.
		
	}
	
	public void pw_findMember(MemberBean mb) {
		//DB�� ����Ǿ� �ִ� ���̵�,�̸�,�������,��й�ȣ������ ��ġ�ϸ�, DB�� ����Ǿ� �ִ� ��й�ȣ�� �ҷ��´�.
		
	}
	
	
}
