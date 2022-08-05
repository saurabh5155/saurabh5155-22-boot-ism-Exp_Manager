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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.LoginBean;
import com.bean.UserBean;
import com.dao.UserDao;

@Controller
public class UserController {

	@Autowired
	UserDao userDao;

	@GetMapping("/signup")
	public String signupUser(UserBean userBean,Model model) {
		model.addAttribute("userBean",userBean);
		return "Signup";
	}

	@PostMapping("/users")
	public String addSignupUser(@ModelAttribute("userBean") @Valid UserBean userBean,BindingResult result,Model model) {
		
		if(result.hasErrors()) {
			model.addAttribute("userBean",userBean);
			return "Signup";
		}else {
			userBean.setUserType("customer");
			userDao.signup(userBean);
			model.addAttribute("msg","Signup Successful");
			return "redirect:/login";			
		}
	}

	@GetMapping("/users")
	public String listUsers(Model model) {
		List<UserBean> listUsers = userDao.listUsers();
		model.addAttribute("listUsers", listUsers);
		return "ListUser";
	}

	@GetMapping("/deleteusers/{userId}")
	public String deleteUser(@PathVariable("userId") int userId) {
		userDao.deleteUser(userId);
		return "redirect:/users";
	}

	@GetMapping("/login")
	public String login(LoginBean loginBean,Model model) {
		model.addAttribute("loginBean",loginBean);
		return "Login";
	}

	@PostMapping("/login")
	public String loginUser(@ModelAttribute("loginBean") @Valid LoginBean loginBean,Model model,HttpSession session) {
		UserBean userBean = userDao.loginUser(loginBean);
		if (userBean == null) {
			
			model.addAttribute("loginBean",loginBean);
			return "Login";
			
		}else if(userBean.getUserType().equals("admin")){
			
			session.setAttribute("userBean", userBean);
			model.addAttribute("userBean",userBean);
			return "AdminDashbord";
		}else if (userBean.getUserType().equals("customer")) {
			session.setAttribute("userBean", userBean);
			model.addAttribute("userBean",userBean);
			return "Home";
		}else {
			return "Login";			
		}
		
	}

	
	@GetMapping("/getDataById")
	public String getDataById(@RequestParam("userId") int userId, Model model) {
		UserBean userBean = userDao.getDataById(userId);
		model.addAttribute("userBean", userBean);
		return "UpdateUser";
	}

//	@GetMapping("/updateUser")
//	public String updateUserOpen(@ModelAttribute("userBean") @Valid UserBean userBean,BindingResult result,Model model) {
//		model.addAttribute("userBean",userBean);
//		return "UpdateUser";
//	}
	
	@PostMapping("/updateUser")
	public String updateUser(UserBean userBean) {
		userDao.updateUser(userBean);
		return "redirect:/users";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
}
