package com.myweb.util.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

//1. filter를 상속받는다.
//2. 필터요청을 등록 (어노테이션 vs web.cml 방법)

//@WebFilter("/*")
public class ChainFilter02 implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		System.out.println("체인필터2 실행됨");
				
		chain.doFilter(request, response);// 다음 필터로 연결 or 컨트롤러로 연결
		
	}

	
	
}
