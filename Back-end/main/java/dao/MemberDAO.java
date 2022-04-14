package dao;

import entity.MemberEntity;

public class MemberDAO {
	public static void MemberInsert(String id, String pw, String name) {
		DBConn dbcon = new DBConn();
		
		MemberEntity entity = new MemberEntity(id, pw, name);
		
		String sql = "INSERT INTO YTC_MEMBER VALUES('"+entity.getMEMBER_ID()+"', '"+entity.getMEMBER_PW()+"', '"+entity.getMEMBER_NAME()+"', NOW())";
		
		try {
			dbcon.stmt.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
			// log4j
		}
	}
	
	public static MemberEntity MemberSelectById(String id) {
		DBConn dbcon = new DBConn();
		
		MemberEntity entity = new MemberEntity();
		
		String sql = "SELECT * FROM YTC_MEMBER WHERE MEMBER_ID ='" + id + "'";
		
		try {
			dbcon.stmt.executeQuery(sql);
		} catch (Exception e) {
			e.printStackTrace();
			//log4j
		}
		
		return entity;
	}
}
