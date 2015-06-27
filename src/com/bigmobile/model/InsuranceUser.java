package com.bigmobile.model;

/**
 * InsuranceUser entity. @author MyEclipse Persistence Tools
 */

public class InsuranceUser implements java.io.Serializable {

	// Fields

	private String mobile;
	private String enterprise;
	private String enterprise_english;
	private String department;
	private String department_english;
	private String position;
	private String position_english;
	private String name;
	private String gender;
	private String address;
	private String telephone;
	private String email;
	private String industry;

	// Constructors

	/** default constructor */
	public InsuranceUser() {
	}

	/** minimal constructor */
	public InsuranceUser(String mobile) {
		this.mobile = mobile;
	}

	/** full constructor */
	public InsuranceUser(String mobile, String enterprise,
			String enterprise_english, String department,
			String department_english, String position, String position_english,
			String name, String gender, String address, String telephone,
			String email, String industry) {
		this.mobile = mobile;
		this.enterprise = enterprise;
		this.enterprise_english = enterprise_english;
		this.department = department;
		this.department_english = department_english;
		this.position = position;
		this.position_english = position_english;
		this.name = name;
		this.gender = gender;
		this.address = address;
		this.telephone = telephone;
		this.email = email;
		this.industry = industry;
	}

	// Property accessors

	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEnterprise() {
		return this.enterprise;
	}

	public void setEnterprise(String enterprise) {
		this.enterprise = enterprise;
	}

	public String getEnterprise_english() {
		return this.enterprise_english;
	}

	public void setEnterprise_english(String enterprise_english) {
		this.enterprise_english = enterprise_english;
	}

	public String getDepartment() {
		return this.department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getDepartment_english() {
		return this.department_english;
	}

	public void setDepartment_english(String department_english) {
		this.department_english = department_english;
	}

	public String getPosition() {
		return this.position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getPosition_english() {
		return this.position_english;
	}

	public void setPosition_english(String position_english) {
		this.position_english = position_english;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIndustry() {
		return this.industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

}