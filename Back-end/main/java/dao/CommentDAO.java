package dao;

import entity.CommentEntity;

public class CommentDAO {
	
	public static void CommentInsert(String uuid, String owner, String comment) {
		DBConn dbCon = new DBConn();
		
		String sql = "INSERT INTO YTC_COMMENT VALUES(1,'"+uuid+"', '"+ owner +"', '" + comment + "')";
		System.out.println(sql);
		try {
			dbCon.stmt.executeQuery(sql);
			System.out.println("삽입 완료");
		} catch (Exception e) {
			System.out.println("데이터 불러오기 실패");
		}
	}
	
	public static CommentEntity CommentSelectById(String id) {
		DBConn dbcon = new DBConn();
		
		CommentEntity entity = new CommentEntity();
		
		String sql = "SELECT * FROM YTC_COMMENT WHERE COM_ID ='" + id + "'";
		
		try {
			dbcon.stmt.executeQuery(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return entity;
	}
}
