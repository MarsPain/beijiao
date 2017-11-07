package com.beijiao.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.beijiao.dao.FileDao;
import com.beijiao.model.File;
import com.beijiao.service.FileService;

@Service("fileService")
public class FileServiceImpl implements FileService {

	@Resource
	private FileDao fileDao;

	@Override
	public List<File> getAllFile() {
		
		return fileDao.getAllFile();
	}

	@Override
	public int upFile(File file) {
		// TODO Auto-generated method stub
		return fileDao.upFile(file);
	}
}