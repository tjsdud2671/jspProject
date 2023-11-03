package guest;

public class GuestVO {
	private int idx;
	private String name;
	private String context;
	private String email;
	private String homepage;
	private String visitDate;
	private String hostIp;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	public String getVisitDate() {
		return visitDate;
	}
	public void setVisitDate(String visitDate) {
		this.visitDate = visitDate;
	}
	public String getHostIp() {
		return hostIp;
	}
	public void setHostIp(String hostIp) {
		this.hostIp = hostIp;
	}
	@Override
	public String toString() {
		return "GuestVO [idx=" + idx + ", name=" + name + ", context=" + context + ", email=" + email + ", homepage="
				+ homepage + ", visitDate=" + visitDate + ", hostIp=" + hostIp + "]";
	}

	
}
