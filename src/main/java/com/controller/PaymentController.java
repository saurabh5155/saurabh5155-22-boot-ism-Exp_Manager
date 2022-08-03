package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.PaymentBean;
import com.bean.UserBean;
import com.dao.PaymentDao;

@Controller
public class PaymentController {

	@Autowired
	PaymentDao paymentDao;

	@GetMapping("/addPayment")
	public String payment(PaymentBean paymentBean, Model model) {
		model.addAttribute("paymentBean", paymentBean);
		return "AddPayment";
	}

	@PostMapping("/addPayment")
	public String addPayment(@ModelAttribute("paymentBean") @Valid PaymentBean paymentBean, BindingResult result,
			HttpSession session) {
		UserBean userBean = (UserBean) session.getAttribute("userBean");
		int userId = userBean.getUserId();
		paymentBean.setUserId(userId);
		paymentDao.addPayment(paymentBean);
		return "AddPayment";
	}

	@GetMapping("/getByUserId")
	public String getbyUserId(PaymentBean paymentBean, Model model,HttpSession session) {
		UserBean userBean = (UserBean) session.getAttribute("userBean");
		List<PaymentBean> listPayment =	paymentDao.listPayments(userBean.getUserId());
		
		model.addAttribute("userId",userBean.getUserId());
		model.addAttribute("listPayment",listPayment);
		model.addAttribute("paymentBean",paymentBean);
		return "UpdateAmount";
	}
	
	@PostMapping("/updateAmount")
	public String updateAmount(@ModelAttribute("paymentBean") @Valid PaymentBean paymentBean, BindingResult result,
			HttpSession session) {
		
		return "UpdateAmount";
	}

}
