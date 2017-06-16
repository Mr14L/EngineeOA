package com.enginee.model;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 任务
 * @author wangbin
 */
@Entity
public class Task{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	private String title;
	private String content;
	@Enumerated(EnumType.STRING)
	private TaskType taskType;
	private String fileName;
	private String filePath;
	@DateTimeFormat(pattern="yyyy-MM-dd'T'HH:mm")
	private LocalDateTime startTime;
	@DateTimeFormat(pattern="yyyy-MM-dd'T'HH:mm")
	private LocalDateTime endTime;
	@ManyToOne
	private User user;
	@OneToMany(mappedBy="task")
	private List<Reply> replys = new ArrayList<>();
	
	public Integer getId(){
		return id;
	}
	public void setId(Integer id){
		this.id = id;
	}
	public String getTitle(){
		return title;
	}
	public void setTitle(String title){
		this.title = title;
	}
	public String getContent(){
		return content;
	}
	public void setContent(String content){
		this.content = content;
	}
	public TaskType getTaskType(){
		return taskType;
	}
	public void setTaskType(TaskType taskType){
		this.taskType = taskType;
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
	public List<Reply> getReplys(){
		return replys;
	}
	public void setReplys(List<Reply> replys){
		this.replys = replys;
	}
	public LocalDateTime getStartTime() {
		return startTime;
	}
	public void setStartTime(LocalDateTime startTime) {
		this.startTime = startTime;
	}
	public LocalDateTime getEndTime() {
		return endTime;
	}
	public void setEndTime(LocalDateTime endTime) {
		this.endTime = endTime;
	}
	@Override
	public String toString() {
		return "Task [id=" + id + ", title=" + title + ", content=" + content + ", taskType=" + taskType + ", fileName="
				+ fileName + ", filePath=" + filePath + ", startTime=" + startTime + ", endTime=" + endTime + ", user="
				+ user + ", replys=" + replys + "]";
	}
}
