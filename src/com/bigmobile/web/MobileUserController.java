package com.bigmobile.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.apache.log4j.Logger;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bigmobile.model.*;
import com.bigmobile.service.MobileUserService;

@Controller
@RequestMapping("/mobileUser.do")
public class MobileUserController {
	
	protected static Logger logger = Logger.getLogger(UserController.class);// 日志
	@Autowired
	public MobileUserService mobileUserService;
	
	@RequestMapping(params="method=toMobileUsers")
	public String toMobileUsersPage(HttpServletRequest request,Model model){
		List<MobileUsers> list = mobileUserService.queryMobileUsers();
		model.addAttribute("mobileUsersList", list);
		return "mobileUser/mobileUsersList";
	}
	
	@RequestMapping(params="method=toMobileUsersQuery")
	public String toMobileUsersQueryPage(HttpServletRequest request,HttpServletResponse response, Model model){
		List<String> industry = mobileUserService.queryIndustry();
		List<String> income = mobileUserService.queryIncome();
		List<String> education = mobileUserService.queryEducation();
		model.addAttribute("industry", industry);
		model.addAttribute("income", income);
		model.addAttribute("education", education);
		
//		String[] industrySelected = new String[industry.size()];
//		String[] incomeSelected = new String[income.size()];
//		String[] educationSelected = new String[education.size()];
		
		String[] industrySelected=request.getParameterValues("industrySelected");
		String[] incomeSelected=request.getParameterValues("incomeSelected");
		String[] educationSelected=request.getParameterValues("educationSelected");
		
		String refresh= request.getParameter("refresh");
		
		if (industrySelected==null || industrySelected.length==0){
			industrySelected = new String[industry.size()];
			industry.toArray(industrySelected);
		}
		
		if (incomeSelected==null || incomeSelected.length==0){
			incomeSelected = new String[income.size()];
			income.toArray(incomeSelected);
		}
		
		if (educationSelected==null || educationSelected.length==0){
			educationSelected = new String[education.size()];
			education.toArray(educationSelected);
		}
		
		String totalMobileUsers = mobileUserService.getTotalMobileUsers(industrySelected, incomeSelected, educationSelected);
		model.addAttribute("totalMobileUsers", totalMobileUsers);
		try {
			response.getWriter().print(totalMobileUsers);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if(refresh == null) {
			return "mobileUser/mobileUsersQuery";
		} else {
			return null;
		}
		
	}
	
	@RequestMapping(params="method=toMobileUsersByLabel")
	public String toMobileUsersByLabelPage(HttpServletRequest request,Model model){
		List<MobileUsersLabel> list = mobileUserService.queryMobileUsersByLabel();
		model.addAttribute("mobileUsersByLabelList", list);
		return "mobileUser/mobileUsersByLabelList";
	}
	
	@RequestMapping(params="method=toMobileUsersQueryByLabel")
	public String toMobileUsersQueryByLabelPage(HttpServletRequest request,HttpServletResponse response, Model model){
		List<String> labelCar = mobileUserService.queryLabelCar();
		List<String> labelEducation = mobileUserService.queryLabelEducation();
		List<String> labelFinance = mobileUserService.queryLabelFinance();
		List<String> labelRealestate = mobileUserService.queryLabelRealestate();
		List<String> labelHealthcare = mobileUserService.queryLabelHealthcare();
		List<String> labelBrand = mobileUserService.queryLabelBrand();
		model.addAttribute("labelCar", labelCar);
		model.addAttribute("labelEducation", labelEducation);
		model.addAttribute("labelFinance", labelFinance);
		model.addAttribute("labelRealestate", labelRealestate);
		model.addAttribute("labelHealthcare", labelHealthcare);
		model.addAttribute("labelBrand", labelBrand);
		
		String queryColumn=request.getParameter("queryColumn");
		String[] labelConditions=request.getParameterValues("labelConditions");
		
		if (queryColumn == null){
			queryColumn = "label_car";
			labelConditions = new String[labelCar.size()];
			labelCar.toArray(labelConditions);
		}
		
		String refresh= request.getParameter("refresh");
		
		String totalMobileUsersByLabel;
		JSONArray jsonArrayAge = null;
		JSONArray jsonArrayIncome = null;
		if(queryColumn != null && labelConditions != null && labelConditions.length > 0){
			totalMobileUsersByLabel = mobileUserService.queryTotalMobileUsersByLabel(queryColumn, labelConditions);
			
			List<Map<String, String>> ageStatMap = mobileUserService.queryLabelUserStatByAge(queryColumn, labelConditions);
			jsonArrayAge = JSONArray.fromObject(ageStatMap);
			
			List<Map<String, String>> incomeStatMap = mobileUserService.queryLabelUserStatByIncome(queryColumn, labelConditions);
			jsonArrayIncome = JSONArray.fromObject(incomeStatMap);
		}else{
			totalMobileUsersByLabel="0";
		}
		
		model.addAttribute("UserStatByAge", jsonArrayAge);
		model.addAttribute("UserStatByIncome", jsonArrayIncome);
		model.addAttribute("totalMobileUsersByLabel", totalMobileUsersByLabel);
		
		try {
//			Map<String, Object> ajaxData=  new HashMap<String, Object>();
//			ajaxData.put("totalMobileUsersByLabel", totalMobileUsersByLabel);
//			ajaxData.put("UserStatByAge", jsonArrayAge);
//			ajaxData.put("UserStatByIncome", jsonArrayIncome);
			
			JSONObject json = new JSONObject();
			json.put("totalMobileUsersByLabel", totalMobileUsersByLabel);
			json.put("UserStatByAge", jsonArrayAge);
			json.put("UserStatByIncome", jsonArrayIncome);
			
			response.getWriter().print(json);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	

		if(refresh == null) {
			return "mobileUser/mobileUsersQueryByLabel";
		} else {
			return null;
		}
		
	}
	
	@RequestMapping(params="method=toUserStat")
	public String toUserStatByIncomePage(HttpServletRequest request,Model model){
		List<Map<String, String>> industryStatMap = mobileUserService.queryUserStatByIndustry();
		JSONArray jsonArrayIndustry = JSONArray.fromObject(industryStatMap);
		model.addAttribute("UserStatByIndustry", jsonArrayIndustry);
		
		List<Map<String, String>> incomeStatMap = mobileUserService.queryUserStatByIncome();
		JSONArray jsonArrayIncome = JSONArray.fromObject(incomeStatMap);
		model.addAttribute("UserStatByIncome", jsonArrayIncome);
		return "mobileUser/userStat";
	}
	
	@RequestMapping(params="method=toUserAccess")
	public String toUserAccessPage(HttpServletRequest request,Model model){
		List<UserAccess> list = mobileUserService.queryUserAccess();
		model.addAttribute("userAccessList", list);
		return "mobileUser/userAccessList";
	}
	
	@RequestMapping(params="method=toAccessStatBySite")
	public String toAccessStatBySitePage(HttpServletRequest request,Model model){
		List<Map<String, String>> statMap = mobileUserService.queryAccessBySite();
		JSONArray jsonArray = JSONArray.fromObject(statMap);
		model.addAttribute("AccessStatBySite", jsonArray);
		return "mobileUser/accessStatBySite";
	}
	
//	@RequestMapping(params="method=toMobile")
//	public String toMobilePage(HttpServletRequest request,Model model){
//		List<MobileUser> list = mobileUserService.queryMobileUsers();
//		model.addAttribute("mobileUserList", list);
//		return "mobileUser/mobileUserList";
//	}
	
	@RequestMapping(params="method=toBank")
	public String toBankPage(HttpServletRequest request,Model model){
		List<BankUser> list = mobileUserService.queryBankUsers();
		model.addAttribute("bankUserList", list);
		return "mobileUser/bankUserList";
	}
	
	@RequestMapping(params="method=toCar")
	public String toCarPage(HttpServletRequest request,Model model){
		List<CarUser> list = mobileUserService.queryCarUsers();
		model.addAttribute("carUserList", list);
		return "mobileUser/carUserList";
	}
	
	@RequestMapping(params="method=toEnterprise")
	public String toEnterprisePage(HttpServletRequest request,Model model){
		List<EnterpriseUser> list = mobileUserService.queryEnterpriseUsers();
		model.addAttribute("enterpriseUserList", list);
		return "mobileUser/enterpriseUserList";
	}
	
	@RequestMapping(params="method=toFlight")
	public String toFlightPage(HttpServletRequest request,Model model){
		List<FlightUser> list = mobileUserService.queryFlightUsers();
		model.addAttribute("flightUserList", list);
		return "mobileUser/flightUserList";
	}
	
	@RequestMapping(params="method=toInsurance")
	public String toInsurancePage(HttpServletRequest request,Model model){
		List<InsuranceUser> list = mobileUserService.queryInsuranceUsers();
		model.addAttribute("insuranceUserList", list);
		return "mobileUser/insuranceUserList";
	}
	
	@RequestMapping(params="method=toResume")
	public String toResumePage(HttpServletRequest request,Model model){
		List<ResumeUser> list = mobileUserService.queryResumeUsers();
		model.addAttribute("resumeUserList", list);
		return "mobileUser/resumeUserList";
	}
	
	@RequestMapping(params="method=toSocialSecurity")
	public String toSocialSecurityPage(HttpServletRequest request,Model model){
		List<SocialSecurityUser> list = mobileUserService.querySocialSecurityUsers();
		model.addAttribute("socialSecurityUserList", list);
		return "mobileUser/socialSecurityUserList";
	}
	
	@RequestMapping(params="method=toStock")
	public String toStockPage(HttpServletRequest request,Model model){
		List<StockUser> list = mobileUserService.queryStockUsers();
		model.addAttribute("stockUserList", list);
		return "mobileUser/stockUserList";
	}

}
