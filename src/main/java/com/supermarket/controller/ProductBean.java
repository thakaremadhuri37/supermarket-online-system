package com.supermarket.controller;

public class ProductBean {
	private int id;
	private String name;
	private double price;
	private String imagename;
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
	@Override
	public String toString() {
		return "ProductBean [id=" + id + ", name=" + name + ", price=" + price + ", imagename=" + imagename + "]";
	}
	
	

}
