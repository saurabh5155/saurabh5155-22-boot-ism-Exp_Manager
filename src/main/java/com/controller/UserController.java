package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.UserBean;
import com.dao.UserDao;

@Controller
public class UserController {

	@Autowired
	UserDao userDao;

	@GetMapping("/signup")
	public String signupUser() {
		return "Signup";
	}

	@PostMapping("/users")
	public String addSignupUser(UserBean userBean) {
		userBean.setUserType("customer");
		userDao.signup(userBean);
		return "Login";
	}

	@GetMapping("/users")
	public String listUsers(Model model) {
		List<UserBean> listUsers = userDao.listUsers();
		model.addAttribute("listUsers",listUsers);
		return "ListUser";
	}
	
	@GetMapping("/deleteusers/{userId}")
	public String deleteUser(@PathVariable("userId") int userId) {
		userDao.deleteUser(userId);
		return "redirect:/users";
	}
}
