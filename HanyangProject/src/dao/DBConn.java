package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import servlet.Log;

public class DBConn {
	Connection con;
	Statement stmt;
	ResultSet rs;
	private String path = this.getClass().getSimpleName();
	public DBConn() {
		String driver = "org.mariadb.jdbc.Driver";
		String url = "jdbc:mariadb://localhost:3306/hanyang";
		String id = "root";
		String pwd = "1234";
		try {
			Log.DEBUGLOG("DataBase Connect", path);
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pwd);
			stmt = con.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
			Log.FATALLOG("DataBase Connect error", path);
		}
	}
}
