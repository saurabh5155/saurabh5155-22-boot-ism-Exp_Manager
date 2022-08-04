package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.PaymentBean;

@Repository
public class PaymentDao {

	@Autowired
	JdbcTemplate stmt;

	public void addPayment(PaymentBean paymentBean) {
		System.out.println(paymentBean.getAmount());
		stmt.update("insert into payments (payment_mode,amount,userid,card_number) values (?,?,?,?)",
				paymentBean.getPaymentMode(), paymentBean.getAmount(), paymentBean.getUserId(),
				paymentBean.getCardNumber());
	}

	public List<PaymentBean> listPayments(int userId) {
		return stmt.query("select * from payments where userid =?",
				new BeanPropertyRowMapper<PaymentBean>(PaymentBean.class), userId);
	}

	public PaymentBean listPaymentById(int paymentId) {
		return stmt.queryForObject("select * from payments where paymentid=?",
				new BeanPropertyRowMapper<PaymentBean>(PaymentBean.class), new Object[] { paymentId });
	}
	
	public PaymentBean listPaymentById(String paymentMode) {
		return stmt.queryForObject("select * from payments where payment_mode=?",
				new BeanPropertyRowMapper<PaymentBean>(PaymentBean.class), new Object[] { paymentMode });
	}

	public void updatePaymentAmount(int paymentId, int amount) {
		stmt.update("update payments set amount =? where paymentid =? ", amount, paymentId);
	}

	public void updatePaymentAmountByPaymentMode(String paymentMode, int amount) {
		stmt.update("update payments set amount =? where payment_mode =? ", amount, paymentMode);
	}
	
	public List<PaymentBean> getPaymentByPaymentId(String paymentId, int userId) {
		return stmt.query("select * from payments where userid =? and payment_mode=?",
				new BeanPropertyRowMapper<PaymentBean>(PaymentBean.class), userId, paymentId);
	}
}
