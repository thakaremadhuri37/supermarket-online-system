package com.supermarket.controller;

import java.util.List;

import org.springframework.web.multipart.commons.CommonsMultipartFile;


public class ProductBean {
	
	
	
	private int id;
	private String name;
	private double price;
	private String imagename;
	private int quantity;
	private double productTotal;
	private int catagoryId;
	private CommonsMultipartFile file;
	private String showOnHome;
	private int product_stock;

	
	
	
	
	public int getProduct_stock() {
		return product_stock;
	}
	public void setProduct_stock(int product_stock) {
		this.product_stock = product_stock;
	}
	public String getShowOnHome() {
		return showOnHome;
	}
	public void setShowOnHome(String showOnHome) {
		this.showOnHome = showOnHome;
	}
	public CommonsMultipartFile getFile() {
		return file;
	}
	public void setFile(CommonsMultipartFile file) {
		this.file = file;
	}
	public int getCatagoryId() {
		return catagoryId;
	}
	public void setCatagoryId(int catagoryId) {
		this.catagoryId = catagoryId;
	}
	public double getProductTotal() {
		return productTotal;
	}
	public void setProductTotal(double productTotal) {
		this.productTotal = productTotal;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getImagename() {
		return imagename;
	}
	public void setImagename(String imagename) {
		this.imagename = imagename;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@Override
	public String toString() {
		return "ProductBean [id=" + id + ", name=" + name + ", price=" + price + ", imagename=" + imagename
				+ ", quantity=" + quantity + ", productTotal=" + productTotal + ", catagoryId=" + catagoryId + ", file="
				+ file + ", showOnHome=" + showOnHome + ", product_stock=" + product_stock + "]";
	}
	
	
	
	
	
	

}
