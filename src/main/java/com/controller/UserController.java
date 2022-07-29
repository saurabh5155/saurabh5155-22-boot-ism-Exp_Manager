package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.UserBean;
import com.dao.UserDao;

@Controller
public class UserController {
	
	@Autowired
	UserDao userDao;
	
	@GetMapping("/users")
	public String signupUser() {
		return "Signup";
	}
	
	@PostMapping("/users")
	public String addSignupUser(UserBean userBean) {
		userBean.setUserType("customer");
		userDao.signup(userBean);
		return "Login";
	}
}
