package com.bigmobile.model;

/**
 * ResumeUser entity. @author MyEclipse Persistence Tools
 */

public class ResumeUser implements java.io.Serializable {

	// Fields

	private String mobile;
	private String username;
	private String sex;
	private String address;
	private String birthyear;
	private String nation;
	private String marriage;
	private String resident_city;
	private String work_year;
	private String hukou_city;
	private String annual_salary;
	private String postcode;
	private String email;
	private String education;
	private String school;
	private String fam_phone;
	private String comp_phone;
	private String web;
	private String basic_salary;
	private String allowance;
	private String bonus;
	private String stock;
	private String hobby;
	private String target_industry;
	private String target_function;
	private String department;
	private String position;

	// Constructors

	/** default constructor */
	public ResumeUser() {
	}

	/** minimal constructor */
	public ResumeUser(String mobile) {
		this.mobile = mobile;
	}


	/** full constructor */
	
	public ResumeUser(String mobile, String username, String sex,
			String address, String birthyear, String nation, String marriage,
			String resident_city, String work_year, String hukou_city,
			String annual_salary, String postcode, String email,
			String education, String school, String fam_phone,
			String comp_phone, String web, String basic_salary,
			String allowance, String bonus, String stock, String hobby,
			String target_industry, String target_function, String department,
			String position) {
		super();
		this.mobile = mobile;
		this.username = username;
		this.sex = sex;
		this.address = address;
		this.birthyear = birthyear;
		this.nation = nation;
		this.marriage = marriage;
		this.resident_city = resident_city;
		this.work_year = work_year;
		this.hukou_city = hukou_city;
		this.annual_salary = annual_salary;
		this.postcode = postcode;
		this.email = email;
		this.education = education;
		this.school = school;
		this.fam_phone = fam_phone;
		this.comp_phone = comp_phone;
		this.web = web;
		this.basic_salary = basic_salary;
		this.allowance = allowance;
		this.bonus = bonus;
		this.stock = stock;
		this.hobby = hobby;
		this.target_industry = target_industry;
		this.target_function = target_function;
		this.department = department;
		this.position = position;
	}


	// Property accessors
	
	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBirthyear() {
		return birthyear;
	}

	public void setBirthyear(String birthyear) {
		this.birthyear = birthyear;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getMarriage() {
		return marriage;
	}

	public void setMarriage(String marriage) {
		this.marriage = marriage;
	}

	public String getResident_city() {
		return resident_city;
	}

	public void setResident_city(String resident_city) {
		this.resident_city = resident_city;
	}

	public String getWork_year() {
		return work_year;
	}

	public void setWork_year(String work_year) {
		this.work_year = work_year;
	}

	public String getHukou_city() {
		return hukou_city;
	}

	public void setHukou_city(String hukou_city) {
		this.hukou_city = hukou_city;
	}

	public String getAnnual_salary() {
		return annual_salary;
	}

	public void setAnnual_salary(String annual_salary) {
		this.annual_salary = annual_salary;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getFam_phone() {
		return fam_phone;
	}

	public void setFam_phone(String fam_phone) {
		this.fam_phone = fam_phone;
	}

	public String getComp_phone() {
		return comp_phone;
	}

	public void setComp_phone(String comp_phone) {
		this.comp_phone = comp_phone;
	}

	public String getWeb() {
		return web;
	}

	public void setWeb(String web) {
		this.web = web;
	}

	public String getBasic_salary() {
		return basic_salary;
	}

	public void setBasic_salary(String basic_salary) {
		this.basic_salary = basic_salary;
	}

	public String getAllowance() {
		return allowance;
	}

	public void setAllowance(String allowance) {
		this.allowance = allowance;
	}

	public String getBonus() {
		return bonus;
	}

	public void setBonus(String bonus) {
		this.bonus = bonus;
	}

	public String getStock() {
		return stock;
	}

	public void setStock(String stock) {
		this.stock = stock;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public String getTarget_industry() {
		return target_industry;
	}

	public void setTarget_industry(String target_industry) {
		this.target_industry = target_industry;
	}

	public String getTarget_function() {
		return target_function;
	}

	public void setTarget_function(String target_function) {
		this.target_function = target_function;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	

}