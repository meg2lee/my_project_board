package com.project.meg.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.meg.vo.CommentVO;
import com.project.meg.vo.MemberVO;

@Mapper
public interface MemberMapper {

	boolean addUser(MemberVO vo);
	String loginUser(MemberVO memberVO);

}
