/**
 * 
 */
package com.beijiao.dao;

import java.util.List;

import com.beijiao.model.Product;

/**
 * @author cmy
 *����11:11:38
 */
public interface ProductMapper {

	/*
	 * ��ѯ��Ʒ
	 */
	public Product selectProduct(int productId);
	public List<Product> selectListProduct();
	
	/*
	 * ����ƹ��Ʒ
	 */
	public int addProduct(Product product);
	/*
	 * ɾ���ƹ��Ʒ
	 */
	public int deleteProduct(int productId);
	/*
	 * �޸��ƹ��Ʒ
	 */
	public int changeProduct();
}
