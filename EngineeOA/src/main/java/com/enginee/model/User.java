package com.enginee.model;

import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class User{
	@Id
	private String email;
	private String name;
	private String telephone;
	private String password;
	//职称
	private String academic;
	//权限 用户,管理员,超级管理员
	private Author author;
	//头像文件存放位置
	private String headFile;
	
	private LocalDate createTime = LocalDate.now();
	@ManyToMany(mappedBy="users")
	private Set<Exam> exams = new HashSet<>();
	@OneToMany(mappedBy="user")
	private Set<Task> tasks = new HashSet<>();
	@OneToOne(mappedBy="user")
	private Reply reply;
	public String getName(){
		return name;
	}
	public void setName(String name){
		this.name = name;
	}
	public String getEmail(){
		return email;
	}
	public void setEmail(String email){
		this.email = email;
	}
	public String getTelephone(){
		return telephone;
	}
	public void setTelephone(String telephone){
		this.telephone = telephone;
	}
	public String getPassword(){
		return password;
	}
	public void setPassword(String password){
		this.password = password;
	}
	public String getAcademic(){
		return academic;
	}
	public void setAcademic(String academic){
		this.academic = academic;
	}
	public Author getAuthor(){
		return author;
	}
	public void setAuthor(Author author){
		this.author = author;
	}
	public String getHeadFile(){
		return headFile;
	}
	public void setHeadFile(String headFile){
		this.headFile = headFile;
	}
	public LocalDate getCreateTime(){
		return createTime;
	}
	public Set<Exam> getExams(){
		return exams;
	}
	public void setExams(Set<Exam> exams){
		this.exams = exams;
	}
	public Set<Task> getTasks(){
		return tasks;
	}
	public void setTasks(Set<Task> tasks){
		this.tasks = tasks;
	}
}
