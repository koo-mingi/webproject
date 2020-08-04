package com.spring.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.spring.domain.AttachFileVO;

import lombok.extern.slf4j.Slf4j;
import net.coobird.thumbnailator.Thumbnailator;

@Slf4j
@Controller
public class FileManageController {

	 @PostMapping(value="/uploadSummernoteImageFile", produces = MediaType.APPLICATION_JSON_VALUE)    
	 public ResponseEntity<AttachFileVO> uploadSummernoteImageFile(@RequestParam("file") MultipartFile f) {

		 String uploadFolder = "C:\\summernote_image\\";
		 String uploadFileName = "";

		 String uploadFolderPath = getFolder();
		 File uploadPath = new File(uploadFolder,uploadFolderPath);

		 if(!uploadPath.exists()) {
			 uploadPath.mkdirs(); //년/월/일 값으로 폴더 생성
		 }

		 AttachFileVO attach = new AttachFileVO();
		 //List<AttachFileVO> attachList = new ArrayList<AttachFileVO>();

		 log.info("--------------------------");
		 log.info("upload File Name : "+f.getOriginalFilename());
		 log.info("upload File Size : "+f.getSize());

		 //파일의 중복을 제거하기 위해 고유값 설정
		 UUID uuid = UUID.randomUUID();			
		 uploadFileName = uuid.toString()+"_"+f.getOriginalFilename();


	     attach.setFileName(f.getOriginalFilename());
		 attach.setUploadPath(uploadFolderPath);
		 attach.setUuid(uuid.toString());

	     log.info("attach"+attach);

		 try {
			 Path saveFile = Paths.get(uploadPath.getPath(), uploadFileName);
			 f.transferTo(saveFile);
		 }catch (Exception e) {
		     System.out.println(e.getMessage());
		 }
		 return new ResponseEntity<AttachFileVO>(attach,HttpStatus.OK);
	 }

	 //날짜별 폴더 생성
	 private String getFolder() {
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		 Date date = new Date();
		 String str = sdf.format(date);
		 return str.replace("-", File.separator);
	 }
}