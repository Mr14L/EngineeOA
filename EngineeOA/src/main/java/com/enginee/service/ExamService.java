package com.enginee.service;

import com.enginee.model.Exam;

public interface ExamService {

	String save(Exam exam);

	void update(Exam exam);

	void listExam();

	Exam findExam(Integer id);

	void deleteExam(Integer id);

	void findByExamName(String examName);

	String addExamUser(Integer id, Integer examId);
	
	
	
	
}
