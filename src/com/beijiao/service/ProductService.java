/**
 * 
 */
package com.beijiao.service;

import java.util.List;

import com.beijiao.model.Product;

/**
 * @author cmy
 *����11:15:37
 */
public interface ProductService {

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
}
