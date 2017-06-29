package com.enginee.controller;




import java.io.UnsupportedEncodingException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.enginee.model.Exam;
import com.enginee.model.MyAuthority;
import com.enginee.model.MyAuthority.MyAuthorityType;
import com.enginee.service.ExamService;
import com.enginee.service.UserService;
import com.enginee.util.TransResult;

/**
 * 用于监考相关操作
 * @author 李若楠
 *
 */
@Controller
@RequestMapping("/exam")
@MyAuthority(value= {MyAuthorityType.ADMIN,MyAuthorityType.SUPERADMIN})
public class ExamController {
	@Autowired
	private ExamService examService;
	@Autowired
	private UserService userService;
	
	//添加考试信息
	@RequestMapping("/addExam")
	@ResponseBody
	public TransResult addExam(Exam exam){
		return examService.save(exam);
	}
	
	//修改考试信息
	@RequestMapping("/updateExam")
	@ResponseBody
	public TransResult updateExam(Exam exam){
		return examService.update(exam);
	}
	
	//获得exam列表
	@RequestMapping("/listExam")
	public String listExam(Model model){
		List<Exam> list = examService.listExam();
		model.addAttribute("list",list);
		return "exam-table";
	}
	
	//通过examName搜索exam
	@RequestMapping("/findByExamName")
	public String findByExamName(Model model,String examName) throws UnsupportedEncodingException{
		examName = new String(examName.getBytes("iso-8859-1"),"utf-8");
		List<Exam> list= examService.findByExamName(examName);
		model.addAttribute("list", list);
		return "exam-table";
	}
	//分配人员
	@RequestMapping("/apportUser/{id}")
	public String apportUser(Model model,@PathVariable Integer id){
		model.addAttribute("examId",id);
			userService.listUser();
			return "exam-user-apport";
	}
	
	//删除考试信息
	@RequestMapping("/deleteExam")
	public String deleteExam(Integer id,Integer pageNow,Model model){
		List<Exam> list = examService.deleteExam(id,pageNow);
		model.addAttribute("list", list);
		return "exam-table";
	}
	//跳转修改页面
	@RequestMapping("/modifyExam/{id}")
	public String modifyExam(Model model,@PathVariable Integer id){
		Exam exam = examService.findExam(id);
		model.addAttribute("exam",exam);
		return "exam-modify";
	}
	//添加监考人员
	@RequestMapping("/examApportAdd")
	@ResponseBody
	public TransResult apportAdd(String id,Integer examId,Model model){
		return examService.addExamUser(id,examId);
	}
	//分页显示exam列表
	@RequestMapping("/toPage/{pageNow}")
	public String toPage(@PathVariable Integer pageNow,Model model){
		List<Exam> list = examService.listExamByPage(pageNow);
		model.addAttribute("list", list);
		return "exam-table";
	}
}

