package com.supermarket.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.supermarket.bean.CartBean;

@Controller
public class ProductCheckoutController {
	
	@RequestMapping(value = "checkout_page", method = RequestMethod.POST)
	public ModelAndView showCheckoutPage(@ModelAttribute CartBean cartBean) {
		System.out.println("Inside showCheckoutPage : "+cartBean);
		
		ModelAndView view = new ModelAndView();
		view.addObject("cartbean",cartBean);
		view.setViewName("checkout_page");
		return view;
	}

}
