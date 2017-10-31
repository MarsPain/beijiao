/**
 * 
 */
package com.beijiao.service;

import java.util.List;
import java.util.Map;

import com.beijiao.model.Company;

/**
 * @author cmy
 *����11:15:37
 */

public interface CompanyService {

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
