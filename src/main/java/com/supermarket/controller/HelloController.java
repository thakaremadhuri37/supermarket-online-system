package com.supermarket.controller;

import java.sql.Connection;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.supermarket.db.DBConnection;

@Controller
public class HelloController {

	@RequestMapping("/hello")
	public ModelAndView greet(@RequestParam("name") String name) throws ClassNotFoundException, SQLException {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("welcome");
		mv.addObject("name", name);
		
		DBConnection helper = new DBConnection();
		Connection connection = helper.getConnection();
		if (connection!=null) {
			System.out.println("DB Connection successfully connected...");
			
		}

		return mv;
	}

	@RequestMapping("/login1")
	public ModelAndView greet() {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");

	
		return mv;
	}
}
