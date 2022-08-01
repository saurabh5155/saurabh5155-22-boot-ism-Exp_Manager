package com.bean;

import javax.validation.constraints.NotBlank;

public class CategoryBean {
	
	Integer categoryId;
	
	@NotBlank(message = "Please Enter CategoryName")
	String categoryName;
	
	Integer userId;
	
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	

}
