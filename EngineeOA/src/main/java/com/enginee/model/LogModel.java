package com.enginee.model;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class LogModel{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	private String state;
	private LocalDateTime dateTime;
	private String name;
	private String fix;
	private String path;
	
	public Integer getId(){
		return id;
	}
	public void setId(Integer id){
		this.id = id;
	}
	public LocalDateTime getDateTime(){
		return dateTime;
	}
	public void setDateTime(LocalDateTime dateTime){
		this.dateTime = dateTime;
	}
	public String getState(){
		return state;
	}
	public void setState(String state){
		this.state = state;
	}
	public String getName(){
		return name;
	}
	public void setName(String name){
		this.name = name;
	}
	public String getFix(){
		return fix;
	}
	public void setFix(String fix){
		this.fix = fix;
	}
	public String getPath(){
		return path;
	}
	public void setPath(String path){
		this.path = path;
	}
}
