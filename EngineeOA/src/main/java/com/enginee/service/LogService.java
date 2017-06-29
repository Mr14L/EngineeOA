package com.enginee.service;

import java.util.List;

import com.enginee.model.LogModel;

public interface LogService{
	List<LogModel> getLog();

	void add(LogModel logModel);
}
