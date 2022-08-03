package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.bean.PaymentBean;
import com.bean.SubCategoryBean;
import com.dao.PaymentDao;
import com.dao.SubCategoryDao;

@RestController
public class RestApiConteoller {
	
	@Autowired
	SubCategoryDao subCategoryDao;
	
	@Autowired
	PaymentDao paymentDao;
	
	@GetMapping("/listSubCategoryById")
	public List<SubCategoryBean> listSubCategory(@RequestParam("categoryId") int categoryId){
		List<SubCategoryBean> listSubCategory = subCategoryDao.listByCategoryId(categoryId);
		return listSubCategory;
	}
	
	@GetMapping("/listpaymentByPaymentName")
	public List<PaymentBean> listpaymentByPaymentId(@RequestParam("paymentName") int paymentName,@RequestParam("userId") int userId){
		List<PaymentBean> listPayment = paymentDao.getPaymentByPaymentId(paymentName, userId);
		return listPayment;
	}
}
