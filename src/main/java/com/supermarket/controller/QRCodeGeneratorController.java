package com.supermarket.controller;

import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.supermarket.service.QRCodeGenerator;

@Controller
public class QRCodeGeneratorController {
	
	@RequestMapping(value = "qrcode/{id}", method = RequestMethod.GET)
	public void qrcode(@PathVariable("id") String id, HttpServletResponse response) throws Exception {
		System.out.println("Inside qrCode "+id);
		response.setContentType("image/png");
		OutputStream outputStream = response.getOutputStream();
		outputStream.write(QRCodeGenerator.getQRCodeImage(id, 200, 200));
		outputStream.flush();
		outputStream.close();
	}
	

}
