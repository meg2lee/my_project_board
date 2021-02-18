package com.project.meg.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.meg.mapper.MemberMapper;
import com.project.meg.vo.MemberVO;

@Controller
@RequestMapping("Meg") 
public class MemberController {
	
	@Autowired
	private ResourceLoader resourceLoader;
	
    @Autowired // interface형 클래스 객체 자동생성
    private MemberMapper memberMapper;
    
    @GetMapping("register")
	public String register(){				
		return "member/register_form";
	
	}
	
	@RequestMapping("join")
	@ResponseBody
	public String addUser(Model model
			, MemberVO memberVO){
		
		return memberMapper.addUser(memberVO)+"";
	}
	
	

}
