package com.git.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.git.domain.ResultVO;

@Controller
public class UploadController {
	
	@RequestMapping(value="/uploadFile",method = RequestMethod.POST)
	public ResultVO uploadFile(@RequestParam("files") MultipartFile multipartFile){
		
		return null;
	}
}
