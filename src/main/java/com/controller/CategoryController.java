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
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.CSCategoryBean;
import com.bean.CategoryBean;
import com.bean.UserBean;
import com.dao.CategoryDao;

@Controller
public class CategoryController {

	@Autowired
	CategoryDao categoryDao;

	@GetMapping("/category")
	public String category(@ModelAttribute("categoryBean") @Valid CategoryBean categoryBean, BindingResult result,
			Model model) {
		model.addAttribute("categoryBean", categoryBean);
		return "AddCategory";
	}

	@PostMapping("/addCategory")
	public String addCategory(@ModelAttribute("categoryBean") @Valid CategoryBean categoryBean, BindingResult result,
			Model model,HttpSession session) {
		UserBean userBean =(UserBean) session.getAttribute("userBean");
		categoryBean.setUserId(userBean.getUserId());
		System.out.println(userBean.getUserId());
		categoryDao.addCategory(categoryBean);
		return "AdminDashbord";
	}

	@GetMapping("/listCategory")
	public String listCageroy(Model model,HttpSession session) {
		UserBean userBean = (UserBean) session.getAttribute("userBean");
		List<CategoryBean> listCategory=categoryDao.listCategory(userBean.getUserId());
		model.addAttribute("listCategory",listCategory);
		return "ListCategory";
	}
	
	@GetMapping("/listSubAndCategory")
	public String listCageroySubCat(Model model,HttpSession session) {
		
		UserBean userBean = (UserBean) session.getAttribute("userBean");
		int userId = userBean.getUserId();
		List<CSCategoryBean> listCategory = categoryDao.listCSCategory(userId);
//		System.out.println(listCategory.get(0).getSubCategoryName());
		model.addAttribute("listCategory",listCategory);
		return "ListSubCat";
	}
	
	@GetMapping("/deleteCategory")
	public String deleteCategory(@RequestParam("categoryId") int categoryId) {
		categoryDao.deleteCategory(categoryId);
		return "redirect:/listCategory";
	}
}
