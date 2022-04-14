package entity;

public class MemberEntity {
	String MEMBER_ID;
	String MEMBER_PW;
	String MEMBER_NAME;
	String MEMBER_DATE;
	
	public MemberEntity(String mEMBER_ID, String mEMBER_PW, String mEMBER_NAME) {
		super();
		MEMBER_ID = mEMBER_ID;
		MEMBER_PW = mEMBER_PW;
		MEMBER_NAME = mEMBER_NAME;
	}
	public MemberEntity() {
		super();
	}
	public MemberEntity(String mEMBER_ID, String mEMBER_PW, String mEMBER_NAME, String mEMBER_DATE) {
		super();
		MEMBER_ID = mEMBER_ID;
		MEMBER_PW = mEMBER_PW;
		MEMBER_NAME = mEMBER_NAME;
		MEMBER_DATE = mEMBER_DATE;
	}
	public String getMEMBER_ID() {
		return MEMBER_ID;
	}
	public void setMEMBER_ID(String mEMBER_ID) {
		MEMBER_ID = mEMBER_ID;
	}
	public String getMEMBER_PW() {
		return MEMBER_PW;
	}
	public void setMEMBER_PW(String mEMBER_PW) {
		MEMBER_PW = mEMBER_PW;
	}
	public String getMEMBER_NAME() {
		return MEMBER_NAME;
	}
	public void setMEMBER_NAME(String mEMBER_NAME) {
		MEMBER_NAME = mEMBER_NAME;
	}
	public String getMEMBER_DATE() {
		return MEMBER_DATE;
	}
	public void setMEMBER_DATE(String mEMBER_DATE) {
		MEMBER_DATE = mEMBER_DATE;
	}
}
