/**
 * 
 */
package com.beijiao.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.beijiao.model.Policy;
import com.beijiao.model.Product;
import com.beijiao.service.ProductService;

/**
 * @author cmy
 *����4:57:25
 */
@Controller
@RequestMapping("product")
public class ProductController {

	@Resource
	private ProductService productService;
	
	@RequestMapping("totest")
	private String test(){
		return "test";
	}
	
	/*��ѯ��Ʒ*/
	@RequestMapping("toProduct")
	public String selectProduct(int productId,Model model){
		Product product=productService.selectProduct(productId);
		model.addAttribute("product", product);		
		return "success";
		
	}
	/*��ѯ������Ʒ*/
	@RequestMapping("toListProduct")
	public String selectListProduct(Model model){
		List<Product> product=productService.selectListProduct();
		model.addAttribute("products", product);		
		return "success";
		
	}
	/*��Ӳ�Ʒ*/
	@RequestMapping("addProduct")
	public String addProduct(Product product){
		int n=productService.addProduct(product);			
		if(n!=0){
		   return "forward:toListProduct";
		}else{
		   return "login";
		}
		
	}
	/*ɾ����Ʒ*/
	@RequestMapping("deleteProduct")
	public String deleteProduct(int productId){
		int n=productService.deleteProduct(productId);		
		if(n!=0){
		   return "forward:toListProduct";
		}else{
		   return "login";
		}
		
	}
	/*�޸Ĳ�Ʒ*/
}
