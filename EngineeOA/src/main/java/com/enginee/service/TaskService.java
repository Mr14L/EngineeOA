package com.enginee.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.enginee.model.Task;
import com.enginee.util.TransResult;

public interface TaskService {

	TransResult addReplyTask(Task task);

	TransResult findTaskByTitle(String title);
	
	void addFileTask(Task task,MultipartFile file) throws IllegalStateException, IOException;

	List<Task> listTask();

	void removeTask(Integer id);

	Task findById(Integer id);

}
