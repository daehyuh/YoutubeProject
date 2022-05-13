package dao;

import java.util.ArrayList;
import java.util.List;

import servlet.Log;
import entity.SearchEntity;
import entity.VideoEntity;

public class SearchDAO {
	public static List<SearchEntity> Search(String title) {
		List<SearchEntity> list = new ArrayList<SearchEntity>();
		DBConn dbcon = new DBConn();
		
		String sql = "SELECT " +
                "M.MEMBER_ID, " + 
                "M.MEMBER_NAME, " + 
                "V.VIDEO_NAME, " +
                "V.VIDEO_VIEWS, " +
                "V.VIDEO_INTRO, " +
                "V.VIDEO_DATE, " +
		"V.VIDEO_UUID, " +
		"V.VIDEO_DIR " +
            "FROM " +
                "YTC_MEMBER M " +
            "INNER JOIN " +
                "YTC_VIDEO V " + 
            "ON " + 
                "M.MEMBER_ID " +
                "= " + 
                "V.VIDEO_OWNER " +
            "WHERE " + 
                "V.VIDEO_NAME " + 
            "LIKE " + 
                "'%"+title+"%'";
		
		
		try {
			dbcon.rs = dbcon.stmt.executeQuery(sql);
			Log.TRACELOG("SELECT SearchData", "SearchDAO");
			
			while(dbcon.rs.next()){
				SearchEntity entity = new SearchEntity(
						dbcon.rs.getString(1),
						dbcon.rs.getString(2), 
						dbcon.rs.getString(3), 
						dbcon.rs.getInt(4), 
						dbcon.rs.getString(5), 
						dbcon.rs.getString(6),
						dbcon.rs.getString(7),
						dbcon.rs.getString(8)
						);
				Log.DEBUGLOG("M_ID : " 
						+ entity.getMEMBER_ID()+ "| M_NAME : " 
						+ entity.getMEMBER_NAME() + "| V_NAME : " 
						+ entity.getVIDEO_NAME() + "| V_VIEWS : " 
						+ entity.getVIDEO_VIEWS() + "| V_INTRO : " 
						+ entity.getVIDEO_INTRO() + "| V_DATE : " 
						+ entity.getVIDEO_DATE() + "| V_UUID : " 
						+ entity.getVIDEO_UUID() + "| V_DIR : " 
						+ entity.getVIDEO_UUID(), "SearchDAO");
				list.add(entity);
			}
		} catch (Exception e){
			e.printStackTrace();
			Log.ERRORLOG("Search Fail Data Not Select", "SearchDAO");
		}
		
		
		return list;
	}
}