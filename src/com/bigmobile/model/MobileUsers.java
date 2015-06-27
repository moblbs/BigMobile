package com.bigmobile.model;

/**
 * MobileUsers entity. @author MyEclipse Persistence Tools
 */

public class MobileUsers implements java.io.Serializable {

	// Fields

	private String mobile;
	private String name;
	private String gender;
	private String birthdate;
	private String address;
	private String education;
	private String industry;
	private String annualincome;

	// Constructors

	/** default constructor */
	public MobileUsers() {
	}

	/** minimal constructor */
	public MobileUsers(String mobile) {
		this.mobile = mobile;
	}

	/** full constructor */
	public MobileUsers(String mobile, String name, String gender,
			String birthdate, String address, String education,
			String industry, String annualincome) {
		this.mobile = mobile;
		this.name = name;
		this.gender = gender;
		this.birthdate = birthdate;
		this.address = address;
		this.education = education;
		this.industry = industry;
		this.annualincome = annualincome;
	}

	// Property accessors

	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
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

	public String getBirthdate() {
		return this.birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEducation() {
		return this.education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getIndustry() {
		return this.industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

	public String getAnnualincome() {
		return this.annualincome;
	}

	public void setAnnualincome(String annualincome) {
		this.annualincome = annualincome;
	}

}