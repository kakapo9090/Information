package com.thr.i1.member;

import java.util.List;

import com.thr.i1.product.ProductDTO;

public class TuserDTO {
	
	//순서
	private Long num;
	//관리자 유무
	private int master;
	//아이디
	private String id;
	//비밀번호
	private String pw;
	//이름
	private String name;
	//이메일
	private String email;
	//전화번호
	private String phone;
	//주소
	private String address;
	
	//이미지
	private String userimg;
	
	private List<ProductDTO> products;
	
	public Long getNum() {
		return num;
	}
	public void setNum(Long num) {
		this.num = num;
	}
	public int getMaster() {
		return master;
	}
	public void setMaster(int master) {
		this.master = master;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUserimg() {
		return userimg;
	}
	public void setUserimg(String userimg) {
		this.userimg = userimg;
	}
	public List<ProductDTO> getProducts() {
		return products;
	}
	public void setProducts(List<ProductDTO> products) {
		this.products = products;
	}
	
	
	
}
