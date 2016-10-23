package third.project.send_dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import third.project.bean.MemberBean;
import third.project.board_bean.BoardBean;
import third.project.send.bean.SendInfo;

@Repository
public class SendDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void inputsend(BoardBean BoardBean) {
		//
		int count = sqlSessionTemplate.insert("send_ns.insertSend", BoardBean);
		System.out.println(count);
		
	}
	
	public int board_upProcess(BoardBean BoardBean) {
		int updateByDB = sqlSessionTemplate.update("send_ns.updateSend", BoardBean);
		return updateByDB;
	}
	
	public void board_delete_Process(int BOARD_NUM) {
		sqlSessionTemplate.delete("send_ns.deleteSend", BOARD_NUM);
	}
}
