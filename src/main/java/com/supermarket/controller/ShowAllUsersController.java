package com.supermarket.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.supermarket.bean.OrderBean;
import com.supermarket.db.DBConnection;
@Controller
public class ShowAllUsersController {


		Connection con = null;
		DBConnection connection = new DBConnection();

		@RequestMapping("/showallusers")
		public ModelAndView showAllProductPage() {
			List<RegisterBean> list = new ArrayList<>();

			try {
				con = connection.getConnection();
				PreparedStatement ps = con.prepareStatement("select user_id,username,email,created_on,role from users");
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {

					RegisterBean bean = new RegisterBean();
					bean.setUser_id(rs.getInt(1));
					bean.setUsername(rs.getString(2));
					bean.setEmail(rs.getString(3));
					bean.setCreated_on(rs.getString(4));
					bean.setRole(rs.getString(5));
					list.add(bean);
					System.out.println("list" + list);

				}

			} catch (Exception e) {
				System.out.println(e);
			}
			ModelAndView mv = new ModelAndView();
			mv.addObject("userList", list);
			mv.setViewName("showAllusers");
			return mv;

		}

}
