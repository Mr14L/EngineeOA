package com.enginee.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.enginee.model.MyAuthority;
import com.enginee.model.MyAuthority.MyAuthorityType;
import com.enginee.model.Reply;
import com.enginee.model.Task;
import com.enginee.model.User;
import com.enginee.service.ReplyService;
import com.enginee.service.TaskService;
import com.enginee.service.UserService;
import com.enginee.util.TransResult;


@Controller
@RequestMapping("/user-task")
@MyAuthority(value= {MyAuthorityType.USER,MyAuthorityType.ADMIN,MyAuthorityType.SUPERADMIN})
public class ReplyController {
	@Autowired
	private ReplyService replyService;
	@Autowired
	private TaskService taskService;
	@Autowired
	private UserService userService;
	
	@RequestMapping("/toTaskUserTable")
	public String toTaskUserTable(Model model){
		List<Task> list = replyService.listTask();
		model.addAttribute("tlist",list);
		return "task-user-table";
	}
	
	@RequestMapping("/taskUserReply/{id}")
	public String taskUserReply(@PathVariable Integer id,Model model){
		Task task = taskService.findById(id);
		model.addAttribute("task",task);
		return "task-user-reply";
	}
	@RequestMapping("/reply")
	@ResponseBody
	public TransResult reply(Reply reply,Integer tid){
		reply.setTask(taskService.findById(tid));
		return replyService.replyReply(reply);
	}
	@RequestMapping("/findReply/email")
	public String find(String email,Model model){
		System.out.println(email);
		Reply reply = replyService.findByEmail(email);
		model.addAttribute("reply",reply);
		User entity = userService.getEntity(email);
		model.addAttribute("ru",entity);
		return "task-reply";
	}
	
}
