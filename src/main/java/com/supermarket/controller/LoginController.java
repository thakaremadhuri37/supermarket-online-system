package com.supermarket.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
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

	/*
	 * @RequestMapping(value = "/login", method = RequestMethod.POST) public
	 * ModelAndView login(@RequestParam String email, @RequestParam String password)
	 * { ModelAndView view = new ModelAndView();
	 * 
	 * System.out.println("inside login username  " + email + "  password " +
	 * password);
	 * 
	 * Connection con = null; DBConnection db = new DBConnection(); try { con =
	 * db.getConnection(); PreparedStatement ps = con.
	 * prepareStatement("	select username  from users where email=? AND password =?"
	 * ); ps.setString(1, email); ps.setString(2, password); ResultSet rs =
	 * ps.executeQuery(); if (rs.next()) { System.out.println("Login Successfully");
	 * String user_login = rs.getString("username"); view.addObject("user_login",
	 * user_login); view.addObject("user_login_email", email);
	 * view.setViewName("home"); } else { System.out.println("Login Failed");
	 * view.addObject("Login_msg", "Login Failed: Wrong Username And Password");
	 * 
	 * view.setViewName("login");
	 * 
	 * }
	 * 
	 * } catch (Exception e) { System.out.println("Exception Occur");
	 * 
	 * // TODO Auto-generated catch block e.printStackTrace(); } finally { try { if
	 * (null != con) { con.close(); } } catch (SQLException e) { // TODO
	 * Auto-generated catch block e.printStackTrace(); }
	 * 
	 * }
	 * 
	 * return view; }
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam("email") String email, @RequestParam("password") String password,
			HttpSession session, ModelMap modelMap) throws ClassNotFoundException {
		System.out.println("inside login page show methodnjjhjhj");

		ModelAndView mv = new ModelAndView();
		DBConnection db = new DBConnection();
		Connection con = null;
		try {
			con = db.getConnection();
			PreparedStatement ps = con.prepareStatement("	select username, role  from users where email=? AND password =?");
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {

				System.out.println("Login Successfully");
				String user_login = rs.getString("username");
				session.setAttribute("user_login", user_login);
				session.setAttribute("user_login_email", email);
				session.setAttribute("role", rs.getString("role"));

				mv.addObject("user_login", user_login);
				mv.addObject("user_login_email", email);
				mv.setViewName("redirect:home");
			} else {
				System.out.println("Login Failed");
				mv.addObject("Login_msg", "Login Failed: Wrong Username And Password");

				mv.setViewName("login");

			}

		} catch (Exception e) {
			System.out.println("Exception Occur");
		}

		System.out.print("getsession"+session.getAttribute("role"));
		
		return mv;

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("user_login");
		session.removeAttribute("user_login_email");
		session.removeAttribute("role");

		return "redirect:login";
	}
}
