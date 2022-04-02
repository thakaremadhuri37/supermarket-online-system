package com.supermarket.controller;

import java.util.List;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.supermarket.bean.CartBean;

@Controller
public class viewCartController {

	@RequestMapping(value = "/viewCart", method = RequestMethod.POST)
	public String showviewCartPage(@RequestParam  String cartBean, Model view) {
		System.out.println("inside viewCart page show method");
		System.out.println("cartBean  "+cartBean);
		if (null!=cartBean) {
			ObjectMapper mapper = new ObjectMapper();
			CartBean cartBeanObj = new CartBean();
			try {
				cartBeanObj = mapper.readValue(cartBean, CartBean.class);//json to java obj
			} catch (JsonProcessingException e) {
				System.out.println("Exception occured while converting json to object");
				e.printStackTrace();
			}
			System.out.println(cartBeanObj);
			if (null != cartBeanObj && !CollectionUtils.isEmpty(cartBeanObj.getProductList())) {
				setProductToatal(cartBeanObj);
				view.addAttribute("cartbean", cartBeanObj);
				view.addAttribute("CartBeanObj", new CartBean());
				return "viewCartNew";
			} 
		}
		return "redirect:home";		
		
		
	}
	public void setProductToatal(CartBean cartBean) {
		List<ProductBean> list=cartBean.getProductList();
		for(ProductBean productBean:list) {
			productBean.setProductTotal(productBean.getPrice()*productBean.getQuantity());
			
		}
		System.out.print("after change"+cartBean);
		
	}
	@RequestMapping(value = "orderConfirm", method = RequestMethod.GET)
	public String showConfirmationPage()
	{
		return "orderConfirm";
	}
	/*
	 * @RequestMapping(value = "/viewCart", method = RequestMethod.GET) public
	 * ModelAndView finalPage(@RequestParam("name")String str) {
	 * System.out.print("insidee new" +str); ModelAndView mv=new ModelAndView();
	 * mv.setViewName("viewCart"); return mv; }
	 */

}
