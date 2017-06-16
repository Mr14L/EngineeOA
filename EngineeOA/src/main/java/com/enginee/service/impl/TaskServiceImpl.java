package com.enginee.service.impl;


import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.multipart.MultipartFile;

import com.enginee.dao.ReplyDao;
import com.enginee.dao.TaskDao;
import com.enginee.model.Task;
import com.enginee.model.TaskType;
import com.enginee.model.User;
import com.enginee.service.TaskService;
import com.enginee.util.TaskCount;
import com.enginee.util.TransResult;
@Service
public class TaskServiceImpl implements TaskService {
	@Autowired
	private TaskDao taskDao;
	@Autowired
	private ReplyDao replyDao;
	
	@Value("${FILE_TASK}")
	private String FILE_TASK;

	@Override
	@Transactional
	public TransResult addReplyTask(Task task) {
		// TODO Auto-generated method stub
		HttpSession httpSession = (HttpSession)RequestContextHolder.currentRequestAttributes().getSessionMutex();
		User u = (User)httpSession.getAttribute("user");
		task.setTaskType(TaskType.回复性任务);
		task.setUser(u);
		taskDao.merge(task);
		return TransResult.ok();
	}

	@Override
	@Transactional
	public TransResult findTaskByTitle(String title) {
		// TODO Auto-generated method stub
		String sql = "From Task t where t.title = ?";
		@SuppressWarnings("rawtypes")
		Query query = taskDao.getCurrentSession().createQuery(sql);
		query.setParameter(0, title);
		if(query.getResultList().isEmpty()){
			return TransResult.ok();
		}else{
			 return TransResult.build(503, "标题不可重复");
		}
	}

	@Override
	@Transactional
	public void addFileTask(Task task,MultipartFile file) throws IllegalStateException, IOException{
		// TODO Auto-generated method stub
		HttpSession httpSession = (HttpSession)RequestContextHolder.currentRequestAttributes().getSessionMutex();
		if(file!=null){
			String path=httpSession.getServletContext().getRealPath(FILE_TASK);
			String str = file.getOriginalFilename();
			String suffix = str.substring(str.indexOf("."));
			File file2 = new File(path+"/"+new Random().nextInt(100000)+suffix);
			file.transferTo(file2);
			String url = "/"+FILE_TASK+file2.getName();
			task.setFileName(file2.getName());
			task.setFilePath(url); 
		}
		User u = (User)httpSession.getAttribute("user");
		task.setTaskType(TaskType.文件型任务);
		task.setUser(u);
		taskDao.merge(task);
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	@Transactional
	public List<Task> listTask() {
		// TODO Auto-generated method stub
		HttpSession httpSession = (HttpSession)RequestContextHolder.currentRequestAttributes().getSessionMutex();
		User u = (User)httpSession.getAttribute("user");
		String sql = "from Task t where t.user.email=?";
		Query query = taskDao.getCurrentSession().createQuery(sql);
		query.setParameter(0, u.getEmail());
		TaskCount taskCount = this.getTaskCount();
		httpSession.setAttribute("taskCount", taskCount);
		return query.getResultList();
	}
	
	@SuppressWarnings("rawtypes")
	@Transactional
	public TaskCount getTaskCount(){
		TaskCount taskCount = new TaskCount();
		HttpSession httpSession = (HttpSession)RequestContextHolder.currentRequestAttributes().getSessionMutex();
		User u = (User)httpSession.getAttribute("user");
		//获得任务总数
		String sql1 = "select count(*) from Task t where t.user.email=?";
		Query query1 = taskDao.getCurrentSession().createQuery(sql1);
		query1.setParameter(0, u.getEmail());
		taskCount.setTotalCount((Long)query1.getResultList().get(0));
		//获得正在进行的任务数
		String sql2 = "select count(*) from Task t where t.endTime > ?";
		Query query2 = taskDao.getCurrentSession().createQuery(sql2);
		query2.setParameter(0, LocalDateTime.now());
		taskCount.setNowCount((Long)query2.getResultList().get(0));
		//获得过期任务
		String sql3 = "select count(*) from Task t where t.endTime < ?";
		Query query3 = taskDao.getCurrentSession().createQuery(sql3);
		query3.setParameter(0, LocalDateTime.now());
		taskCount.setPastCount((Long)query3.getResultList().get(0));
		//获得完成任务数
		String sql4 = "select count(*) from Reply r where r.task.id is not null and r.user.email = ?";
		Query query4 = replyDao.getCurrentSession().createQuery(sql4);
		query4.setParameter(0, u.getEmail());
		taskCount.setFinishCount((Long)query4.getResultList().get(0));
		return taskCount;
	}

	@Override
	@Transactional
	public void removeTask(Integer id) {
		// TODO Auto-generated method stub
		Task task = taskDao.find(id);
		taskDao.remove(task);
	}

	@Override
	@Transactional
	public Task findById(Integer id) {
		// TODO Auto-generated method stub
		return taskDao.find(id);
	}
	
}
