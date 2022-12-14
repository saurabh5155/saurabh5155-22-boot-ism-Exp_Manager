package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.bean.PaymentBean;
import com.bean.SubCategoryBean;
import com.bean.UserBean;
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
	public List<PaymentBean> listpaymentByPaymentId(@RequestParam("paymentName") String paymentName,HttpSession session){
		UserBean userBean = (UserBean) session.getAttribute("userBean");
		List<PaymentBean> listPayment = paymentDao.getPaymentByPaymentId(paymentName, userBean.getUserId());
		return listPayment;
	}
}
