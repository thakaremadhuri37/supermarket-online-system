package com.supermarket.controller;
//showAllProduct---deletpoduct---showallorders---showallordersbycategory
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

import com.supermarket.bean.OrderBean;
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
				
				PreparedStatement ps1 = con.prepareStatement("select total_qty from product_stock where product_id=?");
				ps1.setInt(1, rs.getInt(1));
				ResultSet rs1 = ps1.executeQuery();
				rs1.next();
					bean.setProduct_stock(rs1.getInt(1));
					System.out.println(bean.getProduct_stock());
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

	@RequestMapping("/showallorders")
	public ModelAndView showAllOrders() {
		List<OrderBean> list = new ArrayList<>();
		List<Integer> orderIdList = new ArrayList<>();

		try {
			con = connection.getConnection();
			PreparedStatement ps = con
					.prepareStatement("select order_id,user_id,total_price,payment_status,order_date from orders");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				if (!orderIdList.contains(rs.getInt(1))) {
					OrderBean bean = new OrderBean();
					bean.setOrder_id(rs.getInt(1));
					bean.setUser_id(rs.getInt(2));
					bean.setTotal_price(rs.getDouble(3));
					bean.setPayment_status(rs.getString(4));
					bean.setOrder_date(rs.getString(5));
					list.add(bean);
					orderIdList.add(rs.getInt(1));

				}

			}
			System.out.println("list" + list);

		} catch (Exception e) {
			System.out.println(e);
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("productList", list);
		mv.setViewName("showAllOrders");
		return mv;

	}

	@RequestMapping(value = "/showorderbyid", method = RequestMethod.GET)
	public ModelAndView showorderbyid(@RequestParam("id") int id) {
		List<OrderBean> list = new ArrayList<>();

		ModelAndView mv=new ModelAndView();
		try {
			con = connection.getConnection();
			PreparedStatement ps = con.prepareStatement("select order_id,user_id,product_id,qty,unit_price,total_price,payment_status,order_date from orders where order_id= ?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				OrderBean bean = new OrderBean();
				bean.setOrder_id(rs.getInt(1));
				bean.setUser_id(rs.getInt(2));
				bean.setProduct_id(rs.getInt(3));
				bean.setQty(rs.getInt(4));
				bean.setUnit_price(rs.getDouble(5));


				bean.setTotal_price(rs.getDouble(6));
				bean.setPayment_status(rs.getString(7));
				bean.setOrder_date(rs.getString(8));
				list.add(bean);
				mv.addObject("toal_price",bean.getTotal_price());

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		mv.addObject("orderlist",list);
		mv.setViewName("showOrderById");
return mv;
	}
	
	@RequestMapping(value = "/showuserbyid", method = RequestMethod.GET)
	public ModelAndView showuserbyid(@RequestParam("id") int id) {
		List<RegisterBean> list = new ArrayList<>();

		ModelAndView mv=new ModelAndView();
		try {
			con = connection.getConnection();
			PreparedStatement ps = con.prepareStatement("select user_id,username,email,created_on from users where user_id= ?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				RegisterBean bean = new RegisterBean();
				bean.setUser_id(rs.getInt(1));
				bean.setUsername(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setCreated_on(rs.getString(4));


			
				list.add(bean);
				

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		mv.addObject("userlist",list);
		mv.setViewName("showuserById");
return mv;
	}

}
