package study.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;

public class LoginDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	String sql = "";
	
	private LoginVO vo = null;
	
	// DAO객체의 생성과 동시에 DB 접속처리 한다.
	public LoginDAO() {
		String url = "jdbc:mysql://localhost:3306/javaProject";
		String user = "root";
		String password = "1234";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 검색 실패"+e.getMessage());
		} catch (SQLException e) {
			System.out.println("Database 연동 실패");
		}
		
	}
	
	// 객체 반납 (conn 객체 반납)
	public void connClose() {
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {}
		}
	}
		
	// pstmt 객체 반납
		public void pstmtClose() {
			if(pstmt != null) {
				try {
				pstmt.close();
			}catch (SQLException e) {}
			}
		}	
			// rs 객체 반납
			public void rsClose() {
				if(rs!=null) {
					try {
						rs.close();
						pstmtClose();
					}catch (SQLException e) {}
					finally {
						pstmtClose();
					}
				}
			}
			// 로그인 처리
			public LoginVO getLoginCheck(String mid, String pwd) {
				vo = new LoginVO();
				try {
					sql = "select * from login where mid=? and pwd=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, mid);
					pstmt.setString(2, pwd);
					rs = pstmt.executeQuery();
					if(rs.next()) {
						vo.setIdx(rs.getInt("idx"));
						vo.setMid(rs.getString("mid"));
						vo.setPwd(rs.getString("pwd"));
						vo.setName(rs.getString("name"));
						vo.setPoint(rs.getInt("point"));
						vo.setLastDate(rs.getString("lastDate"));
						vo.setTodayCount(rs.getInt("todayCount"));
					}
				} catch (SQLException e) {
					System.out.println("sql구문 오류 : " + e.getMessage());
				}finally {
					rsClose();
				}
				return vo;
			}
			// 전체 조회 처리
			public ArrayList<LoginVO> getLoginList() {
				ArrayList<LoginVO> vos = new ArrayList<LoginVO>();
				try {
					sql = "select * from login order by name";
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					while(rs.next()) {
						vo = new LoginVO();
						vo.setIdx(rs.getInt("idx"));
						vo.setMid(rs.getString("mid"));
						vo.setPwd(rs.getString("pwd"));
						vo.setName(rs.getString("name"));
						vo.setPoint(rs.getInt("point"));
						vo.setLastDate(rs.getString("lastDate"));
						vo.setTodayCount(rs.getInt("todayCount"));
						
						vos.add(vo);
					}
				} catch (SQLException e) {
					System.out.println("sql구문 오류 : " + e.getMessage());
				}finally {
					rsClose();
			}
				return vos;
			}
}
