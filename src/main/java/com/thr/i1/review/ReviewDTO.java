package com.thr.i1.review;

import java.sql.Date;
import java.util.List;

public class ReviewDTO {
	
	private Long product_id;
	private Long re_num;
	private String re_title;
	private String re_contents;
	private String re_writer;
	private Long num;
	private Date re_date;
	private Long re_star;
	private List<ReviewFilesDTO> files;
	
	public Long getProduct_id() {
		return product_id;
	}
	public void setProduct_id(Long product_id) {
		this.product_id = product_id;
	}
	public Long getRe_num() {
		return re_num;
	}
	public void setRe_num(Long re_num) {
		this.re_num = re_num;
	}
	public String getRe_title() {
		return re_title;
	}
	public void setRe_title(String re_title) {
		this.re_title = re_title;
	}
	public String getRe_contents() {
		return re_contents;
	}
	public void setRe_contents(String re_contents) {
		this.re_contents = re_contents;
	}
	public String getRe_writer() {
		return re_writer;
	}
	public void setRe_writer(String re_writer) {
		this.re_writer = re_writer;
	}
	public Long getNum() {
		return num;
	}
	public void setNum(Long num) {
		this.num = num;
	}
	public Date getRe_date() {
		return re_date;
	}
	public void setRe_date(Date re_date) {
		this.re_date = re_date;
	}
	public Long getRe_star() {
		return re_star;
	}
	public void setRe_star(Long re_star) {
		this.re_star = re_star;
	}
	public List<ReviewFilesDTO> getFiles() {
		return files;
	}
	public void setFiles(List<ReviewFilesDTO> files) {
		this.files = files;
	}
	
	
	

}