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
		stmt.update("insert into payments (payment_mode,amount,userid) values (?,?,?)",paymentBean.getPaymentMode(),paymentBean.getAmount(),paymentBean.getUserId());
	}
	
	public List<PaymentBean> listPayments(int userId){
		return stmt.query("select * from payments where userid =?", new BeanPropertyRowMapper<PaymentBean>(PaymentBean.class),userId);
	}
	
	public void updatePaymentAmount(int paymentId,int amount) {
		stmt.update("update payments set amount =? where paymentid =? ",amount,paymentId);
	}
}
