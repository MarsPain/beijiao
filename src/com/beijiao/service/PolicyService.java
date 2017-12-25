/**
 * 
 */
package com.beijiao.service;

import java.util.List;
import java.util.Map;

import com.beijiao.model.Policy;

/**
 * @author cmy lh
 *time 11:15:37
 */
public interface PolicyService {


	/*
	 * search
	 */
	
	public Policy selectPolicy(int policyId);
	public List<Policy> selectListPolicy();
	public List<Policy> selectAllPolicy(Map map);
	public List<Policy> selectPolicyType(String type);
	public List<Policy> selectPolicyType1(String type,Integer startPos,Integer pageSize);
	public int getRecordCountPlocyDrade(String type);
	public List<Policy> selectPolicyArea(String area);
	public List<Policy> searchPolicy(String search,Integer startPos,Integer pageSize);
	public int getRecordCountSearch(String search);
	public List<Policy> searchIndustryPlocy(String  pClassName,Integer startPos,Integer pageSize);
	public int getRecordCountIndustryPlocy(String pClassName);
	public int getRecordCount();
	public List<Policy> getLatestPolicy(String polTime,String pClassName);
	/*
	 * addPolicy
	 */
	public int addPolicy(Policy policy);
	/*
	 * deletePolicy
	 */
	public int deletePolicy(int policyId);
	/*
	 * changePolicy
	 */
	public int changePolicy(String policyContent);
	/*
	 * webapp
	 */
	public List<Policy> selectAllPolicy_app();
	public List<Policy> selectPolicyType_app(String type);
	public List<Policy> selectPolicyArea_app(String area);
	public List<Policy> searchIndustryPlocy_app(String pClassName);
	public List<Policy> searchPolicy_app(String search);
	public List<Policy> selectPolicySource_app(String source);
}
