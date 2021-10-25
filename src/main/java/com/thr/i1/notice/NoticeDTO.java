package com.thr.i1.notice;
import java.sql.Date;

public class NoticeDTO {
	private Long no_num;
	private String no_title;
	private String no_writer;
	private String no_contents;
	private Date no_regdate;
	
	public Long getNo_num() {
		return no_num;
	}
	public void setNo_num(Long no_num) {
		this.no_num = no_num;
	}
	public String getNo_title() {
		return no_title;
	}
	public void setNo_title(String no_title) {
		this.no_title = no_title;
	}
	public String getNo_writer() {
		return no_writer;
	}
	public void setNo_writer(String no_writer) {
		this.no_writer = no_writer;
	}
	public String getNo_contents() {
		return no_contents;
	}
	public void setNo_contents(String no_contents) {
		this.no_contents = no_contents;
	}
	public Date getNo_regdate() {
		return no_regdate;
	}
	public void setNo_regdate(Date no_regdate) {
		this.no_regdate = no_regdate;
	}
	
	
	
}