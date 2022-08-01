package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.LoginBean;
import com.bean.UserBean;

@Repository
public class UserDao {

	@Autowired
	JdbcTemplate stmt;

	public void signup(UserBean userBean) {
		stmt.update("insert into users (firstname,lastname,gender,email,password,usertype) values (?,?,?,?,?,?)",
				userBean.getFirstName(), userBean.getLastName(), userBean.getGender(), userBean.getEmail(),
				userBean.getPassword(), userBean.getUserType());
	}

	public List<UserBean> listUsers() {
		return stmt.query("select * from users", new BeanPropertyRowMapper<UserBean>(UserBean.class));
	}

	public void deleteUser(int userId) {
		stmt.update("delete from users where userid =?", userId);
	}

	public UserBean loginUser(LoginBean loginBean) {
		UserBean userBean = null;
		try {

			userBean = stmt.queryForObject("select * from users where email =? and password=?",
					new BeanPropertyRowMapper<UserBean>(UserBean.class),
					new Object[] { loginBean.getEmail(), loginBean.getPassword() });
		} catch (Exception e) {
			System.out.println("Error In UserDao -> loginUser()");
//			e.printStackTrace();
		}
		return userBean;

	}

	public UserBean getDataById(int userId) {
		UserBean userBean = null;
		try {

			userBean = stmt.queryForObject("select * from users where userid =?",
					new BeanPropertyRowMapper<UserBean>(UserBean.class), new Object[] { userId });
		} catch (Exception e) {
			System.out.println("Error In UserDao -> loginUser()");
//			e.printStackTrace();
		}
		return userBean;

	}

	public void updateUser(UserBean userBean) {
		stmt.update("update users set firstname=?,lastname=?,gender=?,email=?,password=? where userid =?",
				userBean.getFirstName(), userBean.getLastName(), userBean.getGender(), userBean.getEmail(),
				userBean.getPassword(), userBean.getUserId());
	}

}