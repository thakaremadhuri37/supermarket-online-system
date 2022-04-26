package com.supermarket.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.supermarket.db.DBConnection;

@Controller
public class ProductStockController {
	DBConnection connection = new DBConnection();
	Connection con = null;

	@ResponseBody
	@RequestMapping(value = "/productStock/{id}", method = RequestMethod.GET)
	public Map<String, Integer> getProductStock(@PathVariable("id") int id) {
		return getProductById(id);

	}

	public Map<String, Integer> getProductById(int id) {
		int quantity = 0;
		System.out.println("Product ID: " + id);
		Map<String, Integer> map = new HashMap<>();
		try {
			con = connection.getConnection();
			PreparedStatement ps = con.prepareStatement("select total_qty from product_stock where product_id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				quantity = rs.getInt(1);
			}
			System.out.print("stock---" + quantity);

		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();

		}
		map.put("stock", quantity);
		return map;
	}
}
