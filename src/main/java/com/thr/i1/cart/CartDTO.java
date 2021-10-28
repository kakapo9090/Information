package com.thr.i1.cart;

public class CartDTO {
	//CART테이블에 실제로 있는 컬럼들
	private Long cart_Id;	//시퀀스 값, PK
    private String id;	//TUSER테이블의 id컬럼 조인
    private int product_id;	//PRODUCT테이블의 id컬럼 조인 *product테이블의 데이터타입 맞추기
    private int fileNum;	//PRODUCTFILE테이블의 FileNum컬럼 조인 *File테이블의 데이터타입 맞추기
    private int amount;	//수량
    private Long num;	//18일 num컬럼 추가, tuser테이블 num컬럼 조인
    
    

	//CART, TUSER, PRODUCT, PRODUCTFILE 테이블을 조인해서 담을 데이터들
    private String name;	//TUSER테이블에서 가져올 회원명
    private String product_Name;	//PRODUCT테이블에서 가져올 상품명
    private String fileName;	//PRODUCTFILE 테이블에서 가져올 이미지파일명
    private int price;	//PRODUCT테이블에서 가져올 단가. *product테이블의 데이터타입 맞추기
    private int money;	//가격*수량 값 

    
    private int sumMoney;
    private int fee;
    private int sumAll;
    private Long order_Num;
    
    
  
    

	public Long getOrder_Num() {
		return order_Num;
	}

	public void setOrder_Num(Long order_Num) {
		this.order_Num = order_Num;
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

	public int getSumAll() {
		return sumAll;
	}

	public void setSumAll(int sumAll) {
		this.sumAll = sumAll;
	}

	public Long getNum() {
    	return num;
    }
    
    public void setNum(Long num) {
    	this.num = num;
    }



	public int getFileNum() {
		return fileNum;
	}

	public void setFileNum(int fileNum) {
		this.fileNum = fileNum;
	}

	public Long getCart_Id() {
		return cart_Id;
	}

	public void setCart_Id(Long cart_Id) {
		this.cart_Id = cart_Id;
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	

	public String getProduct_Name() {
		return product_Name;
	}

	public void setProduct_Name(String product_Name) {
		this.product_Name = product_Name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
    
    
}