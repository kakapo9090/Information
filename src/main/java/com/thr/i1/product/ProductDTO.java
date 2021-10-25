package com.thr.i1.product;

public class ProductDTO {
	
	private Long product_id;
	private Long category;
	private String product_name;
	private Long price;
	private String explain;
	private String etc;
	private ProductCategoryDTO productCategoryDTO;
	
		
	public Long getProduct_id() {
		return product_id;
	}
	public void setProduct_id(Long product_id) {
		this.product_id = product_id;
	}
	public Long getCategory() {
		return category;
	}
	public void setCategory(Long category) {
		this.category = category;
	}
	
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public Long getPrice() {
		return price;
	}
	public void setPrice(Long price) {
		this.price = price;
	}
	public String getExplain() {
		return explain;
	}
	public void setExplain(String explain) {
		this.explain = explain;
	}
	public String getEtc() {
		if(this.etc == null) {
			this.etc = "";
		}
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	public ProductCategoryDTO getProductCategoryDTO() {
		return productCategoryDTO;
	}
	public void setProductCategoryDTO(ProductCategoryDTO productCategoryDTO) {
		this.productCategoryDTO = productCategoryDTO;
	}
	
	
	

}
