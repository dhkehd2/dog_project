package third.project.send_dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import third.project.send.bean.SendInfo;

@Repository
public class SendDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void inputsend(SendInfo si) {
		//
		int count = sqlSessionTemplate.insert("send_ns.insertSend", si);
		System.out.println(count);
		
	}
	

	
	
}
