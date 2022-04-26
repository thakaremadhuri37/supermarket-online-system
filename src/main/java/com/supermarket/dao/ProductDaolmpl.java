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
			PreparedStatement ps = con.prepareStatement("select id,name,price,image,displayonhome,isactive from products");
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				/*
				 * String v=rs.getString(5); System.out.print("v"+v);
				 */
				//String v=rs.getDouble(3);
				System.out.print("v="+rs.getString(5));
				
				String display=rs.getString(5);
				String active=rs.getString(6);
				if(  display.equals("Y") && active.equals("Y")) {
					System.out.print("inside if");
				ProductBean bean = new ProductBean();
				bean.setId(rs.getInt(1));
				bean.setName(rs.getString(2));
				bean.setPrice(rs.getDouble(3));
				bean.setImagename(rs.getString(4));
				//System.out.println("listtthdhfbb");
				
				
				PreparedStatement ps1 = con.prepareStatement("select total_qty from product_stock where product_id=?");
				ps1.setInt(1, rs.getInt(1));
				ResultSet rs1 = ps1.executeQuery();
				rs1.next();
					bean.setProduct_stock(rs1.getInt(1));
					System.out.println(bean.getProduct_stock());
					
				
				
				
				

				list.add(bean);
				System.out.println("listtt===="+bean.toString());

				}
			}
			
		} catch (Exception e) {
			System.out.println("Exception Occur"+ e);

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
	
	public List<ProductBean> getProductListByCategoryId(String categoryid) {
		DBConnection dbconnection = new DBConnection();

		List<ProductBean> productlist = new ArrayList<ProductBean>();

		try {
			Connection con = dbconnection.getConnection();
			PreparedStatement ps = con
					.prepareStatement("select name,price,image,id,isactive from products where categoryid=" + categoryid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				String active=rs.getString(5);
				if(  active.equals("Y")) {
				ProductBean productBean = new ProductBean();

				productBean.setName(rs.getString(1));
				productBean.setPrice(rs.getDouble(2));
				productBean.setImagename(rs.getString(3));
				productBean.setId(rs.getInt(4));

				productlist.add(productBean);
				System.out.println("inside try block" + productBean.getName() + "  " + productBean.getPrice() + " "
						+ productBean.getImagename());

			}
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return productlist;
	}

}
