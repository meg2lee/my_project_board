package com.project.meg.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.meg.vo.CommentVO;

@Mapper
public interface CommentMapper {
	
	List<CommentVO> getCommentList(int bno);	
	int addComment(CommentVO vo);
	int getBno(int num);
	boolean deleteComment(int cno);
	

}
