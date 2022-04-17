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
	@RequestMapping(value="/search", method = RequestMethod.GET)
	public ModelAndView searchItem(@RequestParam("search") String searchitem) {
		System.out.println("inside searchItem method.... searchitem= " + searchitem);
	  List<ProductBean> productlist = getProductListBySearch(searchitem);
	  ModelAndView mv = new ModelAndView();
	  mv.addObject("productlist",productlist);
	  mv.setViewName("category");
		return mv;

		
	}
	
	
	
	public List<ProductBean> getProductListBySearch(String search) {
		System.out.print("getProductListBySearch="+search);
		
DBConnection  connection=new DBConnection();
		
		Connection con = null;
		
		List<ProductBean> productlist = new ArrayList<ProductBean>();

		try {
			 con = connection.getConnection();
			PreparedStatement ps = con
					.prepareStatement("select name,price,image,id from products where name::text like ?");
			ps.setString(1, "%" + search + "%");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ProductBean productBean = new ProductBean();

				productBean.setName(rs.getString(1));
				productBean.setPrice(rs.getDouble(2));
				productBean.setImagename(rs.getString(3));
				productBean.setId(rs.getInt(4));

				productlist.add(productBean);
				System.out.println("inside try block" + productBean.getName() + "  " + productBean.getPrice() + " "
						+ productBean.getImagename());

			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return productlist;
	}
	

	

}
