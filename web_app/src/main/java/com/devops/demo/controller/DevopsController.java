package com.devops.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.devops.demo.EC2Decribe;



@RestController
public class DevopsController {
	@GetMapping("/")
	public String index() {
		
		EC2Decribe decribe= null;
		String output="";
		try {
			decribe  =new EC2Decribe();
			output=decribe.fetchCurrentInstanceDetails();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "Hello, This is the"+" "+output;
	}

}
