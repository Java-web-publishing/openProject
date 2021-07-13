package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.cafe24Con;

public class userDAO {
	public boolean checkuser (String d_id, String d_pw) {
		String SQL = "SELECT * FROM dev_id WHERE d_id = ? AND d_pw = ?; ";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = cafe24Con.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, d_id);
			pstmt.setString(1, d_pw);
			boolean result = pstmt.execute();
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally { try { if (conn != null) { conn.close(); } } catch (Exception e) { e.printStackTrace();}
        try {if (pstmt != null) {pstmt.close();}} catch (Exception e) {e.printStackTrace();}
        try {if (rs != null) {rs.close();}} catch (Exception e) {e.printStackTrace();}         
		}
		return false;
	}
}
