package entity;

public class MainEntity {
	String VIDEO_UUID;
	String VIDEO_DIR;
	String MEMBER_NAME;
	String VIDEO_NAME;
	int VIDEO_VIEWS;
	String VIDEO_DATE;
	String MEMBER_ID;
	

		public MainEntity(String vIDEO_UUID, String vIDEO_DIR, String mEMBER_NAME,
			String vIDEO_NAME, int vIDEO_VIEWS, String vIDEO_DATE, String mEMBER_ID) {
		super();
		VIDEO_UUID = vIDEO_UUID;
		VIDEO_DIR = vIDEO_DIR;
		MEMBER_NAME = mEMBER_NAME;
		VIDEO_NAME = vIDEO_NAME;
		VIDEO_VIEWS = vIDEO_VIEWS;
		VIDEO_DATE = vIDEO_DATE;
		MEMBER_ID = mEMBER_ID;
	}
		
	public String getMEMBER_ID() {
		return MEMBER_ID;
	}

	public void setMEMBER_ID(String mEMBER_ID) {
		MEMBER_ID = mEMBER_ID;
	}



	public String getVIDEO_UUID() {
		return VIDEO_UUID;
	}

	public void setVIDEO_UUID(String vIDEO_UUID) {
		VIDEO_UUID = vIDEO_UUID;
	}

	public String getVIDEO_DIR() {
		return VIDEO_DIR;
	}

	public void setVIDEO_DIR(String vIDEO_DIR) {
		VIDEO_DIR = vIDEO_DIR;
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
