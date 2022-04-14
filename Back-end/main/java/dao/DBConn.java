package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConn {
	Connection con;
	Statement stmt;
	ResultSet rs;

	public DBConn() {
		String driver = "org.mariadb.jdbc.Driver";
		String url = "jdbc:mariadb://localhost:3066/HANYANG";
		String id = "root";
		String pwd = "1234";
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pwd);
			stmt = con.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
