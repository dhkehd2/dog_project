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

	// 동물 수
	public int getListCount() {
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

	public int getListCount(String kind) {
		System.out.println("getListCount(" + kind + ")");
		int x = 0;

		try {

			con = ds.getConnection();
			System.out.println("getConnection");
			pstmt = con.prepareStatement("select count(*) from animals_info_tb where kindCd=?");

			pstmt.setString(1, kind);

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

	// 동물 목록 보기
	public List<AnimalInfo> getList(int page, int limit) {
		System.out.println("getList(" + page + "," + limit + ")");
		String list_sql = "select * from" + "(select rownum rnum,"
				+ "desertionNo,filename,happenDt,happenPlace,kindCd,colorCd,age,weight,"
				+ "noticeNo,noticeSdt,noticeEdt,popfile,processState,sexCd,neuterYn,"
				+ "specialMark,careNm,careTel,careAddr,orgNm,chargeNm,officetel,noticeComment from "
				+ "(select * from animals_info_tb order by rownum desc))" + "where rnum>=? and rnum<=?";

		List<AnimalInfo> list = new ArrayList<AnimalInfo>();

		int startrow = (page - 1) * 10 + 1;
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

	public List<AnimalInfo> getList(int page, int limit, String kind) {
		System.out.println("getList(" + page + "," + limit + "," + kind + ")");
		String list_sql = "select * from" + "(select rownum rnum,"
				+ "desertionNo,filename,happenDt,happenPlace,kindCd,colorCd,age,weight,"
				+ "noticeNo,noticeSdt,noticeEdt,popfile,processState,sexCd,neuterYn,"
				+ "specialMark,careNm,careTel,careAddr,orgNm,chargeNm,officetel,noticeComment from "
				+ "(select * from animals_info_tb where kindCd=? order by rownum desc))" + "where rnum>=? and rnum<=?";

		List<AnimalInfo> list = new ArrayList<AnimalInfo>();

		int startrow = (page - 1) * 10 + 1;
		int endrow = startrow + limit - 1;
		System.out.println("시작row번호 : " + startrow + "," + "마지막 row 번호 : " + endrow);
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(list_sql);

			pstmt.setString(1, kind);
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

}
