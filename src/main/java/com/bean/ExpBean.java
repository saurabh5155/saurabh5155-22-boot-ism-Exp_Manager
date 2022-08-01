package com.bean;

public class ExpBean {
//Payment
	private Integer paymentId;

//	Sub Cate
	private Integer subCategoryId;

//	cate
	private Integer categoryId;

	private Integer userId;
//	Exp

	private String Date;

	private String expName;

	private Integer expId;

	public Integer expAmount;

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(Integer paymentId) {
		this.paymentId = paymentId;
	}

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

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}

	public String getExpName() {
		return expName;
	}

	public void setExpName(String expName) {
		this.expName = expName;
	}

	public Integer getExpId() {
		return expId;
	}

	public void setExpId(Integer expId) {
		this.expId = expId;
	}

	public Integer getExpAmount() {
		return expAmount;
	}

	public void setExpAmount(Integer expAmount) {
		this.expAmount = expAmount;
	}

	

}
