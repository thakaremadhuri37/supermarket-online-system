package com.supermarket.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.supermarket.dao.CategoryDaoImpl;
import com.supermarket.db.DBConnection;

@Controller
public class AddProductController {
	private static final String UPLOAD_DIRECTORY = "/resources/images/pro";

	@RequestMapping("/addProductPage")
	public ModelAndView showAddProductPage() {
		System.out.print("inside add controller");
		ModelAndView mv = new ModelAndView();
		CategoryDaoImpl categoryDaoImpl = new CategoryDaoImpl();
		List<CategoryBean> categorylist = categoryDaoImpl.getProductCategoryList();
		System.out.print("inside add controller;;;;;" + categorylist);

		mv.addObject("categorylist", categorylist);
		mv.setViewName("addProductAdmin");
		return mv;
	}

	@RequestMapping(value = "/addProduct", method = RequestMethod.POST)
	public ModelAndView addProductInDb(@ModelAttribute ProductBean productBean, HttpSession session)
			throws IOException {
		System.out.print("inside addProductInDb" + productBean.toString());
		ModelAndView mv = new ModelAndView();
		CategoryDaoImpl categoryDaoImpl = new CategoryDaoImpl();
		List<CategoryBean> categorylist = categoryDaoImpl.getProductCategoryList();
		System.out.print("inside add controller;;;;;" + categorylist);

		String filename = uploadImage(productBean, session);

		System.out.print("inside filenammeee---" + filename);

		DBConnection connection = new DBConnection();
		try {
			Connection con = connection.getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into products (name,price,image,categoryid) values(?,?,?,?)");
			ps.setString(1, productBean.getName());
			ps.setDouble(2, productBean.getPrice());
			ps.setString(3, filename);
			ps.setInt(4, productBean.getCatagoryId());
			int count = ps.executeUpdate();
			if (count == 1) {
				System.out.println("product added");

			} else {
				System.out.println("product failed");
			}
		}

		catch (Exception e) {
			System.out.print("Exception occure while adding a product in DB ");
			e.printStackTrace();
		}
		mv.addObject("categorylist", categorylist);
		mv.setViewName("addProductAdmin");
		return mv;
	}

	private String uploadImage(ProductBean productBean, HttpSession session) throws FileNotFoundException, IOException {
		ServletContext context = session.getServletContext();
		String path = context.getRealPath(UPLOAD_DIRECTORY);
		String filename = productBean.getFile().getOriginalFilename();

		System.out.println(path + " " + filename);

		byte[] bytes = productBean.getFile().getBytes();
		BufferedOutputStream stream = new BufferedOutputStream(
				new FileOutputStream(new File(path + File.separator + filename)));
		stream.write(bytes);
		stream.flush();
		stream.close();
		return filename;
	}

}
