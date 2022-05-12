package entity;

public class CommentEntity {
	private int id;
	private String uuid;
	private String owner;
	private String comment;
	
	public CommentEntity() {
		super();
		
	}

	public CommentEntity(int id, String uuid, String owner, String comment) {
		super();
		this.id = id;
		this.uuid = uuid;
		this.owner = owner;
		this.comment = comment;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public void setId1(int id) {
		// TODO Auto-generated method stub
		
	}

}