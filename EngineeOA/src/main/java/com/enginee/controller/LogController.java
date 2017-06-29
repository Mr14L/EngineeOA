package com.enginee.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.enginee.model.LogModel;
import com.enginee.model.MyAuthority;
import com.enginee.model.MyAuthority.MyAuthorityType;
import com.enginee.service.LogService;

@Controller
@RequestMapping("/log")
@MyAuthority(value= {MyAuthorityType.SUPERADMIN})
public class LogController {
	@Autowired
	private LogService logService;
	@RequestMapping("/toLogPage")
	public String toLogPage(Model model){
		List<LogModel> list  = logService.getLog();
		model.addAttribute("lms", list);
		return "admin-log";
	}
}
