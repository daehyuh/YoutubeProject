package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

public class DBConn {
	Connection con;
	Statement stmt;
	ResultSet rs;
	private Logger log = LogManager.getLogger(DBConn.class);
	public DBConn() {
		String driver = "org.mariadb.jdbc.Driver";
		String url = "jdbc:mariadb://localhost:3066/HANYANG";
		String id = "root";
		String pwd = "1234";
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pwd);
			stmt = con.createStatement();
			log.info("[INFO] DataBase Connect");
		} catch (Exception e) {
			e.printStackTrace();
			log.fatal("[FATAL] DataBase Connect error");
		}
	}
}
