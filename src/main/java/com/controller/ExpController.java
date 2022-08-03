package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.CategoryBean;
import com.bean.ExpBean;
import com.bean.ExpJoinBean;
import com.bean.PaymentBean;
import com.bean.UserBean;
import com.dao.CategoryDao;
import com.dao.ExpDao;
import com.dao.PaymentDao;

@Controller
public class ExpController {

	@Autowired
	ExpDao expDao;

	@Autowired
	CategoryDao categoryDao;

	@Autowired
	PaymentDao paymentDao;

	@GetMapping("/exp")
	public String exp(ExpBean expBean, Model model, HttpSession session) {
		UserBean userBean = (UserBean) session.getAttribute("userBean");
		int userId = userBean.getUserId();

		List<CategoryBean> listCategory = categoryDao.listCategoryByUserId(userId);
		model.addAttribute("listCategory", listCategory);

		List<PaymentBean> listPayments = paymentDao.listPayments(userId);
		model.addAttribute("listPayments", listPayments);

		model.addAttribute("expBean", expBean);
		return "AddExp";
	}

	@PostMapping("/addExp")
	public String addExp(ExpBean expBean, HttpSession session, Model model) {

		UserBean userBean = (UserBean) session.getAttribute("userBean");
		int userId = userBean.getUserId();
		expBean.setUserId(userId);

		List<PaymentBean> listPayments = paymentDao.listPayments(userId);

		for (PaymentBean payment : listPayments) {
			if (payment.getPaymentId() == expBean.getPaymentId()) {
				if (payment.getAmount() < expBean.getExpAmount()) {
					model.addAttribute("paymentBig", "Enter Valid Amount");
				} else if (payment.getAmount() >= expBean.getExpAmount()) {
					int newAmount = payment.getAmount() - expBean.getExpAmount();
					paymentDao.updatePaymentAmount(payment.getPaymentId(), newAmount);
					expDao.addExp(expBean);
				}
			}
		}

		return "redirect:/exp";
	}
	
	@GetMapping("/listExp")
	public String listExp(HttpSession session,Model model) {
		
		UserBean userBean = (UserBean) session.getAttribute("userBean");
		int userId = userBean.getUserId();
		
		List<ExpJoinBean> listExp = expDao.listExpWithJoin(userId);
		
		model.addAttribute("listExp",listExp);
		return "ListExp";
	}
	
	@GetMapping("/deleteExp")
	public String deleteExp(@RequestParam("expId") int expId) {
		expDao.deleteExp(expId);
		return "redirect:/listExp";
	}
	
	@GetMapping("/listExpById")
	public String listExpById(@RequestParam("expId") int expId,Model model,HttpSession session) {
		UserBean userBean = (UserBean) session.getAttribute("userBean");
		int userId = userBean.getUserId();

		
		List<CategoryBean> listCategory = categoryDao.listCategoryByUserId(userId);
		model.addAttribute("listCategory", listCategory);

		List<PaymentBean> listPayments = paymentDao.listPayments(userId);
		model.addAttribute("listPayments", listPayments);

		ExpBean expBean = expDao.listExpjoinWithId(expId);
		model.addAttribute("expBean",expBean);
		return "UpdateExp";
	}
}
