package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.CSCategoryBean;
import com.bean.CategoryBean;

@Repository
public class CategoryDao {

	@Autowired
	JdbcTemplate stmt;

	public void addCategory(CategoryBean categoryBean) {
		stmt.update("insert into categories (category_name,userid) values (?,?)", categoryBean.getCategoryName(),
				categoryBean.getUserId());
	}

	public List<CategoryBean> listCategory(int userId) {
		return stmt.query("select * from categories c join users u on c.userid = u.userid where c.userid = ? or u.usertype = 'admin'", new BeanPropertyRowMapper<CategoryBean>(CategoryBean.class),userId);
	}

	public List<CSCategoryBean> listCSCategory(int userId) {
		return stmt.query(
				"select * from categories c join users u on c.userid = u.userid join sub_categories s ON c.categoryid = s.categoryid  where c.userid = ? or u.usertype = 'admin'",
				new BeanPropertyRowMapper<CSCategoryBean>(CSCategoryBean.class), new Object[] { userId });

	}

	public List<CategoryBean> listCategoryByUserId(int userId) {
		return stmt.query(
				"select * from categories c inner join users u on u.userid = c.userid where usertype = 'admin' or u.userid=? ",
				new BeanPropertyRowMapper<CategoryBean>(CategoryBean.class), userId);
	}

	public void deleteCategory(int categoryId) {
		stmt.update("delete from categories where categoryid =?", categoryId);
	}
}
