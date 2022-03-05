package com.supermarket.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.supermarket.controller.CategoryBean;
import com.supermarket.db.DBConnection;

public class CategoryDaoImpl {

	public List<CategoryBean> getProductCategoryList() {
		List<CategoryBean> list = new ArrayList<>();

		Connection con = null;
		DBConnection connection = new DBConnection();
		try {
			con = connection.getConnection();
			PreparedStatement ps = con.prepareStatement("select categoryid,name,image from category");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				CategoryBean bean = new CategoryBean();
				bean.setCategoryid(rs.getInt(1));
				bean.setName(rs.getString(2));
				bean.setImagename(rs.getString(3));
				list.add(bean);

			}

		} catch (Exception e) {
			System.out.println("Exception Occur");

			e.printStackTrace();
		}

		finally {

			try {
				if (null != con) {
					con.close();
				}

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		System.out.println(list);
		return list;
	}

	
}
