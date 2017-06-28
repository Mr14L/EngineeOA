package com.enginee.util;

import java.util.List;

import com.enginee.model.User;

public class PageModel {
	//每页显示的记录数
	private Integer pageSize = 5;
	//总页数
	private Integer pageCount;
	//总记录数
	private Integer rowCount;
	//显示第几页
	private Integer pageNow;
	
	private List<User> list;
	public Integer getPageCount() {
		return pageCount;
	}
	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}
	public Integer getRowCount() {
		return rowCount;
	}
	public void setRowCount(Integer rowCount) {
		this.rowCount = rowCount;
	}
	public Integer getPageNow() {
		return pageNow;
	}
	public void setPageNow(Integer pageNow) {
		this.pageNow = pageNow;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public List<User> getList() {
		return list;
	}
	public void setList(List<User> list) {
		this.list = list;
	}
	
}
