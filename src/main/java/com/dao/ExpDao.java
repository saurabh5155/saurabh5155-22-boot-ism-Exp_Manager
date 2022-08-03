package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.ExpBean;
import com.bean.ExpJoinBean;

@Repository
public class ExpDao {

	@Autowired
	JdbcTemplate stmt;

	public void addExp(ExpBean expBean) {
		stmt.update(
				"insert into exps (date,exp_name,category_id,sub_category_id,payment_id,userid,exp_amount) values (?,?,?,?,?,?,?)",
				expBean.getDate(), expBean.getExpName(), expBean.getCategoryId(), expBean.getSubCategoryId(),
				expBean.getPaymentId(), expBean.getUserId(), expBean.getExpAmount());
	}

	public List<ExpJoinBean> listExpWithJoin(int userId) {
		return stmt.query(
				"select * from exps e join sub_categories s on e.sub_category_id = s.subcategoryid JOIN categories c on s.categoryid = c.categoryid join payments p on e.payment_id = p.paymentid where e.userid = ?",
				new BeanPropertyRowMapper<ExpJoinBean>(ExpJoinBean.class), userId);
	}

	public void deleteExp(int expId) {
		stmt.update("delete from exps where expid=?", expId);
	}

	public ExpBean listExpjoinWithId(int expId) {
		return stmt.queryForObject("select * from exps where expid =?",
				new BeanPropertyRowMapper<ExpBean>(ExpBean.class), new Object[] { expId });
	}
}
