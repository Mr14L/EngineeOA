package com.enginee.service.impl;


import java.util.List;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestContextHolder;

import com.enginee.dao.ReplyDao;
import com.enginee.dao.TaskDao;
import com.enginee.model.Reply;
import com.enginee.model.Task;
import com.enginee.model.User;
import com.enginee.service.ReplyService;
import com.enginee.util.TransResult;
@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired
	private ReplyDao replyDao;
	
	@Autowired
	private TaskDao taskDao; 
	
	@Override
	@Transactional
	public List<Task> listTask() {
		// TODO Auto-generated method stub
		List<Task> list = taskDao.find();
		List<Reply> rlist = replyDao.find();
		HttpSession httpSession = (HttpSession)RequestContextHolder.getRequestAttributes().getSessionMutex();
		User user = (User)httpSession.getAttribute("user");
		for(int i=0;i<list.size();i++){
			if(rlist!=null){
				for(int j=0;j<rlist.size();j++){
					if(user.getEmail().equals(rlist.get(j).getUser().getEmail()) && list.get(i).getId().equals(rlist.get(j).getTask().getId())){
						list.remove(i);
					}
				}
			}
		}
		return list;
	}

	@Override
	@Transactional
	public TransResult replyReply(Reply reply) {
		// TODO Auto-generated method stub
		User user = (User)((HttpSession)RequestContextHolder.currentRequestAttributes().getSessionMutex()).getAttribute("user");
		reply.setUser(user);
		replyDao.merge(reply);
		return TransResult.ok();
	}

	@Override
	@Transactional
	public Reply findByEmail(String email) {
		// TODO Auto-generated method stub
		return replyDao.findByEmail(email);
	}
	

	
}
