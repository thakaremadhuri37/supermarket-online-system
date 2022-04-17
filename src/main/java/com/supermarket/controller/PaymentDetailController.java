package com.supermarket.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PaymentDetailController {
	

	 @RequestMapping(value = "/paymentdDetail", method = RequestMethod.GET)
		public String savePaymentDetail() {
	    	System.out.print("inside payment detail method");
	    	return  "checkout_page";
	 }
}
