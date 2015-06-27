package com.bigmobile.model;

/**
 * BankUser entity. @author MyEclipse Persistence Tools
 */

public class BankUser implements java.io.Serializable {

	// Fields

	private String bank_account;
	private String name;
	private String mobile;
	private String address;
	private String postcode;

	// Constructors

	/** default constructor */
	public BankUser() {
	}

	/** minimal constructor */
	public BankUser(String bank_account) {
		this.bank_account = bank_account;
	}

	/** full constructor */
	public BankUser(String bank_account, String name, String mobile,
			String address, String postcode) {
		this.bank_account = bank_account;
		this.name = name;
		this.mobile = mobile;
		this.address = address;
		this.postcode = postcode;
	}

	// Property accessors


	public String getBank_account() {
		return bank_account;
	}

	public void setBank_account(String bank_account) {
		this.bank_account = bank_account;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
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

}