package entity;

public class SearchEntity {
	String MEMBER_ID;
	String MEMBER_NAME;
	String VIDEO_NAME;
	int VIDEO_VIEWS;
	String VIDEO_INTRO;
	String VIDEO_DATE;
	String VIDEO_UUID;
	String VIDEO_DIR;
	
	public SearchEntity() {
		super();
	}
	
	public SearchEntity(String mEMBER_ID, String mEMBER_NAME,
			String vIDEO_NAME, int vIDEO_VIEWS, String vIDEO_INTRO,
			String vIDEO_DATE, String vIDEO_UUID, String vIDEO_DIR) {
		super();
		MEMBER_ID = mEMBER_ID;
		MEMBER_NAME = mEMBER_NAME;
		VIDEO_NAME = vIDEO_NAME;
		VIDEO_VIEWS = vIDEO_VIEWS;
		VIDEO_INTRO = vIDEO_INTRO;
		VIDEO_DATE = vIDEO_DATE;
		VIDEO_UUID = vIDEO_UUID;
		VIDEO_DIR = vIDEO_DIR;
	}
	
	public String getMEMBER_ID() {
		return MEMBER_ID;
	}
	public void setMEMBER_ID(String mEMBER_ID) {
		MEMBER_ID = mEMBER_ID;
	}
	public String getMEMBER_NAME() {
		return MEMBER_NAME;
	}
	public void setMEMBER_NAME(String mEMBER_NAME) {
		MEMBER_NAME = mEMBER_NAME;
	}
	public String getVIDEO_NAME() {
		return VIDEO_NAME;
	}
	public void setVIDEO_NAME(String vIDEO_NAME) {
		VIDEO_NAME = vIDEO_NAME;
	}
	public int getVIDEO_VIEWS() {
		return VIDEO_VIEWS;
	}
	public void setVIDEO_VIEWS(int vIDEO_VIEWS) {
		VIDEO_VIEWS = vIDEO_VIEWS;
	}
	public String getVIDEO_INTRO() {
		return VIDEO_INTRO;
	}
	public void setVIDEO_INTRO(String vIDEO_INTRO) {
		VIDEO_INTRO = vIDEO_INTRO;
	}
	public String getVIDEO_DATE() {
		return VIDEO_DATE;
	}
	public void setVIDEO_DATE(String vIDEO_DATE) {
		VIDEO_DATE = vIDEO_DATE;
	}
	
	public String getVIDEO_UUID() {
		return VIDEO_UUID;
	}
	public void seVIDEO_UUID(String vIDEO_UUID) {
		VIDEO_UUID = vIDEO_UUID;
	}
	public String getVIDEO_DIR() {
		return VIDEO_DIR;
	}
	public void seVIDEO_DIR(String vIDEO_DIR) {
		VIDEO_DIR = vIDEO_DIR;
	}
	
}
