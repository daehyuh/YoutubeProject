package dao;

import servlet.Log;
import entity.FileEntity;

public class FileDAO {

	public static void UploadFile(String uuid, String owner, String dir, String name, String intro) {
		DBConn dbcon = new DBConn();
		
		FileEntity entity = new FileEntity(uuid, owner, name, dir, intro);

		String sql = "INSERT INTO YTC_VIDEO VALUES('" + entity.getVideo_uuid() + "', '" + entity.getVideo_owner() + "', '" + entity.getVideo_dir() + "', '" + entity.getVideo_name()
				+ "', now(), 0, '" + entity.getVideo_intro() +"', 0)";
		
		Log.DEBUGLOG("uuid : " + entity.getVideo_uuid() + " | owner : " + entity.getVideo_owner() + " | \n dir : " + entity.getVideo_dir() + " | \n name : " + entity.getVideo_name() + " | intro : " + entity.getVideo_intro(), "FileDAO");
		
		try {
			dbcon.stmt.executeUpdate(sql);
			Log.INFOLOG("FileData Insert", "FileDAO");
		} catch (Exception e) {
			e.printStackTrace();
			Log.ERRORLOG("Insert Failed", "FileDAO");
		}
	}
}
