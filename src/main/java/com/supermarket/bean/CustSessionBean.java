package com.supermarket.bean;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;


public class CustSessionBean {
	
	private CartBean cartBean;

	public CartBean getCartBean() {
		return cartBean;
	}

	public void setCartBean(CartBean cartBean) {
		this.cartBean = cartBean;
	}
	
	

}
