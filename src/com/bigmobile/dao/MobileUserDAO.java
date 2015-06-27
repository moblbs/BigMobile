package com.bigmobile.dao;

import java.util.List;
import java.util.Map;

import com.bigmobile.model.*;

public interface MobileUserDAO {

	public List<MobileUsers> getMobileUsers();
	
	public List<String> getIndustry();
	public List<String> getIncome();
	public List<String> getEducation();
	public String getTotalMobileUsers(String[] industry, String[] income, String[] education);
	
	public List<MobileUsersLabel> getMobileUsersByLabel();
	public List<String> getLabelCar();
	public List<String> getLabelEducation();
	public List<String> getLabelFinance();
	public List<String> getLabelRealestate();
	public List<String> getLabelHealthcare();
	public List<String> getLabelBrand();
	public String getTotalMobileUsersByLabel(String queryColumn, String[] labelConditions);

	public List<Map<String,String>> getUserStatByIndustry();
	public List<Map<String,String>> getUserStatByIncome();

	public List<Map<String,String>> getLabelUserStatByAge(String queryColumn, String[] labelConditions);
	public List<Map<String,String>> getLabelUserStatByIncome(String queryColumn, String[] labelConditions);

	public List<UserAccess> getUserAccess();
	public List<Map<String,String>> getAccessBySite();
	//public List<MobileUser> getMobileUsers();
	public List<BankUser> getBankUsers();
	public List<CarUser> getCarUsers();
	public List<EnterpriseUser> getEnterpriseUsers();
	public List<FlightUser> getFlightUsers();
	public List<InsuranceUser> getInsuranceUsers();
	public List<ResumeUser> getResumeUsers();
	public List<SocialSecurityUser> getSocialSecurityUsers();
	public List<StockUser> getStockUsers();
}
