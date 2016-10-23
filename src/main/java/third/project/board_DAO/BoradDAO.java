package third.project.board_DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import third.project.board_bean.BoardBean;

@Repository
public class BoradDAO {
	
	@Autowired
	DataSource ds;

	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	//전체 글 수
	public int get_Board_ListCount() {
		System.out.println("get_Board_ListCount()");
		int x = 0;

		try {

			con = ds.getConnection();
			System.out.println("getConnection");
			pstmt = con.prepareStatement("select count(*) from BOARD_TB");
			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = rs.getInt(1);
			}
		} catch (Exception ex) {
			System.out.println("get_Board_ListCount 에러: " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException ex) {
				}
		}
		System.out.println("글 수 : "+x);
		return x;
	}
	
	//해당 아이디 글 수
	public int get_Board_ListCount(String BOARD_ID) {
		System.out.println("get_Board_ListCount()");
		int x = 0;

		try {

			con = ds.getConnection();
			System.out.println("getConnection");
			pstmt = con.prepareStatement("select count(*) from BOARD_TB where BOARD_ID=?");
			
			pstmt.setString(1, BOARD_ID);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = rs.getInt(1);
			}
		} catch (Exception ex) {
			System.out.println("get_Board_ListCount 에러: " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException ex) {
				}
		}
		System.out.println("글 수 : "+x);
		return x;
	}
	
	//번호, 제목, 날짜만 가져옴
	public List<BoardBean> get_Board_List(int nowpage, int limit) {
		System.out.println("get_Board_List()");
		String list_sql = "select BOARD_NUM,BOARD_SUBJECT,BOARD_DAY from "
				+ "(select rownum rnum,BOARD_NUM,BOARD_SUBJECT,BOARD_ID,BOARD_EMAIL,BOARD_TEL,"
				+ "BOARD_ARAE,BOARD_desertionNo,BOARD_HOW,BOARD_WHY,BOARD_RE_REF,BOARD_RE_LEV,"
				+ "BOARD_RE_SEQ,BOARD_READCOUNT,BOARD_DAY from "
				+ "(select * from BOARD_TB order by BOARD_NUM desc,BOARD_RE_SEQ asc))"
				+ "where rnum>=? and rnum<=?";

		List<BoardBean> list = new ArrayList<BoardBean>();

		int startrow = (nowpage - 1) * 10 + 1;
		int endrow = startrow + limit - 1;
		System.out.println("시작row번호 : " + startrow + "," + "마지막 row 번호 : " + endrow);
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(list_sql);
			pstmt.setInt(1, startrow);
			pstmt.setInt(2, endrow);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BoardBean board = new BoardBean();
				board.setBOARD_NUM(rs.getInt("BOARD_NUM"));
				board.setBOARD_SUBJECT(rs.getString("BOARD_SUBJECT"));
				//board.setBOARD_ID(rs.getString("BOARD_ID"));
				//board.setBOARD_EMAIL(rs.getString("BOARD_EMAIL"));
				//board.setBOARD_TEL(rs.getString("BOARD_TEL"));
				//board.setBOARD_ARAE(rs.getString("BOARD_ARAE"));
				//board.setBOARD_desertionNo(rs.getString("BOARD_desertionNo"));
				//board.setBOARD_HOW(rs.getString("BOARD_HOW"));
				//board.setBOARD_WHY(rs.getString("BOARD_WHY"));
								
				//board.setBOARD_RE_REF(rs.getInt("BOARD_RE_REF"));
				//board.setBOARD_RE_LEV(rs.getInt("BOARD_RE_LEV"));
				//board.setBOARD_RE_SEQ(rs.getInt("BOARD_RE_SEQ"));
				//board.setBOARD_READCOUNT(rs.getInt("BOARD_READCOUNT"));
				board.setBOARD_DAY(rs.getString("BOARD_DAY"));
				//rs.getString("BOARD_DAY")
				list.add(board);
				
			}
			System.out.println("===========================================");
			return list;
		} catch (Exception ex) {
			System.out.println("get_Board_List 에러 : " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException ex) {
				}
		}
		return null;
	}
	
	//해당 아이디가 쓴 글만 가져옴
	public List<BoardBean> get_Board_List(int nowpage, int limit, String BOARD_ID) {
		System.out.println("get_Board_List()");
		String list_sql = "select BOARD_NUM,BOARD_SUBJECT,BOARD_DAY from "
				+ "(select rownum rnum,BOARD_NUM,BOARD_SUBJECT,BOARD_ID,BOARD_EMAIL,BOARD_TEL,"
				+ "BOARD_ARAE,BOARD_desertionNo,BOARD_HOW,BOARD_WHY,BOARD_RE_REF,BOARD_RE_LEV,"
				+ "BOARD_RE_SEQ,BOARD_READCOUNT,BOARD_DAY from "
				+ "(select * from BOARD_TB where BOARD_ID=? order by BOARD_NUM desc,BOARD_RE_SEQ asc))"
				+ "where rnum>=? and rnum<=?";

		List<BoardBean> list = new ArrayList<BoardBean>();

		int startrow = (nowpage - 1) * 10 + 1;
		int endrow = startrow + limit - 1;
		System.out.println("시작row번호 : " + startrow + "," + "마지막 row 번호 : " + endrow);
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(list_sql);
			pstmt.setString(1, BOARD_ID);
			pstmt.setInt(2, startrow);
			pstmt.setInt(3, endrow);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BoardBean board = new BoardBean();
				board.setBOARD_NUM(rs.getInt("BOARD_NUM"));
				board.setBOARD_SUBJECT(rs.getString("BOARD_SUBJECT"));
				//board.setBOARD_ID(rs.getString("BOARD_ID"));
				//board.setBOARD_EMAIL(rs.getString("BOARD_EMAIL"));
				//board.setBOARD_TEL(rs.getString("BOARD_TEL"));
				//board.setBOARD_ARAE(rs.getString("BOARD_ARAE"));
				//board.setBOARD_desertionNo(rs.getString("BOARD_desertionNo"));
				//board.setBOARD_HOW(rs.getString("BOARD_HOW"));
				//board.setBOARD_WHY(rs.getString("BOARD_WHY"));
								
				//board.setBOARD_RE_REF(rs.getInt("BOARD_RE_REF"));
				//board.setBOARD_RE_LEV(rs.getInt("BOARD_RE_LEV"));
				//board.setBOARD_RE_SEQ(rs.getInt("BOARD_RE_SEQ"));
				//board.setBOARD_READCOUNT(rs.getInt("BOARD_READCOUNT"));
				board.setBOARD_DAY(rs.getString("BOARD_DAY"));
				//rs.getString("BOARD_DAY")
				list.add(board);
				
			}
			System.out.println("===========================================");
			return list;
		} catch (Exception ex) {
			System.out.println("get_Board_List 에러 : " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException ex) {
				}
		}
		return null;
	}
	
	//글번호로 신청1개 가져옴
	public BoardBean get_Board_Bean(int BOARD_NUM){
		System.out.println("get_Board_Bean()");
		
		String list_sql = "select * from BOARD_TB where BOARD_NUM=?";
		
		BoardBean board = new BoardBean();
		
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(list_sql);
			pstmt.setInt(1, BOARD_NUM);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				
				board.setBOARD_NUM(rs.getInt("BOARD_NUM"));
				board.setBOARD_SUBJECT(rs.getString("BOARD_SUBJECT"));
				board.setBOARD_ID(rs.getString("BOARD_ID"));
				board.setBOARD_EMAIL(rs.getString("BOARD_EMAIL"));
				board.setBOARD_TEL(rs.getString("BOARD_TEL"));
				board.setBOARD_ARAE(rs.getString("BOARD_ARAE"));
				board.setBOARD_desertionNo(rs.getString("BOARD_desertionNo"));
				board.setBOARD_HOW(rs.getString("BOARD_HOW"));
				board.setBOARD_WHY(rs.getString("BOARD_WHY"));
								
				board.setBOARD_RE_REF(rs.getInt("BOARD_RE_REF"));
				board.setBOARD_RE_LEV(rs.getInt("BOARD_RE_LEV"));
				board.setBOARD_RE_SEQ(rs.getInt("BOARD_RE_SEQ"));
				board.setBOARD_READCOUNT(rs.getInt("BOARD_READCOUNT"));
				board.setBOARD_DAY(rs.getString("BOARD_DAY"));
				
				
				
			}
			System.out.println("===========================================");
			return board;
		} catch (Exception ex) {
			System.out.println("get_Board_Bean 에러 : " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException ex) {
				}
		}
		return board;
	}
	
}
