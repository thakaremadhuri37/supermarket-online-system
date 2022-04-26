package com.supermarket.controller;

import java.time.format.DateTimeFormatter;
import java.time.LocalDateTime;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
		int orderId = 0;
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

		orderId = captureOrderDetails(cartBean, session, orderId, useremail, productList);

		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		LocalDateTime now = LocalDateTime.now();
		System.out.println(dtf.format(now));

		view.addObject("datetime", dtf.format(now));
		view.addObject("orderId", orderId);
		view.addObject("cartbean", cartBean);
		view.setViewName("orderConfirm");

		System.out.println("cartBean : " + cartBean);
		/*
		 * ArrayList<ProductBean> list= new ArrayList<ProductBean>();
		 * list.add((ProductBean) cartBean.getProductList());
		 */
		// System.out.println("cartBean : "+list);

		System.out.println("cartBean : " + cartBean.getProductList());
		ProductBean bean = new ProductBean();
		// bean=(ProductBean) cartBean.getProductList();
		// System.out.println("quantity : "+bean.getQuantity());

		List<ProductBean> productList1 = cartBean.getProductList();
		for (ProductBean bean1 : productList1) {
			int id = bean1.getId();
			int quantity = bean1.getQuantity();
			System.out.print("idd" + bean1.getId() + bean1.getQuantity());
			updateStock(id, quantity);
		}
		return view;
	}

	private int captureOrderDetails(CartBean cartBean, HttpSession session, int orderId, String useremail,
			List<ProductBean> productList) {
		try {
			con = connection.getConnection();

			orderId = getOrderID();
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
		return orderId;
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

			PreparedStatement ps = con.prepareStatement("select user_id from users where email='" + useremail + "'");
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

	public void updateStock(int id, int quantity) {

		int stock = substractStock(id, quantity);
		System.out.println("stock in updatestock" + stock);
		try {
			Connection con = connection.getConnection();

			PreparedStatement ps = con.prepareStatement("UPDATE product_stock SET total_qty = ? WHERE product_id = ?");

			ps.setInt(1, stock);

			ps.setInt(2, id);

			int count = ps.executeUpdate();
			if (count == 1) {
				System.out.println("stock updated");

			} else {
				System.out.println("stock not updated");
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

	}

	public int substractStock(int id, int quantity) {
		int new_stock = 0;
		try {
			Connection con = connection.getConnection();

			PreparedStatement ps = con.prepareStatement("select total_qty from product_stock where product_id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				int existing_stock = rs.getInt(1);
				new_stock = existing_stock - quantity;
			}
			System.out.print("new_stock==" + new_stock);

		} catch (Exception e) {

		}
		return new_stock;
	}
}
