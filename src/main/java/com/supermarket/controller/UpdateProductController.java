package com.supermarket.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.supermarket.dao.CategoryDaoImpl;
import com.supermarket.db.DBConnection;

@Controller
public class UpdateProductController {
	@RequestMapping(value = "/updateProductByAdmin", method = RequestMethod.GET)
	public ModelAndView showProductDetailPage(@RequestParam("id") int id) {
		ProductDetailController productDetailController = new ProductDetailController();
		System.out.println("inside showProductDetailPage show method.... id= " + id);
		ProductBean productBean = productDetailController.getProductById(id);
		CategoryDaoImpl categoryDaoImpl = new CategoryDaoImpl();
		List<CategoryBean> categorylist = categoryDaoImpl.getProductCategoryList();
		System.out.println("Product :: " + productBean);
		ModelAndView mv = new ModelAndView();
		mv.addObject("productbean", productBean);
		mv.addObject("categorylist", categorylist);
		System.out.print("hhhhh" + categorylist);

		mv.setViewName("updateProductByAdmin");
		return mv;
	}

	@RequestMapping(value = "/updateproduct", method = RequestMethod.POST)
	public ModelAndView addProductInDb(@ModelAttribute ProductBean productBean, HttpSession session)
			throws IOException {
		System.out.print("inside addProductInDbbbb" + productBean.toString());
		ModelAndView mv = new ModelAndView();
		CategoryDaoImpl categoryDaoImpl = new CategoryDaoImpl();
		List<CategoryBean> categorylist = categoryDaoImpl.getProductCategoryList();
		

		DBConnection connection = new DBConnection();
		try {
			Connection con = connection.getConnection();
			PreparedStatement ps = con
					.prepareStatement("UPDATE products SET price = ?, name=?,categoryid=? WHERE id = ?;");
			ps.setInt(4,productBean.getId());
			ps.setDouble(1, productBean.getPrice());
			ps.setString(2, productBean.getName());
			ps.setInt(3, productBean.getCatagoryId());

			int count = ps.executeUpdate();
			if (count == 1) {
				System.out.println("product added");

			} else {
				System.out.println("product failed");
			}
		}

		catch (Exception e) {
			System.out.print("Exception occure while adding a product in DB ");
			e.printStackTrace();
		}
		mv.addObject("categorylist", categorylist);
		mv.setViewName("redirect:home");
		return mv;
	}

}
