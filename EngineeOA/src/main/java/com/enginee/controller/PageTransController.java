package com.enginee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 用于页面间的跳转
 * @author wangbin
 *
 */
@Controller
public final class PageTransController{
	@RequestMapping("/toIndexPage")
	public String toHeadPage() {
		return "head";
	}
	@RequestMapping("/content/{page}")
	public String toTargetPage(@PathVariable String page) {
		return page;
	}
	@RequestMapping("/user/{page}")
	public String toTargetPage1(@PathVariable String page) {
		return page;
	}
	@RequestMapping("/exam/exam-add")
	public String toTargetPage2(){
		return "exam-add";
	}
	@RequestMapping("/exam/exam-modify")
	public String toTargetPage6(){
		return "exam-modify";
	}
	@RequestMapping("/task/task-add")
	public String toTargetPage3() {
		return "task-add";
	}
	@RequestMapping("/task/task-file-add")
	public String toTargetPage5() {
		return "task-file-add";
	}
	
	@RequestMapping("/user-task/{page}")
	public String toTargetPage4(@PathVariable String page) {
		return page;
	}
}
