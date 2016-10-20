package third.project.dog_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import third.project.dog.bean.AnimalInfo;

@Repository
public class DogListDAO {

	@Autowired
	DataSource ds;

	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	//======================== [ 동물 카운트 가져오기 ] ========================
	//sido_name , gungu_name
	//견종 : all 시도 : all 시군 : 선택
	public int get_x_x_x_ListCount() {
		System.out.println("getListCount()");
		int x = 0;

		try {

			con = ds.getConnection();
			System.out.println("getConnection");
			pstmt = con.prepareStatement("select count(*) from animals_info_tb");
			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = rs.getInt(1);
			}
		} catch (Exception ex) {
			System.out.println("getListCount 에러: " + ex);
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
		return x;
	}
	
	//견종 : all 시도 : o 시군 : 선택
	public int get_x_o_x_ListCount(String sido_name) {
		System.out.println("get_x_o_x_ListCount()");
		int x = 0;

		try {

			con = ds.getConnection();
			System.out.println("getConnection");
			pstmt = con.prepareStatement("select count(*) from animals_info_tb where orgNm like ?");

			pstmt.setString(1, sido_name+"%");

			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = rs.getInt(1);
			}
		} catch (Exception ex) {
			System.out.println("getListCount 에러: " + ex);
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
		return x;
	}
	
	//견종 : all 시도 : o 시군 : o
	public int get_x_o_o_ListCount(String sido_name, String gungu_name) {
		System.out.println("get_x_o_o_ListCount()");
		int x = 0;

		try {

			con = ds.getConnection();
			System.out.println("getConnection");
			pstmt = con.prepareStatement("select count(*) from animals_info_tb where orgNm like ?");

			pstmt.setString(1, sido_name+" "+gungu_name+"%");

			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = rs.getInt(1);
			}
		} catch (Exception ex) {
			System.out.println("getListCount 에러: " + ex);
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
		return x;
	}
	
	//견종 : o   시도 : all 시군 : 선택
	public int get_o_x_x_ListCount(String now_kind) {
		System.out.println("get_o_x_x_ListCount()");
		int x = 0;

		try {

			con = ds.getConnection();
			System.out.println("getConnection");
			pstmt = con.prepareStatement("select count(*) from animals_info_tb where kindCd=?");

			pstmt.setString(1, now_kind);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = rs.getInt(1);
			}
		} catch (Exception ex) {
			System.out.println("getListCount 에러: " + ex);
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
		return x;
	}
	
	//견종 : o   시도 : o 시군 : 선택
	public int get_o_o_x_ListCount(String now_kind, String sido_name) {
		System.out.println("get_o_o_x_ListCount()");
		int x = 0;

		try {

			con = ds.getConnection();
			System.out.println("getConnection");
			pstmt = con.prepareStatement("select count(*) from animals_info_tb where kindCd=? and orgNm like ?");

			pstmt.setString(1, now_kind);
			pstmt.setString(2, sido_name+"%");
			
			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = rs.getInt(1);
			}
		} catch (Exception ex) {
			System.out.println("getListCount 에러: " + ex);
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
		return x;
	}
	
	//견종 : o   시도 : o 시군 : o
	public int get_o_o_o_ListCount(String now_kind, String sido_name, String gungu_name) {
		System.out.println("get_o_o_o_ListCount()");
		int x = 0;

		try {

			con = ds.getConnection();
			System.out.println("getConnection");
			pstmt = con.prepareStatement("select count(*) from animals_info_tb where kindCd=? and orgNm like ?");

			pstmt.setString(1, now_kind);
			pstmt.setString(2, sido_name+" "+gungu_name+"%");
			
			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = rs.getInt(1);
			}
		} catch (Exception ex) {
			System.out.println("getListCount 에러: " + ex);
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
		return x;
	}
	
	
	//======================== [ 동물 list 가져오기 ] ========================
	
