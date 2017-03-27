package com.hand.ssm.dto;

public class Page {
	private int pageNow = 1; 	// 当前页数  
	private int pageSize = 15; 	// 每页显示记录的条数  
	private int totalCount; 	// 总的记录条数  
	private int startrows; 		// 开始位置，从0开始
	private int totalPage; 		// 总的页数
	public int getPageNow() {
		return pageNow;
	}
	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getStartrows() {
		return startrows;
	}
	public void setStartrows(int startrows) {
		this.startrows = startrows;
	}
	
}
