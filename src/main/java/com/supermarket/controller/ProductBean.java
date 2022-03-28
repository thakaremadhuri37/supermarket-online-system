package com.supermarket.controller;

import java.util.List;

public class ProductBean {
	
	
	public ProductBean() {
		System.out.println("Default Constructor called..");
	}
	private int id;
	private String name;
	private double price;
	private String imagename;
	private int quantity;
	
	
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
	
	public int getQuntity() {
		return quantity;
	}
	public void setQuntity(int quntity) {
		this.quantity = quntity;
	}
	@Override
	public String toString() {
		return "ProductBean [id=" + id + ", name=" + name + ", price=" + price + ", imagename=" + imagename + ",quntity="+quantity+"]";
	}
	
	

}
