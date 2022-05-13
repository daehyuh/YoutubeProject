package dao;

import servlet.Log;
import entity.MemberEntity;

public class MemberDAO {
	public static void MemberInsert(String id, String pw, String name) {
		DBConn dbcon = new DBConn();
		MemberEntity entity = new MemberEntity(id, pw, name);
		Log.DEBUGLOG("ID : " + entity.getMEMBER_ID()+ "| PW : " + entity.getMEMBER_PW() + "| NAME : " + entity.getMEMBER_NAME() + "| DATE : " + entity.getMEMBER_DATE(), "MemberDAO");
		String sql = "INSERT INTO YTC_MEMBER VALUES('"+entity.getMEMBER_ID()+"', '"+entity.getMEMBER_PW()+"', '"+entity.getMEMBER_NAME()+"', NOW())";
		
		try {
			dbcon.stmt.executeUpdate(sql);
			Log.TRACELOG("INSERT Data", "MemberDAO");
		} catch (Exception e) {
			e.printStackTrace();
			Log.ERRORLOG("Data Not Insert", "MemberDAO");
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
				Log.DEBUGLOG("ID : " + entity.getMEMBER_ID()+ "| PW : " + entity.getMEMBER_PW() + "| NAME : " + entity.getMEMBER_NAME() + "| DATE : " + entity.getMEMBER_DATE(), "MemberDAO");
				Log.TRACELOG("SELECT Data", "MemberDAO");
			}
		} catch (Exception e) {
			e.printStackTrace();
			Log.ERRORLOG("Data Not Select", "MemberDAO");
		}

		return entity;
	}
}
