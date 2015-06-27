package com.bigmobile.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.bigmobile.dao.MobileUserDAO;
import com.bigmobile.model.BankUser;
import com.bigmobile.model.CarUser;
import com.bigmobile.model.EnterpriseUser;
import com.bigmobile.model.FlightUser;
import com.bigmobile.model.InsuranceUser;
import com.bigmobile.model.MobileUser;
import com.bigmobile.model.MobileUsers;
import com.bigmobile.model.MobileUsersLabel;
import com.bigmobile.model.ResumeUser;
import com.bigmobile.model.SocialSecurityUser;
import com.bigmobile.model.StockUser;
import com.bigmobile.model.User;
import com.bigmobile.model.UserAccess;

@Repository("mobileUserDao")
public class MobileUserDAOImpl implements MobileUserDAO {

	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@Override
	public List<MobileUsers> getMobileUsers() {
		return (List<MobileUsers>)sqlMapClient.queryForList("mobileUsers.getMobileUsers");
	}
	

	@Override
	public List<String> getIndustry() {
		return (List<String>)sqlMapClient.queryForList("mobileUsers.getIndustry");
	}



	@Override
	public List<String> getIncome() {
		// TODO Auto-generated method stub
		return (List<String>)sqlMapClient.queryForList("mobileUsers.getIncome");
	}



	@Override
	public List<String> getEducation() {
		// TODO Auto-generated method stub
		return (List<String>)sqlMapClient.queryForList("mobileUsers.getEducation");
	}



	@Override
	public String getTotalMobileUsers(String[] industry, String[] income, String[] education) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("industry", industry);
		map.put("income", income);
		map.put("education", education);
		
		return (String)sqlMapClient.queryForObject("mobileUsers.getTotalMobileUsers", map);
	}
	
	@Override
	public List<MobileUsersLabel> getMobileUsersByLabel() {
		return (List<MobileUsersLabel>)sqlMapClient.queryForList("mobileUsers.getMobileUsersByLabel");
	}


	@Override
	public List<String> getLabelCar() {
		// TODO Auto-generated method stub
		return (List<String>)sqlMapClient.queryForList("mobileUsers.getLabelCar");
	}


	@Override
	public List<String> getLabelEducation() {
		// TODO Auto-generated method stub
		return (List<String>)sqlMapClient.queryForList("mobileUsers.getLabelEducation");
	}


	@Override
	public List<String> getLabelFinance() {
		// TODO Auto-generated method stub
		return (List<String>)sqlMapClient.queryForList("mobileUsers.getLabelFinance");
	}


	@Override
	public List<String> getLabelRealestate() {
		// TODO Auto-generated method stub
		return (List<String>)sqlMapClient.queryForList("mobileUsers.getLabelRealestate");
	}


	@Override
	public List<String> getLabelHealthcare() {
		// TODO Auto-generated method stub
		return (List<String>)sqlMapClient.queryForList("mobileUsers.getLabelHealthcare");
	}


	@Override
	public List<String> getLabelBrand() {
		// TODO Auto-generated method stub
		return (List<String>)sqlMapClient.queryForList("mobileUsers.getLabelBrand");
	}


	@Override
	public String getTotalMobileUsersByLabel(String queryColumn, String[] labelConditions) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("queryColumn", new String[]{queryColumn});
		map.put("labelConditions", labelConditions);
		
		return (String)sqlMapClient.queryForObject("mobileUsers.getTotalMobileUsersByLabel", map);
	}

	@Override
	public List<Map<String, String>> getUserStatByIndustry() {
		// TODO Auto-generated method stub
		return (List<Map<String,String>>)sqlMapClient.queryForList("mobileUsers.getUserStatByIndustry");
	}

	@Override
	public List<Map<String, String>> getUserStatByIncome() {
		// TODO Auto-generated method stub
		return (List<Map<String,String>>)sqlMapClient.queryForList("mobileUsers.getUserStatByIncome");
	}	
	
	@Override
	public List<Map<String, String>> getLabelUserStatByAge(String queryColumn, String[] labelConditions) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("queryColumn", new String[]{queryColumn});
		map.put("labelConditions", labelConditions);
		return (List<Map<String,String>>)sqlMapClient.queryForList("mobileUsers.getLabelUserStatByAge", map);
	}

	@Override
	public List<Map<String, String>> getLabelUserStatByIncome(String queryColumn, String[] labelConditions) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("queryColumn", new String[]{queryColumn});
		map.put("labelConditions", labelConditions);
		return (List<Map<String,String>>)sqlMapClient.queryForList("mobileUsers.getLabelUserStatByIncome", map);
	}


	@Override
	public List<UserAccess> getUserAccess() {
		// TODO Auto-generated method stub
		return (List<UserAccess>)sqlMapClient.queryForList("userAccess.getUserAccess");
	}

	@Override
	public List<Map<String,String>> getAccessBySite() {
		// TODO Auto-generated method stub
		return (List<Map<String,String>>)sqlMapClient.queryForList("userAccess.getAccessBySite");
	}
	
//	@Override
//	public List<MobileUser> getMobileUsers() {
//		// TODO Auto-generated method stub
//		return (List<MobileUser>)sqlMapClient.queryForList("mobileUser.getMobileUsers");
//	}

	@Override
	public List<BankUser> getBankUsers() {
		// TODO Auto-generated method stub
		return (List<BankUser>)sqlMapClient.queryForList("bankUser.getBankUsers");
	}

	@Override
	public List<CarUser> getCarUsers() {
		// TODO Auto-generated method stub
		return (List<CarUser>)sqlMapClient.queryForList("carUser.getCarUsers");
	}

	@Override
	public List<EnterpriseUser> getEnterpriseUsers() {
		// TODO Auto-generated method stub
		return (List<EnterpriseUser>)sqlMapClient.queryForList("enterpriseUser.getEnterpriseUsers");
	}

	@Override
	public List<FlightUser> getFlightUsers() {
		// TODO Auto-generated method stub
		return (List<FlightUser>)sqlMapClient.queryForList("flightUser.getFlightUsers");
	}

	@Override
	public List<InsuranceUser> getInsuranceUsers() {
		// TODO Auto-generated method stub
		return (List<InsuranceUser>)sqlMapClient.queryForList("insuranceUser.getInsuranceUsers");
	}

	@Override
	public List<ResumeUser> getResumeUsers() {
		// TODO Auto-generated method stub
		return (List<ResumeUser>)sqlMapClient.queryForList("resumeUser.getResumeUsers");
	}

	@Override
	public List<SocialSecurityUser> getSocialSecurityUsers() {
		// TODO Auto-generated method stub
		return (List<SocialSecurityUser>)sqlMapClient.queryForList("socialsecurityUser.getSocialSecurityUsers");
	}

	@Override
	public List<StockUser> getStockUsers() {
		// TODO Auto-generated method stub
		return (List<StockUser>)sqlMapClient.queryForList("stockUser.getStockUsers");
	}

}
