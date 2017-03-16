package MyWeb;

public class Web {

	private int id;
	private String url;
	private int crawled;
	private String tagname;
	private String fileType;
	private String content;
	private int ageRange;

	public Web(int id, String url, int crawled, String tagname, String fileType, String content, int ageRange) {
		this.setId(id);
		this.ageRange = ageRange;
		this.content = content;
		this.crawled = crawled;
		this.fileType = fileType;
		this.tagname = tagname;
		this.url = url;
	}

	@Override
	public String toString() {
		return "Web [id=" + id + ", url=" + url + ", crawled=" + crawled + ", tagname=" + tagname + ", fileType="
				+ fileType + ", content=" + content + ", ageRange=" + ageRange + "]";
	}
	
	public Web() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public int getCrawled() {
		return crawled;
	}

	public void setCrawled(int crawled) {
		this.crawled = crawled;
	}

	public String getTagname() {
		return tagname;
	}

	public void setTagname(String tagname) {
		this.tagname = tagname;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getAgeRange() {
		return ageRange;
	}

	public void setAgeRange(int ageRange) {
		this.ageRange = ageRange;
	}
}
