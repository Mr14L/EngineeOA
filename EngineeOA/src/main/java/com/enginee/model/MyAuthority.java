package com.enginee.model;

import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.ElementType.TYPE;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

@Documented
@Retention(RUNTIME)
@Target({ TYPE, METHOD })
public @interface MyAuthority {
	MyAuthorityType[] value() default MyAuthorityType.USER;
	
	public enum MyAuthorityType {
		USER,ADMIN, SUPERADMIN;
	}
}
