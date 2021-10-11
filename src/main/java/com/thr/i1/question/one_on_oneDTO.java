package com.thr.i1.question;

import java.sql.Date;

public class one_on_oneDTO {

	private Long one_num;
	private String one_title;
	private String one_contents;
	private String one_writer;
	private Date one_regdate;
	private Long step;
	private Long ref;
	private Long depth;
	
	public Long getOne_num() {
		return one_num;
	}
	public void setOne_num(Long one_num) {
		this.one_num = one_num;
	}
	public String getOne_title() {
		return one_title;
	}
	public void setOne_title(String one_title) {
		this.one_title = one_title;
	}
	public String getOne_contents() {
		return one_contents;
	}
	public void setOne_contents(String one_contents) {
		this.one_contents = one_contents;
	}
	public String getOne_writer() {
		return one_writer;
	}
	public void setOne_writer(String one_writer) {
		this.one_writer = one_writer;
	}
	public Date getOne_regdate() {
		return one_regdate;
	}
	public void setOne_regdate(Date one_regdate) {
		this.one_regdate = one_regdate;
	}
	public Long getStep() {
		return step;
	}
	public void setStep(Long step) {
		this.step = step;
	}
	public Long getRef() {
		return ref;
	}
	public void setRef(Long ref) {
		this.ref = ref;
	}
	public Long getDepth() {
		return depth;
	}
	public void setDepth(Long depth) {
		this.depth = depth;
	}
	
	
}
