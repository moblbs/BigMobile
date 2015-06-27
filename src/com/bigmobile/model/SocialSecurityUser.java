package com.bigmobile.model;

/**
 * SocialSecurityUser entity. @author MyEclipse Persistence Tools
 */

public class SocialSecurityUser implements java.io.Serializable {

	// Fields

	private String mobile;
	private String name;
	private String address;
	private String postcode;
	private String education;
	private String basicFee;
	private String gender;
	private String birthyear;

	// Constructors

	/** default constructor */
	public SocialSecurityUser() {
	}

	/** minimal constructor */
	public SocialSecurityUser(String mobile) {
		this.mobile = mobile;
	}

	/** full constructor */
	public SocialSecurityUser(String mobile, String name, String address,
			String postcode, String education, String basicFee, String gender,
			String birthyear) {
		this.mobile = mobile;
		this.name = name;
		this.address = address;
		this.postcode = postcode;
		this.education = education;
		this.basicFee = basicFee;
		this.gender = gender;
		this.birthyear = birthyear;
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

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPostcode() {
		return this.postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getEducation() {
		return this.education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getBasicFee() {
		return this.basicFee;
	}

	public void setBasicFee(String basicFee) {
		this.basicFee = basicFee;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthyear() {
		return this.birthyear;
	}

	public void setBirthyear(String birthyear) {
		this.birthyear = birthyear;
	}

}