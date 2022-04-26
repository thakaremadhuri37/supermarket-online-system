package com.supermarket.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.supermarket.dao.CategoryDaoImpl;
import com.supermarket.dao.ProductDaolmpl;

@Controller
public class HomeController {

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView displayHomePage() {

		ProductDaolmpl daolmpl = new ProductDaolmpl();
		List<ProductBean> productlist = daolmpl.getProductList();

		ModelAndView mv = new ModelAndView();
		mv.addObject("productlist", productlist);
		
		CategoryDaoImpl categoryDaoImpl=new CategoryDaoImpl();
		List<CategoryBean> categorylist=categoryDaoImpl.getProductCategoryList();
		mv.addObject("categorylist",categorylist);

		mv.setViewName("home");
		return mv;
	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String displayaboutPage() {

		
		return "about";
	}
	
}
