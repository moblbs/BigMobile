package com.bigmobile.model;

/**
 * MobileUser entity. @author MyEclipse Persistence Tools
 */

public class MobileUser implements java.io.Serializable {

	// Fields

	private String mobile;
	private String name;
	private String address;
	private String postcode;
	private String birthdate;
	private String gender;
	private String idcard;
	private String simCardType;
	private String simCardUser;
	private String firstRegisterDate;
	private String packageChangeDate;
	private String effectDate;
	private String billAddress;

	// Constructors

	/** default constructor */
	public MobileUser() {
	}

	/** minimal constructor */
	public MobileUser(String mobile) {
		this.mobile = mobile;
	}

	/** full constructor */
	public MobileUser(String mobile, String name, String address,
			String postcode, String birthdate, String gender, String idcard,
			String simCardType, String simCardUser, String firstRegisterDate,
			String packageChangeDate, String effectDate, String billAddress) {
		this.mobile = mobile;
		this.name = name;
		this.address = address;
		this.postcode = postcode;
		this.birthdate = birthdate;
		this.gender = gender;
		this.idcard = idcard;
		this.simCardType = simCardType;
		this.simCardUser = simCardUser;
		this.firstRegisterDate = firstRegisterDate;
		this.packageChangeDate = packageChangeDate;
		this.effectDate = effectDate;
		this.billAddress = billAddress;
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

	public String getBirthdate() {
		return this.birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getIdcard() {
		return this.idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public String getSimCardType() {
		return this.simCardType;
	}

	public void setSimCardType(String simCardType) {
		this.simCardType = simCardType;
	}

	public String getSimCardUser() {
		return this.simCardUser;
	}

	public void setSimCardUser(String simCardUser) {
		this.simCardUser = simCardUser;
	}

	public String getFirstRegisterDate() {
		return this.firstRegisterDate;
	}

	public void setFirstRegisterDate(String firstRegisterDate) {
		this.firstRegisterDate = firstRegisterDate;
	}

	public String getPackageChangeDate() {
		return this.packageChangeDate;
	}

	public void setPackageChangeDate(String packageChangeDate) {
		this.packageChangeDate = packageChangeDate;
	}

	public String getEffectDate() {
		return this.effectDate;
	}

	public void setEffectDate(String effectDate) {
		this.effectDate = effectDate;
	}

	public String getBillAddress() {
		return this.billAddress;
	}

	public void setBillAddress(String billAddress) {
		this.billAddress = billAddress;
	}

}