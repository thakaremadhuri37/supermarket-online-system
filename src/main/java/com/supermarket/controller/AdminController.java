package com.supermarket.controller;

import java.lang.ProcessBuilder.Redirect;
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
import com.supermarket.db.DBConnection;

@Controller
public class AdminController {
	Connection con = null;
	DBConnection connection = new DBConnection();

	@RequestMapping("/showallproducts")
	public ModelAndView showAllProductPage() {
		List<ProductBean> list = new ArrayList<>();

		try {
			con = connection.getConnection();
			PreparedStatement ps = con.prepareStatement("select id,name,price,image from products where isactive='Y'");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				ProductBean bean = new ProductBean();
				bean.setId(rs.getInt(1));
				bean.setName(rs.getString(2));
				bean.setPrice(rs.getDouble(3));
				bean.setImagename(rs.getString(4));
				list.add(bean);
				System.out.println("list" + list);

			}

		} catch (Exception e) {
			System.out.println(e);
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("productList", list);
		mv.setViewName("showAllProducts");
		return mv;

	}

	@RequestMapping(value = "/deletProduct", method = RequestMethod.GET)
	public String deletProduct(@RequestParam("id") int id) {
		int count = 0;
		try {
			con = connection.getConnection();
			PreparedStatement ps = con.prepareStatement("update  products set isactive='N' where id=?");
			ps.setInt(1, id);
			count = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		System.out.print("product deleted " + (count == 1 ? "true" : "false"));
		return "redirect:showallproducts";

	}

	

}
