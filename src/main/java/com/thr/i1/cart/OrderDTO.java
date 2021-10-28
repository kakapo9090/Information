package com.thr.i1.cart;

import java.util.Date;

public class OrderDTO {

	private Long order_Num;	//주문번호
	private Date order_Date;	//주문일
	private String id;	//아이디
	private Long num;	//아이디번호
	private String product_Name;	//제품명
	private int payCheck;	//결제여부 0: 결제대기, 1: 결제완료
	private int sumAll;		//배송비를 포함한 총 결제금액
	private int sumMoney;	//결제금액
	private int fee;		//배송비
	private String name;	//회원이름
	private String email;	//회원이메일
	private String phone;	//휴대폰번호
	private String address;	//주소
	
	
	public Long getOrder_Num() {
		return order_Num;
	}
	public void setOrder_Num(Long order_Num) {
		this.order_Num = order_Num;
	}
	public Date getOrder_Date() {
		return order_Date;
	}
	public void setOrder_Date(Date order_Date) {
		this.order_Date = order_Date;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Long getNum() {
		return num;
	}
	public void setNum(Long num) {
		this.num = num;
	}
	public String getProduct_Name() {
		return product_Name;
	}
	public void setProduct_Name(String product_Name) {
		this.product_Name = product_Name;
	}
	public int getPayCheck() {
		return payCheck;
	}
	public void setPayCheck(int payCheck) {
		this.payCheck = payCheck;
	}
	public int getSumAll() {
		return sumAll;
	}
	public void setSumAll(int sumAll) {
		this.sumAll = sumAll;
	}
	public int getSumMoney() {
		return sumMoney;
	}
	public void setSumMoney(int sumMoney) {
		this.sumMoney = sumMoney;
	}
	public int getFee() {
		return fee;
	}
	public void setFee(int fee) {
		this.fee = fee;
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


	
}
