package com.project.meg.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.project.meg.mapper.BoardMapper;
import com.project.meg.mapper.CommentMapper;
import com.project.meg.vo.CommentVO;

/* @ResponseBody를 붙이지 않아도 뷰가 아닌 데이터 return*/
@RestController
@RequestMapping("comments")
public class CommentController {
	
	@Autowired
	private ResourceLoader resourceLoader;
	
    @Autowired // interface형 클래스 객체 자동생성
    private CommentMapper commentMapper;
    
    @Autowired // interface형 클래스 객체 자동생성
    private BoardMapper boardMapper;
	
	@RequestMapping("add")
	public boolean addComment(HttpServletRequest request
			,@RequestParam("num") int bno, Model model){
		ServletContext context = request.getServletContext();

		CommentVO vo = new CommentVO();	
		vo.setBno(bno);
//		vo.setWriter(request.getParameter("writer"));
		vo.setText(request.getParameter("text"));				
		commentMapper.addComment(vo);
		
		model.addAttribute("commentList",commentMapper.getCommentList(bno));
		
		return true;
	
	}
	
	@DeleteMapping("delete")
	@ResponseBody
	public String deleteComment(@RequestParam("cno") int cno) {
		commentMapper.deleteComment(cno);
		return commentMapper.deleteComment(cno) +"";
	}
	

}
