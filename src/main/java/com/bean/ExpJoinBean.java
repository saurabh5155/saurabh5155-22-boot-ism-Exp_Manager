package com.bean;

import javax.validation.constraints.NotBlank;

public class ExpJoinBean {
	//Payment
		private Integer paymentId;

		private String paymentMode;

		private Integer amount;
		
//		Sub Cate
		private Integer subCategoryId;

		private	String subcategory_name;

//		cate
		private Integer categoryId;
		
		
		private String categoryName;
		

		private Integer userId;
//		Exp

		private String date;

		private String expName;

		private Integer expId;

		public Integer expAmount;

//		start
		public Integer getPaymentId() {
			return paymentId;
		}

		public void setPaymentId(Integer paymentId) {
			this.paymentId = paymentId;
		}

		public String getPaymentMode() {
			return paymentMode;
		}

		public void setPaymentMode(String paymentMode) {
			this.paymentMode = paymentMode;
		}

		public Integer getAmount() {
			return amount;
		}

		public void setAmount(Integer amount) {
			this.amount = amount;
		}

		public Integer getSubCategoryId() {
			return subCategoryId;
		}

		public void setSubCategoryId(Integer subCategoryId) {
			this.subCategoryId = subCategoryId;
		}

		public String getSubcategory_name() {
			return subcategory_name;
		}

		public void setSubcategory_name(String subcategory_name) {
			this.subcategory_name = subcategory_name;
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

		public Integer getUserId() {
			return userId;
		}

		public void setUserId(Integer userId) {
			this.userId = userId;
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

		public String getDate() {
			return date;
		}

		public void setDate(String date) {
			this.date = date;
		}
		
		
}
