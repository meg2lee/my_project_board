package com.project.meg.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.meg.vo.AttachVO;

@Mapper
public interface AttachMapper {
	
	boolean attach_insert(AttachVO attach);
	List<AttachVO> fileList(int num);
	
	boolean deleteAttach(String filename, int num);
}
