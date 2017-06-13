package com.enginee.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.enginee.model.Exam;
import com.enginee.service.ExamService;
import com.enginee.service.UserService;

/**
 * 用于监考相关操作
 * @author 李若楠
 *
 */
@Controller
@RequestMapping("/exam")
public class ExamController {
	@Autowired
	private ExamService examService;
	@Autowired
	private UserService userService;
	/*
	 * 添加考试信息
	 */
	@RequestMapping("/addExam")
	@ResponseBody
	public String addExam(Exam exam){
		return examService.save(exam);
	}
	
	/*
	 * 修改考试信息
	 */
	@RequestMapping("/updateExam")
	@ResponseBody
	public void updateExam(Exam exam){
		examService.update(exam);
	}
	
	/*
	 * 获得exam列表
	 */
	@RequestMapping("/listExam")
	public String listExam(){
		examService.listExam();
		return "exam-table";
	}
	
	/*
	 * 通过examName搜索exam
	 */
	@RequestMapping("/findByExamName")
	public String findByExamName(String examName){
		examService.findByExamName(examName);
		return "exam-table";
	}
	/*
	 * 分配人员
	 */
	@RequestMapping("/apportUser/{id}")
	public String apportUser(Model model,@PathVariable Integer id){
		model.addAttribute("examId",id);
		userService.listUser();
		return "exam-user-apport";
	}
	
	/*
	 * 删除考试信息
	 */
	@RequestMapping("/deleteExam/{id}")
	public String deleteExam(@PathVariable Integer id){
		examService.deleteExam(id);
		return "exam-table";
	}
	/*
	 * 跳转修改页面
	 */
	@RequestMapping("/modifyExam/{id}")
	public String modifyExam(Model model,@PathVariable Integer id){
		Exam exam = examService.findExam(id);
		model.addAttribute("exam",exam);
		return "exam-modify";
	}
	/*
	 * 添加监考人员
	 */
	@RequestMapping("/examApportAdd")
	public void apportAdd(Integer id,Integer examId){
		examService.addExamUser(id,examId);
	}
}

