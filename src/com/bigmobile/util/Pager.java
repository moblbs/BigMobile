package com.bigmobile.util;

import java.util.List;


public class Pager<T> {
	private int totalRows = 0; // 总行数

	private int pageSize = 25; // 每页显示的行数,默认值为10

	private int currentPage = 1; // 当前页号

	private int totalPages = 0; //总页数

	private List<T> results;// 此页查询出的结果
	
	public void setPageInfo(int totalRows){
		this.setTotalRows(totalRows);
		this.totalPages = totalRows / pageSize + (totalRows % pageSize  == 0 ? 0 : 1);
	}

	public Pager() {
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}

	public List<T> getResults() {
		return results;
	}

	public void setResults(List<T> results) {
		this.results = results;
	}

	public boolean canShowFirst() {
		if (this.currentPage == 1 || this.totalPages == 0)
			return false;
		return true;
	}

	public boolean canShowLast() {
		if (this.currentPage == this.totalPages || this.totalPages == 0)
			return false;
		return true;
	}

	public boolean canShowPrevious() {
		if (this.currentPage == 1 || this.totalPages == 0)
			return false;
		return true;
	}

	public boolean canShowNext() {
		if (this.currentPage == this.totalPages || this.totalPages == 0)
			return false;
		return true;
	}
}
