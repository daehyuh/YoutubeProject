package entity;

public class VideoEntity {
	String VIDEO_UUID;
	String VIDEO_OWNER;
	String VIDEO_DIR;
	String VIDEO_NAME;
	String VIDEO_DATE;
	int VIDEO_VIEWS;
	String VIDEO_INTRO;
	String MEMBER_NAME;
	
	public String getMEMBER_NAME() {
		return MEMBER_NAME;
	}

	public void setMEMBER_NAME(String mEMBER_NAME) {
		MEMBER_NAME = mEMBER_NAME;
	}

	public VideoEntity() {
		super();
	}
	
	public VideoEntity(String vIDEO_UUID, String vIDEO_OWNER, String vIDEO_DIR,
			String vIDEO_NAME, String vIDEO_DATE, int vIDEO_VIEWS,
			String vIDEO_INTRO, String mEMBER_NAME) {
		super();
		VIDEO_UUID = vIDEO_UUID;
		VIDEO_OWNER = vIDEO_OWNER;
		VIDEO_DIR = vIDEO_DIR;
		VIDEO_NAME = vIDEO_NAME;
		VIDEO_DATE = vIDEO_DATE;
		VIDEO_VIEWS = vIDEO_VIEWS;
		VIDEO_INTRO = vIDEO_INTRO;
		MEMBER_NAME = mEMBER_NAME;
	}
	
	public String getVIDEO_UUID() {
		return VIDEO_UUID;
	}
	public void setVIDEO_UUID(String vIDEO_UUID) {
		VIDEO_UUID = vIDEO_UUID;
	}
	public String getVIDEO_OWNER() {
		return VIDEO_OWNER;
	}
	public void setVIDEO_OWNER(String vIDEO_OWNER) {
		VIDEO_OWNER = vIDEO_OWNER;
	}
	public String getVIDEO_DIR() {
		return VIDEO_DIR;
	}
	public void setVIDEO_DIR(String vIDEO_DIR) {
		VIDEO_DIR = vIDEO_DIR;
	}
	public String getVIDEO_NAME() {
		return VIDEO_NAME;
	}
	public void setVIDEO_NAME(String vIDEO_NAME) {
		VIDEO_NAME = vIDEO_NAME;
	}
	public String getVIDEO_DATE() {
		return VIDEO_DATE;
	}
	public void setVIDEO_DATE(String vIDEO_DATE) {
		VIDEO_DATE = vIDEO_DATE;
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
	
}
