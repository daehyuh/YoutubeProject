package dao;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import entity.MemberEntity;

public class MemberDAO {
	private static Logger log = LogManager.getLogger(MemberDAO.class);
	public static void MemberInsert(String id, String pw, String name) {
		DBConn dbcon = new DBConn();
		
		MemberEntity entity = new MemberEntity(id, pw, name);
		
		String sql = "INSERT INTO YTC_MEMBER VALUES('"+entity.getMEMBER_ID()+"', '"+entity.getMEMBER_PW()+"', '"+entity.getMEMBER_NAME()+"', NOW())";
		
		try {
			dbcon.stmt.executeUpdate(sql);
			log.info("[INFO] INSERT Data");
		} catch (Exception e) {
			e.printStackTrace();
			log.error("[ERROR] Data Not Insert");
		}
	}
	
	public static MemberEntity MemberSelectById(String id) {
		DBConn dbcon = new DBConn();
		
		MemberEntity entity = new MemberEntity();
		
		String sql = "SELECT * FROM YTC_MEMBER WHERE MEMBER_ID ='" + id + "'";
		
		try {
			dbcon.rs = dbcon.stmt.executeQuery(sql);
			
			if(dbcon.rs.next()){
				entity = new MemberEntity(dbcon.rs.getString(1), dbcon.rs.getString(2), dbcon.rs.getString(3), dbcon.rs.getString(4));
				log.info("[INFO] SELECT Data");
			}
		} catch (Exception e) {
			e.printStackTrace();
			log.error("[ERROR] Data Not Select");
		}

		return entity;
	}
}
