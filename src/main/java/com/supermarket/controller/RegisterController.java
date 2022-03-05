package com.supermarket.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.supermarket.db.DBConnection;

@Controller
public class RegisterController {
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView showRegisterPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("register");
		return mv;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView register( RegisterBean registerBean) {

		DBConnection db = new DBConnection();
		Connection con=null;
		try {
			con = db.getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into users (username,password,email,created_on)	values(?,?,?,NOW()) ");
			ps.setString(1, registerBean.getUsername());
			ps.setString(2, registerBean.getPassword());
			ps.setString(3, registerBean.getEmail());

			int count = ps.executeUpdate();
			if (count == 1) {
				System.out.println("record added");

			} else {
				System.out.println("record failed");
			}
		} catch (Exception e) {
			System.out.println("inside catch block");
			e.printStackTrace();
		}finally {
			try {
				
				if (null!=con) {
					
					con.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}

		ModelAndView mv = new ModelAndView();
		mv.setViewName("register");
		return mv;

	}
	@RequestMapping(value="/category",method = RequestMethod.GET)
	public String categoryPage()
	
	{
		return "category";
	}
	

}
