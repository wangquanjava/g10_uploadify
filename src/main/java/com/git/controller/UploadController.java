package com.git.controller;

import java.io.File;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.git.domain.ResultVO;

/*
 * 这是文件上传的服务器端
 * 总结：
 *    1.文件上传需要common-fileupload.jar和在springMVC中初始化这个上传插件
 *    2.即使上传多张图片，也是一张图片一个请求，一个返回。
 */
@Controller
public class UploadController {
	@Value("${file.folder}")
	private String uploadFolder;
	
	@RequestMapping(value="/uploadFile",method = RequestMethod.POST)
	public ResponseEntity<ResultVO> uploadFile(@RequestParam("fileFieldName") MultipartFile multipartFile){
		String filename = multipartFile.getOriginalFilename();
		try {
//			保存文件
			multipartFile.transferTo(new File(uploadFolder+filename));
			return ResponseEntity.status(HttpStatus.OK).body(new ResultVO(uploadFolder+filename));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(new ResultVO(uploadFolder+filename));
	}
}
