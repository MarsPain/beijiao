package com.beijiao.dao;

import java.util.List;

import com.beijiao.model.File;
import com.beijiao.model.Policy;


public interface FileDao {
	public List<File> getAllFile();
	public int upFile(File file);
	public List<File> getLimitFile();
}
