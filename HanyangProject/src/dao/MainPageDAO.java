package dao;

import java.util.ArrayList;
import java.util.List;

import servlet.Log;
import entity.MainEntity;

public class MainPageDAO {
	public static List<MainEntity> MainPageAllSelect() {
		List<MainEntity> list = new ArrayList<MainEntity>();
		DBConn dbcon = new DBConn();
		
		String sql = "SELECT M.MEMBER_NAME, V.VIDEO_NAME, V.VIDEO_VIEWS, V.VIDEO_DATE FROM YTC_MEMBER M INNER JOIN YTC_VIDEO V ON M.MEMBER_ID = V.VIDEO_OWNER";
		
		
		try {
			dbcon.rs = dbcon.stmt.executeQuery(sql);
			Log.TRACELOG("SELECT MainPageAll Data", "MainPageDAO");
			
			while(dbcon.rs.next()){
				MainEntity entity = new MainEntity(
						dbcon.rs.getString(1),
						dbcon.rs.getString(2), 
						dbcon.rs.getInt(3), 
						dbcon.rs.getString(4)
						);
				Log.DEBUGLOG("M_NAME : " 
						+ entity.getMEMBER_NAME() + "| V_NAME : " 
						+ entity.getVIDEO_NAME() + "| V_NAME : " 
						+ entity.getVIDEO_NAME() + "| V_VIEWS : " 
						+ entity.getVIDEO_VIEWS() + "| V_DATE : " 
						+ entity.getVIDEO_DATE(), "MainPageDAO");
				list.add(entity);
			}
		} catch (Exception e){
			e.printStackTrace();
			Log.ERRORLOG("MainPage Fail Data Not Select(Load Fail)", "MainPageDAO");
		}
		
		
		return list;
	}
}
