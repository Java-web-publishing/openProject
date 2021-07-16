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
			pstmt.setString(2, d_pw);
			rs = pstmt.executeQuery();
			rs.next();
			if(rs.getString(1).equals(d_id) && rs.getString(2).equals(d_pw)) {

				return true;
			}
			
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
	public String dbcheck (String whichdbs) {
		switch(whichdbs) {
		case "0" :
			whichdbs = "main_banner";
			break;
		case "1" :
			whichdbs = "popular_banner";
			break;
		
		case "2" :
			whichdbs = "new_banner";
			break;
		
		case "3" :
			whichdbs = "most_products";
			break;
		}
		return whichdbs;
	}
	
	public int db_new (String whichdbs, String p_name, String p_imageURL, String p_class, String p_price, String p_detail) {
		String SQL = "INSERT INTO $db_table(p_name, p_imageURL, p_class, p_price, p_detail) VALUES(?, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String whichdbss = dbcheck(whichdbs);
		SQL = SQL.replace("$db_table", whichdbss);
		try {
			conn = cafe24Con.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, p_name);
			pstmt.setString(2, p_imageURL);
			pstmt.setString(3, p_class);
			pstmt.setString(4, p_price);
			pstmt.setString(5, p_detail);
			int result = pstmt.executeUpdate();
			
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally { try { if (conn != null) { conn.close(); } } catch (Exception e) { e.printStackTrace();}
        try {if (pstmt != null) {pstmt.close();}} catch (Exception e) {e.printStackTrace();}
        try {if (rs != null) {rs.close();}} catch (Exception e) {e.printStackTrace();}         
		}
		return 0;
	}
	public String notest () {
		String SQL = "INSERT INTO db_table VALUES(?, ?, ?, ?, ?)";
		
		String whichdbss = dbcheck("1");
		SQL = SQL.replace("db_table", whichdbss);
		return SQL;
	}
	
	public int db_change (String whichdbs, String p_name, String p_imageURL, String p_class, String p_price, String p_detail, String p_number) {
		String SQL = "UPDATE $db_table SET p_name = ?, SET p_imageURL = ?, SET p_class = ?, SET p_price = ?, SET p_detail = ? WHERE p_number = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String whichdbss = dbcheck(whichdbs);
		SQL = SQL.replace("$db_table", whichdbss);
		
		try {
			conn = cafe24Con.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, p_name);
			pstmt.setString(2, p_imageURL);
			pstmt.setString(3, p_class);
			pstmt.setString(4, p_price);
			pstmt.setString(5, p_detail);
			pstmt.setString(6, p_number);
			int result = pstmt.executeUpdate();
			
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally { try { if (conn != null) { conn.close(); } } catch (Exception e) { e.printStackTrace();}
        try {if (pstmt != null) {pstmt.close();}} catch (Exception e) {e.printStackTrace();}
        try {if (rs != null) {rs.close();}} catch (Exception e) {e.printStackTrace();}         
		}
		return 0;
		
	}
	public int db_delete (String whichdbs, String p_number) {
		String SQL = "DELETE FROM $db_table WHERE p_number = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String whichdbss = dbcheck(whichdbs);
		SQL = SQL.replace("$db_table", whichdbss);
		try {
			conn = cafe24Con.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, p_number);
			int result = pstmt.executeUpdate();
			
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally { try { if (conn != null) { conn.close(); } } catch (Exception e) { e.printStackTrace();}
        try {if (pstmt != null) {pstmt.close();}} catch (Exception e) {e.printStackTrace();}
        try {if (rs != null) {rs.close();}} catch (Exception e) {e.printStackTrace();}         
		}
		return 0;
		
	}
	
}
