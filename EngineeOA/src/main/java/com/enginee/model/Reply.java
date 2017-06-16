package com.enginee.model;

import java.time.LocalDateTime;
import java.time.ZoneId;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;


/**
 * 任务回复表
 * @author wangbin
 *
 */
@Entity
public class Reply{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	//回复内容
	private String replyContent;
	//文件名字
	private String fileName;
	//回复文件位置
	private String filePath;
	//回复时间
	private LocalDateTime replyTime = LocalDateTime.now(ZoneId.of("Asia/Shanghai"));
	@OneToOne
	@JoinColumn(unique=true)
	private	User user;
	@ManyToOne
	private Task task;
	
	public Integer getId(){
		return id;
	}
	public void setId(Integer id){
		this.id = id;
	}
	public String getReplyContent(){
		return replyContent;
	}
	public void setReplyContent(String replyContent){
		this.replyContent = replyContent;
	}
	public String getFileName(){
		return fileName;
	}
	public void setFileName(String fileName){
		this.fileName = fileName;
	}
	public String getFilePath(){
		return filePath;
	}
	public void setFilePath(String filePath){
		this.filePath = filePath;
	}
	public User getUser(){
		return user;
	}
	public void setUser(User user){
		this.user = user;
	}
	public LocalDateTime getReplyTime(){
		return replyTime;
	}
	public void setReplyTime(LocalDateTime replyTime){
		this.replyTime = replyTime;
	}
	public User getTask(){
		return user;
	}
	public void setTask(Task task){
		this.task = task;
	}
}
