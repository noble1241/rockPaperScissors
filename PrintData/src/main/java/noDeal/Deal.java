package noDeal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Deal {
	public static Connection getCon() {
		Connection con = null;
		PreparedStatement p = null;
		try {
			DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
			String dbURL = "jdbc:sqlserver://ncmsqldev04; instanceName=ncmsqldevRELO; database=Internship2022; encrypt=false;trustServerCertificate=true";
			String user = "intern";
			String pass = "1n3rnship2022";
			return con = DriverManager.getConnection(dbURL, user, pass);
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public Connection getConnection() {
		Connection con = null;
		PreparedStatement p = null;
		try {
			DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
			String dbURL = "jdbc:sqlserver://ncmsqldev04; instanceName=ncmsqldevRELO; database=Internship2022; encrypt=false;trustServerCertificate=true";
			String user = "intern";
			String pass = "1n3rnship2022";
			return con = DriverManager.getConnection(dbURL, user, pass);
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
