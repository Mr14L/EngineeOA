package com.enginee.util;

import org.springframework.util.DigestUtils;

public class AddAdmin{
	public static void main(String[] args){
		String str  = "1453926032@qq.com";
		String md5DigestAsHex = DigestUtils.md5DigestAsHex(str.getBytes());
		System.out.println(md5DigestAsHex);
	}
}
