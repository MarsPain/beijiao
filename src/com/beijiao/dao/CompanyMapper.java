/**
 * 
 */
package com.beijiao.dao;

import java.util.List;
import java.util.Map;

import com.beijiao.model.Company;

/**
 * @author cmy
 *����11:11:38
 */
public interface CompanyMapper {

	
	
	/*
	 * ��ѯ��ҵ
	 */
	public Company selectCompany(int companyId);
	
	public List<Company> selectListComany();
	/*
	 * ��ӷ�����ҵ
	 */
    public int addCompany(Company company);
	
	/*
	 * �޸���ҵ��Ϣ
	 */
	public int changeCompany(Company company);
	/*
	 * ɾ����ҵ��Ϣ
	 */
	public int deleteComapany(int companyId);
}
