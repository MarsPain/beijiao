/**
 * 
 */
package com.beijiao.dao;

import java.util.Map;

import com.beijiao.model.Admin;

/**
 * @author cmy
 *����11:11:38
 */
public interface AdminMapper {

	
	/*
	 * ����Ա��¼
	 */
	public Admin adminLogin(Map map);
	/*
	 * �޸�����
	 */
	public int changeAdminPswd(String password);
			
	
	
}
