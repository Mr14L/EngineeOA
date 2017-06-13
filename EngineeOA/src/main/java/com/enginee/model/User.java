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
	private String qq;
	private String intro;
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
	//同时监考场次
	private Integer ecount = exams.size();
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
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	@Override
	public String toString() {
		return "User [email=" + email + ", name=" + name + ", telephone=" + telephone + ", password=" + password
				+ ", qq=" + qq + ", intro=" + intro + ", academic=" + academic + ", author=" + author + ", headFile="
				+ headFile + ", createTime=" + createTime + ", exams=" + exams + ", tasks=" + tasks + ", reply=" + reply
				+ "]";
	}
	public Integer getEcount() {
		return ecount;
	}
	public void setEcount(Integer ecount) {
		this.ecount = ecount;
	}
	public Reply getReply() {
		return reply;
	}
	public void setReply(Reply reply) {
		this.reply = reply;
	}
	public void setCreateTime(LocalDate createTime) {
		this.createTime = createTime;
	}
}
