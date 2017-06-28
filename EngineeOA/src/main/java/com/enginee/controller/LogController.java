package com.enginee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/log")
public class LogController {
	@RequestMapping("/toLogPage")
	public String toLogPage(){
		return "admin-log";
	} 
}
