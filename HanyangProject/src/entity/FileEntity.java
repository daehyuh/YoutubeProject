package entity;

public class FileEntity {

	String video_uuid;
	String video_owner;
	String video_name;
	String video_dir;
	String video_data;
	int video_view;
	String video_intro;
	int video_check_image;

	public FileEntity(String video_uuid, String video_owner, String video_name, String video_dir, String video_data,
			int video_view, String video_intro, int video_check_image) {
		super();
		this.video_uuid = video_uuid;
		this.video_owner = video_owner;
		this.video_name = video_name;
		this.video_dir = video_dir;
		this.video_data = video_data;
		this.video_view = video_view;
		this.video_intro = video_intro;
		this.video_check_image = video_check_image;
	}

	public FileEntity(String video_uuid, String video_owner, String video_name,
			String video_dir, String video_intro) {
		super();
		this.video_uuid = video_uuid;
		this.video_owner = video_owner;
		this.video_name = video_name;
		this.video_dir = video_dir;
		this.video_intro = video_intro;
	}

	public FileEntity() {
		super();
	}

	public String getVideo_uuid() {
		return video_uuid;
	}
	public void setVideo_uuid(String video_uuid) {
		this.video_uuid = video_uuid;
	}
	public String getVideo_owner() {
		return video_owner;
	}
	public void setVideo_owner(String video_owner) {
		this.video_owner = video_owner;
	}
	public String getVideo_name() {
		return video_name;
	}
	public void setVideo_name(String video_name) {
		this.video_name = video_name;
	}
	public String getVideo_dir() {
		return video_dir;
	}
	public void setVideo_dir(String video_dir) {
		this.video_dir = video_dir;
	}
	public String getVideo_data() {
		return video_data;
	}
	public void setVideo_data(String video_data) {
		this.video_data = video_data;
	}
	public int getVideo_view() {
		return video_view;
	}
	public void setVideo_view(int video_view) {
		this.video_view = video_view;
	}
	public String getVideo_intro() {
		return video_intro;
	}
	public void setVideo_intro(String video_intro) {
		this.video_intro = video_intro;
	}
	public int getVideo_check_image() {
		return video_check_image;
	}

	public void setVideo_check_image(int video_check_image) {
		this.video_check_image = video_check_image;
	}
	
}
