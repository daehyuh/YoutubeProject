package entity;

public class MainEntity {
	String MEMBER_NAME;
	String VIDEO_NAME;
	int VIDEO_VIEWS;
	String VIDEO_DATE;
	public MainEntity(String mEMBER_NAME, String vIDEO_NAME, int vIDEO_VIEWS,
			String vIDEO_DATE) {
		super();
		MEMBER_NAME = mEMBER_NAME;
		VIDEO_NAME = vIDEO_NAME;
		VIDEO_VIEWS = vIDEO_VIEWS;
		VIDEO_DATE = vIDEO_DATE;
	}
	public MainEntity() {
		super();
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
	public String getVIDEO_DATE() {
		return VIDEO_DATE;
	}
	public void setVIDEO_DATE(String vIDEO_DATE) {
		VIDEO_DATE = vIDEO_DATE;
	}
	
	
}
