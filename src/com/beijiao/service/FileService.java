package com.beijiao.service;

import java.util.List;


import java.util.Map;

import com.beijiao.model.File;

public interface FileService {
	public List<File> getAllFile(Map map);
	public File getFile(int fileId);
	public int upFile(File file);
	public List<File> getLimitFile();
	public int getRecordCount();
	
	/*
	 * WebApp
	 */
	public List<File> getAllFile_app();
}
