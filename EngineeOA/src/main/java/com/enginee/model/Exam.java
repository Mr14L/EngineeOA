package com.enginee.model;

import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

import org.springframework.format.annotation.DateTimeFormat;
@Entity
public class Exam{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	//考试名称
	private String examName;
	//科目名称
	private String subjectName;
	@DateTimeFormat(pattern="yyyy-MM-dd'T'HH:mm")
	private LocalDateTime startTime;
	@DateTimeFormat(pattern="yyyy-MM-dd'T'HH:mm")
	private LocalDateTime endTime;
	//考试地点
	private String place;
	//所需人数
	private Integer count;
	//对应监考人员
	@ManyToMany
	private Set<User> users = new HashSet<>();
	//实际人数
	private Integer incount = users.size();
	public Integer getId(){
		return id;
	}
	public void setId(Integer id){
		this.id = id;
	}
	public String getExamName(){
		return examName;
	}
	public void setExamName(String examName){
		this.examName = examName;
	}
	public String getSubjectName(){
		return subjectName;
	}
	public void setSubjectName(String subjectName){
		this.subjectName = subjectName;
	}
	
	public String getPlace(){
		return place;
	}
	public void setPlace(String place){
		this.place = place;
	}
	public Integer getCount(){
		return count;
	}
	public void setCount(Integer count){
		this.count = count;
	}
	public Set<User> getUsers(){
		return users;
	}
	public void setUsers(Set<User> users){
		this.users = users;
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
	public Integer getIncount() {
		return incount;
	}
	public void setIncount(Integer incount) {
		this.incount = incount;
	}
}
