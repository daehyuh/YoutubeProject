package servlet;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

public class Log {
	private static Logger logger = LogManager.getLogger(Log.class);
	
	public static void INFOLOG(String text, String path){
		
		if(!text.isEmpty()){
			logger.info("[INFO] " + text + "| Path : " + path);
		} else {
			logger.error("[ERROR] No Text | Path : " + path);
		}
		
	}
	
	public static void WARMLOG(String text, String path){
			
			if(!text.isEmpty()){
				logger.info("[WARM] " + text + "| Path : " + path);
			} else {
				logger.error("[ERROR] No Text | Path : " + path);
			}
			
		}

	public static void ERRORLOG(String text, String path){
		
		if(!text.isEmpty()){
			logger.info("[ERROR] " + text + "| Path : " + path);
		} else {
			logger.error("[ERROR] No Text | Path : " + path);
		}
		
	}

	public static void FATALLOG(String text, String path){
		
		if(!text.isEmpty()){
			logger.info("[FATAL] " + text + "| Path : " + path);
		} else {
			logger.error("[ERROR] No Text | Path : " + path);
		}
		
	}

	public static void DEBUGLOG(String text, String path){
		
		if(!text.isEmpty()){
			logger.info("[DEBUG] " + text + "| Path : " + path);
		} else {
			logger.error("[ERROR] No Text | Path : " + path);
		}
		
	}

	public static void TRACELOG(String text, String path) {
		if(!text.isEmpty()){
			logger.trace("[TRACE] " + text + " Path : " + path);
		} else {
			logger.error("[ERROR] No Text | Path : " + path);
		}
		
	}
} 