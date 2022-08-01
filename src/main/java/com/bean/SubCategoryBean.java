package com.bean;

import javax.validation.constraints.NotBlank;

public class SubCategoryBean {

	
	Integer subCategoryId;
	
	Integer categoryId;

	@NotBlank(message = "Please Enter SUBCategoryName")
	String subcategory_name;

	public Integer getSubCategoryId() {
		return subCategoryId;
	}

	public void setSubCategoryId(Integer subCategoryId) {
		this.subCategoryId = subCategoryId;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public String getSubcategory_name() {
		return subcategory_name;
	}

	public void setSubcategory_name(String subcategory_name) {
		this.subcategory_name = subcategory_name;
	}

}
