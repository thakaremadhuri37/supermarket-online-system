package com.supermarket.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.supermarket.db.DBConnection;

@Controller
public class LoginController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showLoginPage() {

		System.out.println("inside login page show method");
		ModelAndView view = new ModelAndView();
		view.setViewName("login");
		return view;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam String username, @RequestParam String password) {

		System.out.println("inside login username  " + username + "  password " + password);
		
		Connection con=null;
		DBConnection db = new DBConnection();
		try {
			 con = db.getConnection();
			PreparedStatement ps = con
					.prepareStatement("	select count (*) from users where username=? AND password =?");
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			if (rs.next() && rs.getInt(1)>0) {
				System.out.println("Login Successfully");
				
			}
			else {
				System.out.println("Login Failed");

			}

		} catch (Exception e) {
			System.out.println("Exception Occur");

			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				if (null!=con) {
					con.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		ModelAndView view = new ModelAndView();
		view.setViewName("login");
		return view;
	}

}
