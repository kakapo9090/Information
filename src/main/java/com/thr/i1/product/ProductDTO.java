package com.thr.i1.product;

public class ProductDTO {
	
	private Long id;
	private Long category;
	private String name;
	private Long price;
	private String explain;
	private String etc;
	private ProductCategoryDTO productCategoryDTO;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}	
	public Long getCategory() {
		return category;
	}
	public void setCategory(Long category) {
		this.category = category;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
