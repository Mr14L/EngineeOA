package com.enginee.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestContextHolder;

import com.enginee.dao.ExamDao;
import com.enginee.dao.UserDao;
import com.enginee.model.Exam;
import com.enginee.model.User;
import com.enginee.service.ExamService;
@Service
public class ExamServiceImpl implements ExamService{
	
	@Autowired
	private ExamDao examDao;
	@Autowired
	private UserDao userDao;
	@Override
	@Transactional
	public String save(Exam exam) {
		// TODO Auto-generated method stub
		Exam exam2 = examDao.find(exam.getPlace());
		String result = null;
		if(exam2!= null){
			if(exam2.getStartTime().isAfter(exam.getEndTime())||exam2.getEndTime().isBefore(exam.getStartTime())){
				examDao.merge(exam);
				result = "添加成功";
			}else{
				result = "此时间段教室已被占用，请重新填写！";
			}
		}
		return result;
		
	}

	@Override
	@Transactional
	public void update(Exam exam) {
		// TODO Auto-generated method stub
		examDao.merge(exam);		
	}

	@Override
	@Transactional
	public void listExam() {
		// TODO Auto-generated method stub
		List<Exam> list = examDao.find();
		HttpSession httpSession = (HttpSession)RequestContextHolder.getRequestAttributes().getSessionMutex();
		httpSession.setAttribute("list",list);
		
	}

	@Override
	@Transactional
	public Exam findExam(Integer id) {
		// TODO Auto-generated method stub
		return examDao.find(id);
	}

	@Override
	@Transactional
	public void deleteExam(Integer id) {
		// TODO Auto-generated method stub
		Exam exam = examDao.find(id);
		examDao.remove(exam);
		this.listExam();
		
	}

	@Override
    @Transactional
	public void findByExamName(String examName) {
		// TODO Auto-generated method stub
		Exam exam = examDao.find(examName);
		HttpSession httpSession = (HttpSession)RequestContextHolder.getRequestAttributes().getSessionMutex();
		List<Exam> list = new ArrayList<Exam>();
		list.add(exam);
		httpSession.setAttribute("list",list);
		
	}

	@Override
	@Transactional
	public String addExamUser(Integer id,Integer examId) {
		// TODO Auto-generated method stub
		String result = null;
		User user = userDao.find(id);
		Exam exam = examDao.find(examId);
		if(user.getExams().contains(exam)){
			result = "不能重复监考同一场考试，请重新操作";
		}else{
			exam.getUsers().add(user);
			user.getExams().add(exam);
			examDao.merge(exam);
			userDao.merge(user);
			result = "添加成功";
		}
		
		return result;
	}
	

}
