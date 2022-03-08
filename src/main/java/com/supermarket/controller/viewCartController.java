package com.supermarket.controller;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
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
	public ModelAndView showviewCartPage(@RequestParam  String cartBean) {
		System.out.println("inside viewCart page show method");
		System.out.println("cartBean  "+cartBean);
		ModelAndView view = new ModelAndView();
		ObjectMapper mapper = new ObjectMapper();
		CartBean cartBeanObj = new CartBean();
		try {
			 cartBeanObj = mapper.readValue(cartBean, CartBean.class);
		} catch (JsonProcessingException e) {
			System.out.println("Exception occured while converting json to object");
			e.printStackTrace();
		}
		System.out.println(cartBeanObj);
		view.addObject("cartbean",cartBeanObj);
		view.setViewName("viewCart");
		return view;		
		
		
	}

	/*
	 * @RequestMapping(value = "/viewCart", method = RequestMethod.GET) public
	 * ModelAndView finalPage(@RequestParam("name")String str) {
	 * System.out.print("insidee new" +str); ModelAndView mv=new ModelAndView();
	 * mv.setViewName("viewCart"); return mv; }
	 */

}
