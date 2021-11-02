package com.thr.i1.util;


public class Pager {
	
	//검색
	private String search;
	private String sequence;
	
	private Long pn;
	private Long perPage;
	private Long startRow;
	private Long lastRow;
	private Long perBlock;
	private Long startNum;
	private Long lastNum;
	private Long totalPage;
	//list page의 product found에서 사용 
	private Long totalCount;
	
	public void makeRow() {
		this.startRow = this.getPerPage()*(this.getPn()-1)+1;
		this.lastRow = this.getPerPage()*this.getPn();
	}
	
	public void makeNum() {
		this.totalPage = totalCount / this.getPerPage();
		if(this.totalCount%this.getPerPage()!=0) {
			this.totalPage++;
		}
		Long totalBlock = this.totalPage / this.getPerBlock();
		if(this.totalPage%this.getPerBlock()!=0) {
			totalBlock++;
		}
		if(this.totalPage<this.getPn()) {
			this.setPn(totalPage);
		}
		Long curBlock = this.getPn()/this.getPerBlock();
		if(this.getPn()%this.getPerBlock()!=0) {
			curBlock++;
	//		System.out.println(curBlock);
		}
		
		this.startNum = this.getPerBlock()*(curBlock-1)+1;
		this.lastNum = this.getPerBlock()*curBlock;

		if(totalBlock == curBlock) {
			this.lastNum=this.totalPage;
		}
	}
	
	public Long getPn() {
		if(this.pn==null||this.pn<=0) {
			this.pn=1L;
		}
		return pn;
	}
	public void setPn(Long pn) {
		this.pn = pn;
	}
	public Long getPerPage() {
		if(this.perPage==null||this.perPage==0) {
			this.perPage=15L;
		}
		return perPage;
	}
	public void setPerPage(Long perPage) {
		this.perPage = perPage;
	}
	public Long getStartRow() {
		return startRow;
	}
	public void setStartRow(Long startRow) {
		this.startRow = startRow;
	}
	public Long getLastRow() {
		return lastRow;
	}
	public void setLastRow(Long lastRow) {
		this.lastRow = lastRow;
	}
	public Long getPerBlock() {
		if(this.perBlock==null||this.perBlock==0) {
			this.perBlock=10L;
		}
		return perBlock;
	}
	public void setPerBlock(Long perBlock) {
		this.perBlock = perBlock;
	}
	public Long getStartNum() {
		return startNum;
	}
	public void setStartNum(Long startNum) {
		this.startNum = startNum;
	}
	public Long getLastNum() {
		return lastNum;
	}
	public void setLastNum(Long lastNum) {
		this.lastNum = lastNum;
	}
	public Long getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Long totalPage) {
		this.totalPage = totalPage;
	}

	public Long getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(Long totalCount) {
		this.totalCount = totalCount;
	}

	public String getSearch() {
		if(this.search==null) {
			this.search="";
		}
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public String getSequence() {
		if(this.sequence==null) {
			this.sequence="desc";
		}
		return sequence;
	}

	public void setSequence(String sequence) {
		this.sequence = sequence;
	}
	
	
	

}
