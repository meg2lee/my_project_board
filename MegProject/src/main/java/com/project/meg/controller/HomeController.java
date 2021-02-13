package com.project.meg.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.project.meg.mapper.AttachMapper;
import com.project.meg.mapper.BoardMapper;
import com.project.meg.mapper.CommentMapper;
import com.project.meg.mapper.HomeMapper;
import com.project.meg.vo.AttachVO;
import com.project.meg.vo.BoardVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Meg") // default url주소
public class HomeController {

	@Autowired
	private ResourceLoader resourceLoader;
	
    @Autowired
    private HomeMapper homeMapper;
    
    @Autowired
    private BoardMapper boardMapper;
    
    /*메인페이지*/
    @GetMapping("home")
    public String mainPage() { 
    	return "main/main_page";
    }
    
    /*로그인 페이지*/
    @GetMapping("login")
    public String loginPage(Model model) {    	
    	return "Login_page";
    }
    
    /*갤러리 페이지*/
    @GetMapping("gallery")
    public String galleryPage(Model model
    		,@RequestParam(name="order", defaultValue="recent") String order) {    	
//    	model.addAttribute("images",galleryMapper.getImageList(order));
    	return "gallery/gallery_page";
    }
   
}