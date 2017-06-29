package com.enginee.interceptor;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.enginee.model.Author;
import com.enginee.model.LogModel;
import com.enginee.model.MyAuthority;
import com.enginee.model.MyAuthority.MyAuthorityType;
import com.enginee.service.LogService;
import com.enginee.model.User;


@Component
@Aspect
public class MyAspect {
	
	@Autowired
	private LogService logService;
	
	@Around(value = "@within(myAuthority) || @annotation(myAuthority)")  
	public Object interecptorTarget(ProceedingJoinPoint joinpoint, MyAuthority myAuthority) throws Throwable {
		// 如果是类型注释
		if (myAuthority == null) {
			myAuthority =  joinpoint.getTarget().getClass().getAnnotation(MyAuthority.class);
		}
		HttpSession httpSession = (HttpSession)RequestContextHolder.getRequestAttributes().getSessionMutex();
		User user = (User) httpSession.getAttribute("user");
		if(user ==null) return joinpoint.proceed();
		List<MyAuthorityType> list = Arrays.asList(myAuthority.value());
		Author author = user.getAuthor();
		boolean b = false;
		for(MyAuthorityType m:list) {
			if(m.name().equals(author.name())) {
				b =true;
				break;
			}
		}
		if(b)
		return joinpoint.proceed();
		return false;
	}
	
	@Around("execution(* com.enginee.controller..*.*(..))")
	public Object interecptorLog(ProceedingJoinPoint joinpoint) throws Throwable {
		RequestAttributes requestAttributes = RequestContextHolder.currentRequestAttributes();
		HttpServletRequest request = ((ServletRequestAttributes)requestAttributes).getRequest();
		
		User u = (User)request.getSession().getAttribute("user");
		if(u!=null) {
			LogModel lm = new LogModel();
			lm.setDateTime(LocalDateTime.now());
			lm.setName(u.getName());
			lm.setFix("client denied by server:");
			lm.setState("success");
			String str = request.getServletPath();
			lm.setPath(str);
			logService.add(lm);
		}
		return joinpoint.proceed();
	}
}
