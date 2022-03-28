package com.supermarket.controller;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class ProductController {
	
	@RequestMapping(value="/product1" ,method = RequestMethod.GET)
	public ModelAndView show(@RequestParam ("id") String id1) {
		System.out.println("inside prod method id= "+id1);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("prod");
		modelAndView.addObject("id",id1);		
		return modelAndView;
	}

	
}