	//견종 : all 시도 : all 시군 : 선택
	public List<AnimalInfo> get_x_x_x_List(int nowpage, int limit) {
		System.out.println("get_x_x_x_List()");
		String list_sql = "select * from" + "(select rownum rnum,"
				+ "desertionNo,filename,happenDt,happenPlace,kindCd,colorCd,age,weight,"
				+ "noticeNo,noticeSdt,noticeEdt,popfile,processState,sexCd,neuterYn,"
				+ "specialMark,careNm,careTel,careAddr,orgNm,chargeNm,officetel,noticeComment from "
				+ "(select * from animals_info_tb order by rownum desc))" + "where rnum>=? and rnum<=?";

		List<AnimalInfo> list = new ArrayList<AnimalInfo>();

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
				AnimalInfo info = new AnimalInfo();
				info.setDesertionNo(rs.getString("desertionNo"));
				info.setFilename(rs.getString("filename"));
				info.setHappenDt(rs.getString("happenDt"));
				info.setHappenPlace(rs.getString("happenPlace"));
				info.setKindCd(rs.getString("kindCd"));
				info.setColorCd(rs.getString("colorCd"));
				info.setAge(rs.getString("age"));
				info.setWeight(rs.getString("weight"));
				info.setNoticeNo(rs.getString("noticeNo"));
				info.setNoticeSdt(rs.getString("noticeSdt"));
				info.setNoticeEdt(rs.getString("noticeEdt"));
				info.setPopfile(rs.getString("popfile"));
				info.setProcessState(rs.getString("processState"));
				info.setSexCd(rs.getString("sexCd"));
				info.setNeuterYn(rs.getString("neuterYn"));
				info.setSpecialMark(rs.getString("specialMark"));
				info.setCareNm(rs.getString("careNm"));
				info.setCareTel(rs.getString("careTel"));
				info.setCareAddr(rs.getString("careAddr"));
				info.setOrgNm(rs.getString("orgNm"));
				info.setChargeNm(rs.getString("chargeNm"));
				info.setOfficetel(rs.getString("officetel"));
				info.setNoticeComment(rs.getString("noticeComment"));
				// System.out.println(info);
				list.add(info);
			}

