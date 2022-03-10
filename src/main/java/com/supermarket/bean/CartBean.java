package com.supermarket.bean;

import java.util.List;

import com.supermarket.controller.ProductBean;

public class CartBean {
	private List<ProductBean> productList ;
	private double totalCartAmount;

	

	public List<ProductBean> getProductList() {
		return productList;
	}

	public void setProductList(List<ProductBean> productList) {
		this.productList = productList;
	}

	public double getTotalCartAmount() {
		return totalCartAmount;
	}

	public void setTotalCartAmount(double totalCartAmount) {
		this.totalCartAmount = totalCartAmount;
	}

	@Override
	public String toString() {
		return "CartBean [productList=" + productList + ", totalCartAmount=" + totalCartAmount + "]";
	}

}
