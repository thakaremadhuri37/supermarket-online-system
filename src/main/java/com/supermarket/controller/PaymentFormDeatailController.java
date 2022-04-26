package com.supermarket.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.supermarket.bean.PaymentFormBean;
//not used=========
@Controller
public class PaymentFormDeatailController {
	@RequestMapping(value = "/paymentdata",method = RequestMethod.POST)
	public ModelAndView paymentFormData(@ModelAttribute PaymentFormBean paymentFormBean ) {
		ModelAndView mv=new ModelAndView();
		return mv;
		
	}

}
