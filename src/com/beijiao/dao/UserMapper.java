/**
 * 
 */
package com.beijiao.dao;



import java.util.List;
import java.util.Map;

import com.beijiao.model.User;

/**
 * @author cmy
 *ï¿½ï¿½ï¿½ï¿½2:52:29
 */
public interface UserMapper {
	
	/**
	 * ï¿½ï¿½ï¿½ï¿½Ç·ï¿½ï¿½ï¿½Ú´ï¿½ï¿½Ã»ï¿½
	 */
	public User checkUser(Map map);
	/*
	 * ï¿½Ã»ï¿½×¢ï¿½ï¿½
	 */
	public int userResigster(User user);
	/*
	 * ï¿½ï¿½ï¿½ï¿½ï¿½Þ¸ï¿½
	 */
   public String selectPawd(int userId);
   public int changepswd(int userId,String password,String oldPassword);
   
   //»ñÈ¡ËùÓÐµÄÓÃ»§
   public List<User> getAllUser();

}