			return list;
		} catch (Exception ex) {
			System.out.println("getList 에러 : " + ex);
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
	
	//견종 : all 시도 : o 시군 : 선택
	public List<AnimalInfo> get_x_o_x_List(int nowpage, int limit, String sido_name) {
		System.out.println("get_x_o_x_List()");
		String list_sql = "select * from" + "(select rownum rnum,"
				+ "desertionNo,filename,happenDt,happenPlace,kindCd,colorCd,age,weight,"
				+ "noticeNo,noticeSdt,noticeEdt,popfile,processState,sexCd,neuterYn,"
				+ "specialMark,careNm,careTel,careAddr,orgNm,chargeNm,officetel,noticeComment from "
				+ "(select * from animals_info_tb where orgNm like ? order by rownum desc))" + "where rnum>=? and rnum<=?";

		List<AnimalInfo> list = new ArrayList<AnimalInfo>();

		int startrow = (nowpage - 1) * 10 + 1;
		int endrow = startrow + limit - 1;
		System.out.println("시작row번호 : " + startrow + "," + "마지막 row 번호 : " + endrow);
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(list_sql);

			pstmt.setString(1, sido_name+"%");
			pstmt.setInt(2, startrow);
			pstmt.setInt(3, endrow);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				AnimalInfo info = new AnimalInfo();
				info.setDesertionNo(rs.getString("desertionNo"));
				info.setFilename(rs.getString("filename"));
				info.setHappenDt(rs.getString("happenDt"));
				info.setHappenPlace(rs.getString("happenPlace"));
				info.setKindCd(rs.getString("kindCd"));
				info.setColorCd(rs.getString("colorCd"));
				info.setAge(rs.getString("age"));
				info.setWeight(rs.getString("weight"));
				info.setNoticeNo(rs.getString("noticeNo"));
				info.setNoticeSdt(rs.getString("noticeSdt"));
				info.setNoticeEdt(rs.getString("noticeEdt"));
				info.setPopfile(rs.getString("popfile"));
				info.setProcessState(rs.getString("processState"));
				info.setSexCd(rs.getString("sexCd"));
				info.setNeuterYn(rs.getString("neuterYn"));
				info.setSpecialMark(rs.getString("specialMark"));
				info.setCareNm(rs.getString("careNm"));
				info.setCareTel(rs.getString("careTel"));
				info.setCareAddr(rs.getString("careAddr"));
				info.setOrgNm(rs.getString("orgNm"));
				info.setChargeNm(rs.getString("chargeNm"));
				info.setOfficetel(rs.getString("officetel"));
				info.setNoticeComment(rs.getString("noticeComment"));
				// System.out.println(info);
				list.add(info);
			}

			return list;
		} catch (Exception ex) {
			System.out.println("getList 에러 : " + ex);
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
	
	//견종 : all 시도 : o 시군 : o
	public List<AnimalInfo> get_x_o_o_List(int nowpage, int limit, String sido_name, String gungu_name) {
		System.out.println("get_x_o_o_List()");
		String list_sql = "select * from" + "(select rownum rnum,"
				+ "desertionNo,filename,happenDt,happenPlace,kindCd,colorCd,age,weight,"
				+ "noticeNo,noticeSdt,noticeEdt,popfile,processState,sexCd,neuterYn,"
				+ "specialMark,careNm,careTel,careAddr,orgNm,chargeNm,officetel,noticeComment from "
				+ "(select * from animals_info_tb where orgNm like ? order by rownum desc))" + "where rnum>=? and rnum<=?";

		List<AnimalInfo> list = new ArrayList<AnimalInfo>();

		int startrow = (nowpage - 1) * 10 + 1;
		int endrow = startrow + limit - 1;
		System.out.println("시작row번호 : " + startrow + "," + "마지막 row 번호 : " + endrow);
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(list_sql);

			pstmt.setString(1, sido_name+" "+gungu_name+"%");
			pstmt.setInt(2, startrow);
			pstmt.setInt(3, endrow);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				AnimalInfo info = new AnimalInfo();
				info.setDesertionNo(rs.getString("desertionNo"));
				info.setFilename(rs.getString("filename"));
				info.setHappenDt(rs.getString("happenDt"));
				info.setHappenPlace(rs.getString("happenPlace"));
				info.setKindCd(rs.getString("kindCd"));
				info.setColorCd(rs.getString("colorCd"));
				info.setAge(rs.getString("age"));
				info.setWeight(rs.getString("weight"));
				info.setNoticeNo(rs.getString("noticeNo"));
				info.setNoticeSdt(rs.getString("noticeSdt"));
				info.setNoticeEdt(rs.getString("noticeEdt"));
				info.setPopfile(rs.getString("popfile"));
				info.setProcessState(rs.getString("processState"));
				info.setSexCd(rs.getString("sexCd"));
				info.setNeuterYn(rs.getString("neuterYn"));
				info.setSpecialMark(rs.getString("specialMark"));
				info.setCareNm(rs.getString("careNm"));
				info.setCareTel(rs.getString("careTel"));
				info.setCareAddr(rs.getString("careAddr"));
				info.setOrgNm(rs.getString("orgNm"));
				info.setChargeNm(rs.getString("chargeNm"));
				info.setOfficetel(rs.getString("officetel"));
				info.setNoticeComment(rs.getString("noticeComment"));
				// System.out.println(info);
				list.add(info);
			}

			return list;
		} catch (Exception ex) {
			System.out.println("getList 에러 : " + ex);
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
	
	//견종 : o   시도 : all 시군 : 선택
	public List<AnimalInfo> get_o_x_x_List(int nowpage, int limit, String now_kind) {
		System.out.println("get_o_x_x_List()");
		String list_sql = "select * from" + "(select rownum rnum,"
				+ "desertionNo,filename,happenDt,happenPlace,kindCd,colorCd,age,weight,"
				+ "noticeNo,noticeSdt,noticeEdt,popfile,processState,sexCd,neuterYn,"
				+ "specialMark,careNm,careTel,careAddr,orgNm,chargeNm,officetel,noticeComment from "
				+ "(select * from animals_info_tb where kindCd=? order by rownum desc))" + "where rnum>=? and rnum<=?";

		List<AnimalInfo> list = new ArrayList<AnimalInfo>();

		int startrow = (nowpage - 1) * 10 + 1;
		int endrow = startrow + limit - 1;
		System.out.println("시작row번호 : " + startrow + "," + "마지막 row 번호 : " + endrow);
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(list_sql);

			pstmt.setString(1, now_kind);
			pstmt.setInt(2, startrow);
			pstmt.setInt(3, endrow);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				AnimalInfo info = new AnimalInfo();
				info.setDesertionNo(rs.getString("desertionNo"));
				info.setFilename(rs.getString("filename"));
				info.setHappenDt(rs.getString("happenDt"));
				info.setHappenPlace(rs.getString("happenPlace"));
				info.setKindCd(rs.getString("kindCd"));
				info.setColorCd(rs.getString("colorCd"));
				info.setAge(rs.getString("age"));
				info.setWeight(rs.getString("weight"));
				info.setNoticeNo(rs.getString("noticeNo"));
				info.setNoticeSdt(rs.getString("noticeSdt"));
				info.setNoticeEdt(rs.getString("noticeEdt"));
				info.setPopfile(rs.getString("popfile"));
				info.setProcessState(rs.getString("processState"));
				info.setSexCd(rs.getString("sexCd"));
				info.setNeuterYn(rs.getString("neuterYn"));
				info.setSpecialMark(rs.getString("specialMark"));
				info.setCareNm(rs.getString("careNm"));
				info.setCareTel(rs.getString("careTel"));
				info.setCareAddr(rs.getString("careAddr"));
				info.setOrgNm(rs.getString("orgNm"));
				info.setChargeNm(rs.getString("chargeNm"));
				info.setOfficetel(rs.getString("officetel"));
				info.setNoticeComment(rs.getString("noticeComment"));
				// System.out.println(info);
				list.add(info);
			}

			return list;
		} catch (Exception ex) {
			System.out.println("getList 에러 : " + ex);
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

	//견종 : o   시도 : o 시군 : 선택
	public List<AnimalInfo> get_o_o_x_List(int nowpage, int limit, String now_kind, String sido_name) {
		System.out.println("get_o_o_x_List()");
		String list_sql = "select * from" + "(select rownum rnum,"
				+ "desertionNo,filename,happenDt,happenPlace,kindCd,colorCd,age,weight,"
				+ "noticeNo,noticeSdt,noticeEdt,popfile,processState,sexCd,neuterYn,"
				+ "specialMark,careNm,careTel,careAddr,orgNm,chargeNm,officetel,noticeComment from "
				+ "(select * from animals_info_tb where kindCd=? and orgNm like ? order by rownum desc))" + "where rnum>=? and rnum<=?";

		List<AnimalInfo> list = new ArrayList<AnimalInfo>();

		int startrow = (nowpage - 1) * 10 + 1;
		int endrow = startrow + limit - 1;
		System.out.println("시작row번호 : " + startrow + "," + "마지막 row 번호 : " + endrow);
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(list_sql);

			pstmt.setString(1, now_kind);
			pstmt.setString(2, sido_name+"%");
			pstmt.setInt(3, startrow);
			pstmt.setInt(4, endrow);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				AnimalInfo info = new AnimalInfo();
				info.setDesertionNo(rs.getString("desertionNo"));
				info.setFilename(rs.getString("filename"));
				info.setHappenDt(rs.getString("happenDt"));
				info.setHappenPlace(rs.getString("happenPlace"));
				info.setKindCd(rs.getString("kindCd"));
				info.setColorCd(rs.getString("colorCd"));
				info.setAge(rs.getString("age"));
				info.setWeight(rs.getString("weight"));
				info.setNoticeNo(rs.getString("noticeNo"));
				info.setNoticeSdt(rs.getString("noticeSdt"));
				info.setNoticeEdt(rs.getString("noticeEdt"));
				info.setPopfile(rs.getString("popfile"));
				info.setProcessState(rs.getString("processState"));
				info.setSexCd(rs.getString("sexCd"));
				info.setNeuterYn(rs.getString("neuterYn"));
				info.setSpecialMark(rs.getString("specialMark"));
				info.setCareNm(rs.getString("careNm"));
				info.setCareTel(rs.getString("careTel"));
				info.setCareAddr(rs.getString("careAddr"));
				info.setOrgNm(rs.getString("orgNm"));
				info.setChargeNm(rs.getString("chargeNm"));
				info.setOfficetel(rs.getString("officetel"));
				info.setNoticeComment(rs.getString("noticeComment"));
				// System.out.println(info);
				list.add(info);
			}

			return list;
		} catch (Exception ex) {
			System.out.println("getList 에러 : " + ex);
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
	
	//견종 : o   시도 : o 시군 : o
	public List<AnimalInfo> get_o_o_o_List(int nowpage, int limit, String now_kind, String sido_name, String gungu_name) {
		System.out.println("get_o_o_o_List()");
		String list_sql = "select * from" + "(select rownum rnum,"
				+ "desertionNo,filename,happenDt,happenPlace,kindCd,colorCd,age,weight,"
				+ "noticeNo,noticeSdt,noticeEdt,popfile,processState,sexCd,neuterYn,"
				+ "specialMark,careNm,careTel,careAddr,orgNm,chargeNm,officetel,noticeComment from "
				+ "(select * from animals_info_tb where kindCd=? and orgNm like ? order by rownum desc))" + "where rnum>=? and rnum<=?";

		List<AnimalInfo> list = new ArrayList<AnimalInfo>();

		int startrow = (nowpage - 1) * 10 + 1;
		int endrow = startrow + limit - 1;
		System.out.println("시작row번호 : " + startrow + "," + "마지막 row 번호 : " + endrow);
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(list_sql);

			pstmt.setString(1, now_kind);
			pstmt.setString(2, sido_name+" "+gungu_name+"%");
			pstmt.setInt(3, startrow);
			pstmt.setInt(4, endrow);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				AnimalInfo info = new AnimalInfo();
				info.setDesertionNo(rs.getString("desertionNo"));
				info.setFilename(rs.getString("filename"));
				info.setHappenDt(rs.getString("happenDt"));
				info.setHappenPlace(rs.getString("happenPlace"));
				info.setKindCd(rs.getString("kindCd"));
				info.setColorCd(rs.getString("colorCd"));
				info.setAge(rs.getString("age"));
				info.setWeight(rs.getString("weight"));
				info.setNoticeNo(rs.getString("noticeNo"));
				info.setNoticeSdt(rs.getString("noticeSdt"));
				info.setNoticeEdt(rs.getString("noticeEdt"));
				info.setPopfile(rs.getString("popfile"));
				info.setProcessState(rs.getString("processState"));
				info.setSexCd(rs.getString("sexCd"));
				info.setNeuterYn(rs.getString("neuterYn"));
				info.setSpecialMark(rs.getString("specialMark"));
				info.setCareNm(rs.getString("careNm"));
				info.setCareTel(rs.getString("careTel"));
				info.setCareAddr(rs.getString("careAddr"));
				info.setOrgNm(rs.getString("orgNm"));
				info.setChargeNm(rs.getString("chargeNm"));
				info.setOfficetel(rs.getString("officetel"));
				info.setNoticeComment(rs.getString("noticeComment"));
				// System.out.println(info);
				list.add(info);
			}

			return list;
		} catch (Exception ex) {
			System.out.println("getList 에러 : " + ex);
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
	
}
