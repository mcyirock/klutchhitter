package klutch.homepage.com.model;

import java.util.Date;

public class Counter {
	private int cnt_idx;
	private String ip;
	private Date datetime;
	public int getCnt_idx() {
		return cnt_idx;
	}
	public void setCnt_idx(int cnt_idx) {
		this.cnt_idx = cnt_idx;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public Date getDatetime() {
		return datetime;
	}
	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}
	
	
}
