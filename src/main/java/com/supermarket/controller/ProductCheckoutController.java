package com.supermarket.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
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

@Controller
public class ProductCheckoutController {

	@Autowired // spring--creating object
	viewCartController viewCartController;

	@RequestMapping(value = "/checkout_page", method = RequestMethod.POST)
	public ModelAndView showCheckoutPage(@ModelAttribute("CartBeanObj") CartBean cartBean, BindingResult bindingResult,
			HttpSession session) {
		System.out.println("---Inside showCheckoutPage : " + cartBean);
		ModelAndView view = new ModelAndView();
		// String sessionData = (String) session.getAttribute("user_login_email");
		if (bindingResult.hasErrors()) {
			System.out.println("Error :: " + bindingResult.getAllErrors());
		}
		viewCartController.setProductToatal(cartBean);
		view.addObject("cartbean", cartBean);
		view.setViewName("checkout_page");
		session.setAttribute("cartbeanSessionObj", cartBean);

		// System.out.println("cartBeanObj : "+cartBeanObj);
		return view;
	}

	// header button veiwcart
	@RequestMapping(value = "/checkoutFromCart", method = RequestMethod.POST)
	public ModelAndView showviewCartPage(@RequestParam String cartBean) {
			
		   System.out.println("inside showviewCartPage method ");
		System.out.println("cartBean  " + cartBean);
		if (!StringUtils.isEmpty(cartBean)) {
			ObjectMapper mapper = new ObjectMapper();
			CartBean cartBeanObj = new CartBean();
			System.out.println("cartBeanObjjjj" + cartBeanObj);

			try {
				cartBeanObj = mapper.readValue(cartBean, CartBean.class);
			} catch (JsonProcessingException e) {
				System.out.println("Exception occured while converting json to object");
				e.printStackTrace();
			}
			System.out.println("cartBeanObjjjj" + cartBeanObj);

			viewCartController.setProductToatal(cartBeanObj);

			ModelAndView view = new ModelAndView();
			view.addObject("cartbean", cartBeanObj);
			view.setViewName("checkout_page");
			view.addObject("CartBeanObj", new CartBean());

			// System.out.println("cartBeanObj : "+cartBeanObj);
			return view;
		}
		ModelAndView view1 = new ModelAndView();
		view1.setViewName("redirect:home");
		return view1;

	}
}
