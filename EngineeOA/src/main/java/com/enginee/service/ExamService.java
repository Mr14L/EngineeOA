package com.enginee.service;


import java.util.List;

import com.enginee.model.Exam;
import com.enginee.util.PageModel;
import com.enginee.util.TransResult;

public interface ExamService {

	TransResult save(Exam exam);

	TransResult update(Exam exam);

	List<Exam> listExam();

	Exam findExam(Integer id);

	List<Exam> deleteExam(Integer id, Integer pageNow);

	List<Exam> findByExamName(String examName);

	TransResult addExamUser(String id, Integer examId);

	List<Exam> listExamByPage(Integer pageNow);

	PageModel getPage();

	
	
	
}
