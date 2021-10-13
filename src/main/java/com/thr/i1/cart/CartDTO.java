package com.thr.i1.cart;

public class CartDTO {
	//CART테이블에 실제로 있는 컬럼들
	private Long cart_Id;	//시퀀스 값, PK
    private String tuser_Id;	//TUSER테이블의 id컬럼 조인
    private int product_Id;	//PRODUCT테이블의 id컬럼 조인 *product테이블의 데이터타입 맞추기
    private int productFile_FileNum;	//PRODUCTFILE테이블의 FileNum컬럼 조인 *File테이블의 데이터타입 맞추기
    private int amount;	//수량
    
    
    //CART, TUSER, PRODUCT, PRODUCTFILE 테이블을 조인해서 담을 데이터들
    private String name;	//TUSER테이블에서 가져올 회원명
    private String product_Name;	//PRODUCT테이블에서 가져올 상품명
    private String fileName;	//PRODUCTFILE 테이블에서 가져올 이미지파일명
    private int price;	//PRODUCT테이블에서 가져올 단가. *product테이블의 데이터타입 맞추기
    private int money;	//가격*수량 값 

    
    
    
  

	public int getProductFile_FileNum() {
		return productFile_FileNum;
	}

	public void setProductFile_FileNum(int productFile_FileNum) {
		this.productFile_FileNum = productFile_FileNum;
	}

	public Long getCart_Id() {
		return cart_Id;
	}

	public void setCart_Id(Long cart_Id) {
		this.cart_Id = cart_Id;
	}

	public String getTuser_Id() {
		return tuser_Id;
	}

	public void setTuser_Id(String tuser_Id) {
		this.tuser_Id = tuser_Id;
	}

	public int getProduct_Id() {
		return product_Id;
	}

	public void setProduct_Id(int product_Id) {
		this.product_Id = product_Id;
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
