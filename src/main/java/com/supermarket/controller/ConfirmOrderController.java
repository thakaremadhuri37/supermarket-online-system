package com.supermarket.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.supermarket.bean.CartBean;
import com.supermarket.db.DBConnection;

@Controller
public class ConfirmOrderController {
	DBConnection connection = new DBConnection();
	Connection con = null;

	@RequestMapping(value = "/orderConfirm", method = RequestMethod.POST)
	public ModelAndView showConfirmationPage(@ModelAttribute("CartBeanObj") CartBean cartBean,
			BindingResult bindingResult, HttpSession session) {
		String useremail = (String) session.getAttribute("user_login_email");
		System.out.println("---useremail : " + useremail);

		// CartBean cartBean2 = (CartBean) session.getAttribute("cartbeanSessionObj");
		double s = cartBean.getTotalCartAmount();
		System.out.println("---Inside showCheckoutPage : " + cartBean);
		ModelAndView view = new ModelAndView();
		// String sessionData = (String) session.getAttribute("user_login_email");
		if (bindingResult.hasErrors()) {
			System.out.println("Error :: " + bindingResult.getAllErrors());
		}
		List<ProductBean> productList = cartBean.getProductList();

		try {
			con = connection.getConnection();

			int orderId = getOrderID();
			int userId = getUserId(useremail);
			for (ProductBean productBean : productList) {
				String sessionData = (String) session.getAttribute("user_login_email");
				System.out.print("emaiiillll" + sessionData);
				PreparedStatement ps = con.prepareStatement(
						"insert into orders (user_id,product_id,qty,unit_price,total_price,payment_status,order_id,order_date) values(?,?,?,?,?,?,?,NOW())");
				System.out.print("jhjjfgjhgh==" + productBean.getId());
				ps.setInt(1, userId);
				ps.setInt(2, productBean.getId());
				ps.setInt(3, productBean.getQuantity());

				ps.setDouble(4, productBean.getPrice());
				ps.setDouble(5, cartBean.getTotalCartAmount());

				ps.setString(6, "Success");
				ps.setInt(7, orderId);

				int count = ps.executeUpdate();
				if (count == 1) {
					System.out.println("product added");

				} else {
					System.out.println("product failed");
				}
			}
		}

		catch (Exception e) {
			System.out.print("Exception occure while adding a product in DB ");
			e.printStackTrace();

		} finally {
			try {

				if (null != con) {

					con.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		/*
		 * String username=(String) session.getAttribute("user_login"); String
		 * useremail=(String) session.getAttribute("user_login_email");
		 * 
		 * System.out.println(username);
		 * 
		 * view.addObject(username); view.addObject("useremail", useremail);
		 * view.addObject(username, username);
		 */

		view.addObject("cartbean", cartBean);
		view.setViewName("orderConfirm");
		// System.out.println("cartBeanObj : "+cartBeanObj);
		return view;
	}

	public int getOrderID() {
		int orderid = 0;
		try {
			con = connection.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT nextval('orderid_sequence')");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				orderid = rs.getInt(1);
				System.out.print("id===" + orderid);
			}

		} catch (Exception e) {
			System.out.print("error occur while getting userid" + e);
		}
		return orderid;
	}

	public int getUserId(String useremail) {
		int userid = 0;
		System.out.println("---useremailll : " + useremail);


		try {
			con = connection.getConnection();

			// int id="select user_id from users where email=sessionData";

			PreparedStatement ps = con.prepareStatement("select user_id from users where email='" + useremail+"'");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				userid = rs.getInt(1);
				System.out.print("id===" + userid);
			}

		} catch (Exception e) {
			System.out.print("error occur while getting userid" + e);
		}
		return userid;
	}
}
