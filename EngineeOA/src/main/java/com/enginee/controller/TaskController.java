package com.enginee.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.enginee.model.Task;
import com.enginee.model.User;
import com.enginee.service.TaskService;
import com.enginee.service.UserService;
import com.enginee.util.TransResult;

/**
 * 用于任务发布
 * @author 李若楠
 *
 */
@Controller
@RequestMapping("/task")
public class TaskController {
	@Autowired
	private TaskService taskService;
	
	@Autowired
	private UserService userService;
	
	//添加回复型任务
	@RequestMapping("/addReplyTask")
	@ResponseBody
	public TransResult addReplyTask(Task task){
		return taskService.addReplyTask(task);
	}
	
	//按title查找回复型任务
	@RequestMapping("/findTaskByTitle")
	@ResponseBody
	public TransResult findTaskByTitle(String title){
		return taskService.findTaskByTitle(title);
	}
	
	//添加文件型任务
	@RequestMapping("/addFileTask")
	public String addFileTask(Task task,@RequestParam("file") MultipartFile file) throws IllegalStateException, IOException{
		taskService.addFileTask(task,file);
		return "task-table";
	}
	
	//获得任务列表
	@RequestMapping("/listTask")
	public String listTask(Model model){
		List<Task> list = taskService.listTask();
		model.addAttribute("tasklist",list);
		return "task-table";
	}
	
	//删除任务
	@RequestMapping("/removeTask/{id}")
	public String removeTask(@PathVariable Integer id){
		taskService.removeTask(id);
		return "redirect:/task/listTask";
	}
	
	//查看任务
	@RequestMapping("/executeTask/{id}")
	public String executeTask(@PathVariable Integer id,Model model){
		List<User> userlist = userService.listUserByAuther();
		Task task = taskService.findById(id);
		model.addAttribute("ulist",userlist);
		model.addAttribute("task", task);
		return "task-execute";
	}
}