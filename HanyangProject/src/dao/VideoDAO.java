package dao;

import java.util.*;

import servlet.Log;
import entity.VideoEntity;

public class VideoDAO {
	public static List<VideoEntity> VideoSelectAllByuuId(String uuid) {
		DBConn dbcon = new DBConn();

		VideoEntity entity = new VideoEntity();

		List<VideoEntity> list = new ArrayList<VideoEntity>();

		String sql = "SELECT V.*, M.MEMBER_NAME FROM YTC_VIDEO V INNER JOIN YTC_MEMBER M ON V.VIDEO_OWNER = M.MEMBER_ID WHERE V.VIDEO_OWNER = '"+uuid+"'";

		try {

			dbcon.rs = dbcon.stmt.executeQuery(sql);
			Log.INFOLOG("SELECT Video BY UUId", "VideoDAO");

			if (dbcon.rs.next()) {
				entity = new VideoEntity(dbcon.rs.getString(1),
						dbcon.rs.getString(2), dbcon.rs.getString(3),
						dbcon.rs.getString(4), dbcon.rs.getString(5),
						dbcon.rs.getInt(6), dbcon.rs.getString(7), dbcon.rs.getString(8));
				Log.DEBUGLOG("UUID : " + entity.getVIDEO_UUID() + 
							" | OWNER : " + entity.getVIDEO_OWNER() +
							" | DIR : " + entity.getVIDEO_DIR() +
							" | NAME : " + entity.getVIDEO_NAME() +
							" | DATE : " + entity.getVIDEO_DATE() +
							" | VIEWS : " + entity.getVIDEO_VIEWS() +
							" | INTRO : " + entity.getVIDEO_INTRO() +
							" | M_NAME : " + entity.getMEMBER_NAME(), "VideoDAO");
				list.add(entity);
			}

		} catch (Exception e) {
			e.printStackTrace();
			Log.ERRORLOG("Data Not Select", "VideoDAO");
		}
		
		return list;

	}
	
	
	
	public static List<VideoEntity> VideoSelectAllById(String id) {
		DBConn dbcon = new DBConn();

		VideoEntity entity = new VideoEntity();

		List<VideoEntity> list = new ArrayList<VideoEntity>();

		String sql = "SELECT V.*, M.MEMBER_NAME FROM YTC_VIDEO V INNER JOIN YTC_MEMBER M ON V.VIDEO_OWNER = M.MEMBER_ID WHERE V.VIDEO_OWNER = '"+id+"'";

		try {

			dbcon.rs = dbcon.stmt.executeQuery(sql);
			Log.INFOLOG("SELECT Video BY Id", "VideoDAO");

			if (dbcon.rs.next()) {
				entity = new VideoEntity(dbcon.rs.getString(1),
						dbcon.rs.getString(2), dbcon.rs.getString(3),
						dbcon.rs.getString(4), dbcon.rs.getString(5),
						dbcon.rs.getInt(6), dbcon.rs.getString(7), dbcon.rs.getString(8));
				Log.DEBUGLOG("UUID : " + entity.getVIDEO_UUID() + 
							" | OWNER : " + entity.getVIDEO_OWNER() +
							" | DIR : " + entity.getVIDEO_DIR() +
							" | NAME : " + entity.getVIDEO_NAME() +
							" | DATE : " + entity.getVIDEO_DATE() +
							" | VIEWS : " + entity.getVIDEO_VIEWS() +
							" | INTRO : " + entity.getVIDEO_INTRO() +
							" | M_NAME : " + entity.getMEMBER_NAME(), "VideoDAO");
				list.add(entity);
			}

		} catch (Exception e) {
			e.printStackTrace();
			Log.ERRORLOG("Data Not Select", "VideoDAO");
		}
		
		return list;

	}
}