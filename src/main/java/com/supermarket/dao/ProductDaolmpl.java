package com.supermarket.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.supermarket.controller.ProductBean;
import com.supermarket.db.DBConnection;

public class ProductDaolmpl {

	public List<ProductBean> getProductList() {
		List<ProductBean> list = new ArrayList<>();

		Connection con = null;
		DBConnection connection = new DBConnection();
		try {
			con = connection.getConnection();
			PreparedStatement ps = con.prepareStatement("select id,name,price,image from products");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ProductBean bean = new ProductBean();
				bean.setId(rs.getInt(1));
				bean.setName(rs.getString(2));
				bean.setPrice(rs.getDouble(3));
				bean.setImagename(rs.getString(4));
				list.add(bean);

			}

		} catch (Exception e) {
			System.out.println("Exception Occur");

			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		finally {

			try {
				if (null != con) {
					con.close();
				}

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		System.out.println(list);
		return list;
	}

}
