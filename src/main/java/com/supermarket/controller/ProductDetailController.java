package com.supermarket.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JacksonInject.Value;
import com.supermarket.db.DBConnection;
@Controller
public class ProductDetailController {
	 @RequestMapping(value = "/product",method = RequestMethod.GET)
		public ModelAndView showProductDetailPage( @RequestParam("id") int id )
	 {
			System.out.println("inside showProductDetailPage show method.... id= "+id);
			ProductBean productBean = getProductById(id);
			

		 ModelAndView mv=new ModelAndView();
		 mv.addObject("productbean",productBean);
		 mv.setViewName("productDetailPage");
		 return mv;
	 }

	public ProductBean getProductById(int id) {
		Connection con=null;
		DBConnection db=new DBConnection();
		ProductBean productBean=new ProductBean();
		try {
		con=db.getConnection();
		int c=1;
		PreparedStatement ps=con.prepareStatement("select name,price,image,categoryid from products where id=?");
		ps.setInt(1, id);
		ResultSet rs=ps.executeQuery();
		System.out.println("inside try block");
		while(rs.next()) {
			productBean.setId(id);
			productBean.setName(rs.getString(1));
			productBean.setPrice(rs.getDouble(2));
			productBean.setImagename(rs.getString(3));
			productBean.setCatagoryId(rs.getInt(4));
		}
		System.out.println("inside try block"+productBean.getName()+"  "+productBean.getPrice()+" "+productBean.getImagename()+" "+productBean.getId());
		}
		catch (Exception e) {
			System.out.println(e);
		}
		finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return productBean;
	}
	 
	 
	 
 }