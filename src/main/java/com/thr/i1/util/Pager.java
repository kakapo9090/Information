package com.thr.i1.util;

public class Pager {

	private String search;
	
	private Long pn;
	private Long perPage;
	private Long perBlock;
	
	private Long startRow;
	private Long lastRow;
	
	private Long startNum;
	private Long lastNum;
	
	private Long totalPage;
	
	
	public String getSearch() {
		if(this.search==null) {
			this.search="";
		}
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	//행번호 구하기
	public void makeRow() {
		this.startRow = (this.getPn()-1)*this.perPage+1;
		this.lastRow = this.getPn()*this.getPerPage();
	}
	
	public void makeNum(Long totalCount) {
		//1.totalCount : 총 글의 개수 구하기
		//2. totalPage: 총 페이지 수 구하기
		totalPage = totalCount/this.getPerPage();
		//총글의 수를 한 페이지의 글 수로 나눴을 때 나머지가 있으면 페이지 +1
		if(totalCount%this.getPerPage() !=0) {
			totalPage++;
		}
		//3. totalBlock 구하기
		Long totalBlock = totalPage/this.getPerBlock();
		//총 페이지 수를 블럭으로 나눴을 때 나머지가 있으면 총 블럭에 +1
		if(totalPage/this.getPerBlock() !=0) {
			totalBlock++;
		}
		//데이터가 끝나면 다음 페이지 클릭 불가
		if(totalPage<this.getPn()) {
			this.setPn(totalPage);
		}
		
		//4.curBlock 현재 블럭구하기
		Long curBlock = this.getPn()/this.getPerBlock();
		if(this.getPn()%this.getPerBlock() !=0) {
			curBlock++;
		}
		
		//5. 현재 블럭으로 시작번호 마지막 번호 구하기
		this.startNum = (curBlock-1)*this.getPerBlock()+1;
		this.lastNum = curBlock*this.getPerBlock();
		
		//6. 현재 블럭이 마지막 블럭일 때 lastNum을 지정하기
		if(curBlock==totalBlock) {
			this.lastNum=totalPage;
		}
		
	}
	

	public Long getPn() {
		if(this.pn==null || this.pn<0) {
			this.pn= 1L;
		}
		
		return pn;
	}

	public void setPn(Long pn) {
		this.pn = pn;
	}

	public Long getPerPage() {
		if(this.perPage ==null || this.perPage==0) {
			this.perPage=5L;
		}
		
		return perPage;
	}

	public void setPerPage(Long perPage) {
		this.perPage = perPage;
	}

	public Long getPerBlock() {
		if(this.perBlock==null || this.perBlock==0) {
			this.perBlock=3L;
		}
		return perBlock;
	}

	public void setPerBlock(Long perBlock) {
		this.perBlock = perBlock;
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
	
	
	
	
}
