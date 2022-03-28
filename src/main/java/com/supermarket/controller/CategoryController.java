package com.supermarket.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.supermarket.dao.CategoryDaoImpl;
import com.supermarket.dao.ProductDaolmpl;
import com.supermarket.db.DBConnection;

@Controller
public class CategoryController {

	@RequestMapping(value = "/categorypage", method = RequestMethod.GET)
	public ModelAndView showCategoryPage(@RequestParam("categoryid") String categoryid) {
		System.out.println("inside showCategoryPage method.... categoryid= " + categoryid);
		
		ProductDaolmpl productDaolmpl=new ProductDaolmpl();
		List<ProductBean> productlist = productDaolmpl.getProductListByCategoryId(categoryid);
		ModelAndView mv = new ModelAndView();
		mv.addObject("productlist", productlist);
		mv.setViewName("category");
		return mv;

	}

	

}
