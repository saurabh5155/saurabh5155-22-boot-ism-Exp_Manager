package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.SubCategoryBean;

@Repository
public class SubCategoryDao {

	@Autowired
	JdbcTemplate stmt;

	public void addCategory(SubCategoryBean subCategoryBean) {
		stmt.update("insert into sub_categories (subcategory_name,categoryid) values (?,?)",
				subCategoryBean.getSubcategory_name(), subCategoryBean.getCategoryId());
	}
	
	public List<SubCategoryBean> listByCategoryId(int categoryId){
		return stmt.query("select * from sub_categories where categoryid =?", new BeanPropertyRowMapper<SubCategoryBean>(SubCategoryBean.class),categoryId);
	}
}
