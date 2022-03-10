package com.supermarket.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.supermarket.bean.CartBean;
import com.supermarket.bean.CustSessionBean;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@Controller
public class ProductCheckoutController {

	//@CrossOrigin(origins = "http://localhost:8080")
	@RequestMapping(value = "/checkout_page", method = RequestMethod.POST)
	public ModelAndView showCheckoutPage(@ModelAttribute("CartBeanObj") CartBean cartBean,BindingResult bindingResult) {
		System.out.println("---Inside showCheckoutPage : " + cartBean);
		
		if(bindingResult.hasErrors()) {
			System.out.println("Error :: "+bindingResult.getAllErrors());
		}
		ModelAndView view = new ModelAndView();
		view.addObject("cartbean", cartBean);
		view.setViewName("checkout_page");
		// System.out.println("cartBeanObj : "+cartBeanObj);
		return view;
	}
	
	@RequestMapping(value = "/checkoutFromCart", method = RequestMethod.POST)
	public ModelAndView showviewCartPage(@RequestParam  String cartBean) {

		System.out.println("inside showviewCartPage method ");
		System.out.println("cartBean  "+cartBean);
		ObjectMapper mapper = new ObjectMapper();
		CartBean cartBeanObj = new CartBean();
		try {
			 cartBeanObj = mapper.readValue(cartBean, CartBean.class);
		} catch (JsonProcessingException e) {
			System.out.println("Exception occured while converting json to object");
			e.printStackTrace();
		}
		System.out.println("cartBeanObj"+cartBeanObj);
		
		
		ModelAndView view = new ModelAndView();
		view.addObject("cartbean", cartBeanObj);
		view.setViewName("checkout_page");
		// System.out.println("cartBeanObj : "+cartBeanObj);
		return view;
	}

}
