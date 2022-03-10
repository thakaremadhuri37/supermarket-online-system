package com.supermarket.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;

import com.supermarket.bean.CartBean;
import com.supermarket.bean.CustSessionBean;
import com.supermarket.controller.ProductBean;

@Configuration
public class BeanConfig {public BeanConfig() {
	// TODO Auto-generated constructor stub
}
	@Bean
	public CartBean cartBeanObj()
	{
		return new CartBean();
	}
	
	@Bean
	public CustSessionBean custSessionBean() {
		return new CustSessionBean();
	}
	@Bean
	public ProductBean getProductBean() {
		return new ProductBean();
	}
}
