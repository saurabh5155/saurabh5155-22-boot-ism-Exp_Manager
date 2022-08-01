package com.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.SubCategoryBean;
import com.dao.CategoryDao;
import com.dao.SubCategoryDao;

@Controller
public class SubCategoryController {

	@Autowired
	SubCategoryDao subCategoryDao;

	@GetMapping("/subCategory")
	public String subCategory(@RequestParam("categoryId") int categoryId, Model model,
			SubCategoryBean subCategoryBean) {
		subCategoryBean.setCategoryId(categoryId);
		model.addAttribute("subCategoryBean", subCategoryBean);
		return "AddSunCategory";
	}

	@PostMapping("/addSubCategory")
	public String addSubCategory(@ModelAttribute("subCategoryBean") @Valid SubCategoryBean subCategoryBean,
			@RequestParam("categoryId") int categoryId, Model model) {
		subCategoryBean.setCategoryId(categoryId);
		subCategoryDao.addCategory(subCategoryBean);
		return "redirect:/listSubAndCategory";
	}
}
