package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class cafe24Con {
	public static Connection getConnection() {
		try {
			String DBurl = "jdbc:mariadb://localhost/gkwnsgur1234";
			String DBid = "gkwnsgur1234";
			String DBpass = "gkwnsgur!080";
			Class.forName("org.mariadb.jdbc.Driver");
			return DriverManager.getConnection(DBurl, DBid, DBpass);		
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
