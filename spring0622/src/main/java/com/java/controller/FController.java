package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.BoardDto;
import com.java.service.BService;
import com.java.service.BServiceImpl;
import com.java.service.BServiceImpl2;

@Controller
public class FController {
	
	//객체선언
	//BService bService = new BServiceImpl();
	@Autowired
	BService bService;
	
	
	@GetMapping("/index") // url이 들어오는
	public String index() {	
		System.out.println("s(15): "+bService.add());		
		return "index";		
	}
	
}
