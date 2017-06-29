package com.enginee.timer;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.enginee.model.Exam;
import com.enginee.model.User;
import com.enginee.service.ExamService;

@Component
public class ExamTimer{
	@Autowired
	private ExamService examService;
	@Scheduled(cron="0 0 6 * * *")
	public void examTimer() {
		List<Exam> all = examService.getAll();
		List<Set<User>> collect = all.stream().filter((x)->{
			if(x.getEndTime().compareTo(LocalDateTime.now())>0)return true;
			return false;
		}).map(Exam::getUsers)
		.collect(Collectors.toList());
		for(Set<User> ss : collect) {
			for(User u:ss) {
				System.out.println("已经向"+u.getName()+"已发送短信");
			}
		}
	}
}
