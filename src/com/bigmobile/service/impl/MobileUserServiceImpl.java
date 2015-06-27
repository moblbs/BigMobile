package com.bigmobile.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

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
import com.bigmobile.model.UserAccess;
import com.bigmobile.service.MobileUserService;

@Service("mobileUserService")
public class MobileUserServiceImpl implements MobileUserService {

	@Resource(name = "mobileUserDao") 
	private MobileUserDAO mobileUserDao;
	
	@Override
	public List<MobileUsers> queryMobileUsers() {
		// TODO Auto-generated method stub
		return mobileUserDao.getMobileUsers();
	}
	
	
	@Override
	public List<String> queryIndustry() {
		// TODO Auto-generated method stub
		return mobileUserDao.getIndustry();
	}



	@Override
	public List<String> queryIncome() {
		// TODO Auto-generated method stub
		return mobileUserDao.getIncome();
	}



	@Override
	public List<String> queryEducation() {
		// TODO Auto-generated method stub
		return mobileUserDao.getEducation();
	}


	@Override
	public String getTotalMobileUsers(String[] industry, String[] income, String[] education) {
		// TODO Auto-generated method stub
		return mobileUserDao.getTotalMobileUsers(industry, income, education);
	}
	
	@Override
	public List<MobileUsersLabel> queryMobileUsersByLabel() {
		// TODO Auto-generated method stub
		return mobileUserDao.getMobileUsersByLabel();
	}


	@Override
	public List<String> queryLabelCar() {
		// TODO Auto-generated method stub
		return mobileUserDao.getLabelCar();
	}


	@Override
	public List<String> queryLabelEducation() {
		// TODO Auto-generated method stub
		return mobileUserDao.getLabelEducation();
	}


	@Override
	public List<String> queryLabelFinance() {
		// TODO Auto-generated method stub
		return mobileUserDao.getLabelFinance();
	}


	@Override
	public List<String> queryLabelRealestate() {
		// TODO Auto-generated method stub
		return mobileUserDao.getLabelRealestate();
	}


	@Override
	public List<String> queryLabelHealthcare() {
		// TODO Auto-generated method stub
		return mobileUserDao.getLabelHealthcare();
	}


	@Override
	public List<String> queryLabelBrand() {
		// TODO Auto-generated method stub
		return mobileUserDao.getLabelBrand();
	}


	@Override
	public String queryTotalMobileUsersByLabel(String queryColumn,
			String[] labelConditions) {
		// TODO Auto-generated method stub
		return mobileUserDao.getTotalMobileUsersByLabel(queryColumn, labelConditions);
	}
	
	@Override
	public List<Map<String, String>> queryUserStatByIndustry() {
		// TODO Auto-generated method stub
		return mobileUserDao.getUserStatByIndustry();
	}

	@Override
	public List<Map<String, String>> queryUserStatByIncome() {
		// TODO Auto-generated method stub
		return mobileUserDao.getUserStatByIncome();
	}

	@Override
	public List<Map<String, String>> queryLabelUserStatByAge(String queryColumn, String[] labelConditions) {
		// TODO Auto-generated method stub
		return mobileUserDao.getLabelUserStatByAge(queryColumn, labelConditions);
	}

	@Override
	public List<Map<String, String>> queryLabelUserStatByIncome(String queryColumn, String[] labelConditions) {
		// TODO Auto-generated method stub
		return mobileUserDao.getLabelUserStatByIncome(queryColumn, labelConditions);
	}


	@Override
	public List<UserAccess>queryUserAccess() {
		// TODO Auto-generated method stub
		return mobileUserDao.getUserAccess();
	}

	@Override
	public List<Map<String, String>> queryAccessBySite() {
		// TODO Auto-generated method stub
		return mobileUserDao.getAccessBySite();
	}
		
	
//	@Override
//	public List<MobileUser> queryMobileUsers() {
//		// TODO Auto-generated method stub
//		return mobileUserDao.getMobileUsers();
//	}

	@Override
	public List<BankUser> queryBankUsers() {
		// TODO Auto-generated method stub
		return mobileUserDao.getBankUsers();
	}

	@Override
	public List<CarUser> queryCarUsers() {
		// TODO Auto-generated method stub
		return mobileUserDao.getCarUsers();
	}

	@Override
	public List<EnterpriseUser> queryEnterpriseUsers() {
		// TODO Auto-generated method stub
		return mobileUserDao.getEnterpriseUsers();
	}

	@Override
	public List<FlightUser> queryFlightUsers() {
		// TODO Auto-generated method stub
		return mobileUserDao.getFlightUsers();
	}

	@Override
	public List<InsuranceUser> queryInsuranceUsers() {
		// TODO Auto-generated method stub
		return mobileUserDao.getInsuranceUsers();
	}

	@Override
	public List<ResumeUser> queryResumeUsers() {
		// TODO Auto-generated method stub
		return mobileUserDao.getResumeUsers();
	}

	@Override
	public List<SocialSecurityUser> querySocialSecurityUsers() {
		// TODO Auto-generated method stub
		return mobileUserDao.getSocialSecurityUsers();
	}

	@Override
	public List<StockUser> queryStockUsers() {
		// TODO Auto-generated method stub
		return mobileUserDao.getStockUsers();
	}

}
