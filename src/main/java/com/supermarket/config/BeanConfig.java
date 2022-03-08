package com.supermarket.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.supermarket.bean.CartBean;
import com.supermarket.controller.ProductBean;

@Configuration
public class BeanConfig {public BeanConfig() {
	// TODO Auto-generated constructor stub
}
	@Bean
	public CartBean  getCartBean()
	{
		return new CartBean();
	}
	
	@Bean
	public ProductBean getProductBean() {
		return new ProductBean();
	}
}
