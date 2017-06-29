package com.enginee.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.enginee.dao.LogDao;
import com.enginee.model.LogModel;
import com.enginee.service.LogService;
@Service
public class LogServiceImpl implements LogService{
	@Autowired
	private LogDao logDao;

	@Override
	@Transactional
	public List<LogModel> getLog(){
		List<LogModel> find = this.logDao.find();
		return find;
	}

	@Override
	@Transactional
	public void add(LogModel logModel){
		logDao.merge(logModel);
	}               
}
