package com.bigmobile.service;

import java.util.List;
import java.util.Map;

import com.bigmobile.model.*;

public interface MobileUserService {

	public List<MobileUsers> queryMobileUsers();
	public List<String> queryIndustry();
	public List<String> queryIncome();
	public List<String> queryEducation();
	public String getTotalMobileUsers(String[] industry, String[] income, String[] education);
	
	public List<MobileUsersLabel> queryMobileUsersByLabel();
	public List<String> queryLabelCar();
	public List<String> queryLabelEducation();
	public List<String> queryLabelFinance();
	public List<String> queryLabelRealestate();
	public List<String> queryLabelHealthcare();
	public List<String> queryLabelBrand();
	public String queryTotalMobileUsersByLabel(String queryColumn, String[] labelConditions);

	public List<Map<String,String>> queryUserStatByIndustry();
	public List<Map<String,String>> queryUserStatByIncome();

	public List<Map<String,String>> queryLabelUserStatByAge(String queryColumn, String[] labelConditions);
	public List<Map<String,String>> queryLabelUserStatByIncome(String queryColumn, String[] labelConditions);
	
	public List<UserAccess> queryUserAccess();
	public List<Map<String,String>> queryAccessBySite();
//	public List<MobileUser> queryMobileUsers();
	public List<BankUser> queryBankUsers();
	public List<CarUser> queryCarUsers();
	public List<EnterpriseUser> queryEnterpriseUsers();
	public List<FlightUser> queryFlightUsers();
	public List<InsuranceUser> queryInsuranceUsers();
	public List<ResumeUser> queryResumeUsers();
	public List<SocialSecurityUser> querySocialSecurityUsers();
	public List<StockUser> queryStockUsers();
}
