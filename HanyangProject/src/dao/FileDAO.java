package dao;

public class FileDAO {

	public static void UploadFile(String uuid, String owner, String dir, String name, String intro) {
		DBConn dbcon = new DBConn();

		String sql = "INSERT INTO YTC_VIDEO VALUES('" + uuid + "', '" + owner + "', '" + dir + "','" + name
				+ "',now(),0,'" + intro +"')";
		System.out.println(sql);
		try {
			dbcon.stmt.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
