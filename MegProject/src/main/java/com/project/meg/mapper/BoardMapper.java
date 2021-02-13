package com.project.meg.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.project.meg.vo.BoardVO;
import com.github.pagehelper.Page;

@Mapper
public interface BoardMapper {
	
    /*행을 추가하고 자동증가필드의 값을 parameter로 전달된 UserVO의 num변수에 저장*/
    int addAndGetKey(); // ﻿db저장(입력) 및 출력을 동시에 수행하는 userVO
   
    /*메인페이지 리스트&페이징&답글*/
    List<BoardVO> getBoardList();
    Page<BoardVO> BoardPaging();
    BoardVO getBoardPnum();
    
    /*게시글 1부터 차례로 번호매기기*/
    List<BoardVO> getRowNum();

    /*게시글 CRUD*/
    int add(BoardVO b);	  
    boolean updateBoard(BoardVO b);
    boolean deleteBoard(int num);   
    
    /*게시글 상세페이지*/
	BoardVO select(int num);
	
	/*이전/다음게시글*/
	BoardVO getNextBoard(int num);
	BoardVO getPreBoard(int num);
	
	/*게시판 클릭수*/
	int countUpdate(int num);
  
    /*게시글 검색*/
	List<BoardVO> search(String sas, String sen);
	
	/*detail페이지*/
	List<BoardVO> getIndexList(int num);
	
	/*댓글*/
	int replyInsert(BoardVO vo);
	    
//    BoardVO getBoardById(int num);
//    boolean get_index(int num);
//	boolean insertBoard(BoardVO b);

	
}
