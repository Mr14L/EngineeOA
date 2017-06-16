package com.enginee.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestContextHolder;

import com.enginee.dao.ExamDao;
import com.enginee.dao.UserDao;
import com.enginee.model.Exam;
import com.enginee.model.User;
import com.enginee.service.ExamService;
import com.enginee.util.PageModel;
import com.enginee.util.TransResult;
@Service
public class ExamServiceImpl implements ExamService{
	
	@Autowired
	private ExamDao examDao;
	@Autowired
	private UserDao userDao;
	@SuppressWarnings("rawtypes")
	@Override
	@Transactional
	public TransResult save(Exam exam) {
		// TODO Auto-generated method stub
		String sql = "From Exam e where e.place = ?";
		Query query = examDao.getCurrentSession().createQuery(sql);
		query.setParameter(0, exam.getPlace());
		if(query.getResultList().isEmpty()){
			examDao.merge(exam);
			return TransResult.ok();
		}else{
			@SuppressWarnings("unchecked")
			List<Exam> exam2 = query.getResultList();
			boolean b = true;
			for(Exam e:exam2){
				if(e.getStartTime().isAfter(exam.getEndTime())||e.getEndTime().isBefore(exam.getStartTime())){
					b=false;
				}else{
					b=true;
				}
			}
			if(b){
				return TransResult.build(501, "此时间段教室已被占用请重新添加");
			}else{
				examDao.merge(exam);
				return TransResult.ok();
			}
		}
	}

	@Override
	@Transactional
	public TransResult update(Exam exam) {
		// TODO Auto-generated method stub
		examDao.merge(exam);
		return TransResult.ok();
	}

	@Override
	@Transactional
	public List<Exam> listExam() {
		// TODO Auto-generated method stub
		List<Exam> list =  examDao.find(0,5);
		for(Exam e: list){
			e.setIncount(e.getUsers().size());
		}
		PageModel page = this.getPage();
		HttpSession hs = (HttpSession)RequestContextHolder.getRequestAttributes().getSessionMutex();
		hs.setAttribute("page", page);
		return list;
	}

	@Override
	@Transactional
	public Exam findExam(Integer id) {
		// TODO Auto-generated method stub
		return examDao.find(id);
	}

	@Override
	@Transactional
	public List<Exam> deleteExam(Integer id,Integer pageNow) {
		// TODO Auto-generated method stub
		Exam exam = examDao.find(id);
		examDao.remove(exam);
		return this.listExamByPage(pageNow);
	}

	@Override
    @Transactional
	public List<Exam> findByExamName(String examName) {
		// TODO Auto-generated method stub
		String sql = "From Exam e where e.examName like '%"+examName+"%'";
		@SuppressWarnings("rawtypes")
		Query query = examDao.getCurrentSession().createQuery(sql);
		@SuppressWarnings("unchecked")
		List<Exam> list =query.getResultList();
		return list;
	}

	@Override
	@Transactional
	public TransResult addExamUser(String id,Integer examId) {
		// TODO Auto-generated method stub
		User user = userDao.find(id);
		Exam exam = examDao.find(examId);
		if(user.getExams().contains(exam)){
			return TransResult.build(402, "不能重复监考同一场考试，请重新操作");
		}else{
			exam.getUsers().add(user);
			exam.setIncount(exam.getUsers().size());
			user.getExams().add(exam);
			user.setEcount(user.getExams().size());
			examDao.merge(exam);
			userDao.merge(user);
			return TransResult.ok();
		}
		
	}

	@Override
	@Transactional
	public List<Exam> listExamByPage(Integer pageNow) {
		// TODO Auto-generated method stub
		PageModel page = this.getPage();
		List<Exam> list = new ArrayList<Exam>();
		if(pageNow>0){
			if(pageNow>=page.getPageCount()){
				list = examDao.find((page.getPageCount()-1)*5, page.getRowCount()+1);
				page.setPageNow(page.getPageCount());
			}else{
				list = examDao.find((pageNow-1)*5, pageNow*5);
				page.setPageNow(pageNow);
			}
		}else{
			list = this.listExam();
			page.setPageNow(1);
		}
		HttpSession hs = (HttpSession)RequestContextHolder.getRequestAttributes().getSessionMutex();
		hs.setAttribute("page", page);
		return list;
	}
	@Override
	@Transactional
	public PageModel getPage(){
		List<Exam>list2 = examDao.find();
		PageModel page = new PageModel();
		page.setRowCount(list2.size());
		if(page.getRowCount()%page.getPageSize()==0){
			page.setPageCount(page.getRowCount()/page.getPageSize());
		}else{
			page.setPageCount((page.getRowCount()/page.getPageSize())+1);
		}
		page.setPageNow(1);
		return page;
	}
	

}
