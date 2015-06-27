package com.bigmobile.model;

/**
 * EnterpriseUser entity. @author MyEclipse Persistence Tools
 */

public class EnterpriseUser implements java.io.Serializable {

	// Fields

	private String enterprise_egister_code;
	private String enterprise_name;
	private String address;
	private String postcode;
	private String register_capital_cny;
	private String register_capital_dollar;
	private String register_date;
	private String effect_date;
	private String industry_code;
	private String operation_field;
	private String enterprise_type;
	private String corporate_person;
	private String corporate_person_mobile;
	private String contact_person;
	private String contact_person_mobile;

	// Constructors

	/** default constructor */
	public EnterpriseUser() {
	}

	/** minimal constructor */
	public EnterpriseUser(String enterprise_egister_code) {
		this.enterprise_egister_code = enterprise_egister_code;
	}

	/** full constructor */

	public EnterpriseUser(String enterprise_egister_code,
			String enterprise_name, String address, String postcode,
			String register_capital_cny, String register_capital_dollar,
			String register_date, String effect_date, String industry_code,
			String operation_field, String enterprise_type,
			String corporate_person, String corporate_person_mobile,
			String contact_person, String contact_person_mobile) {
		super();
		this.enterprise_egister_code = enterprise_egister_code;
		this.enterprise_name = enterprise_name;
		this.address = address;
		this.postcode = postcode;
		this.register_capital_cny = register_capital_cny;
		this.register_capital_dollar = register_capital_dollar;
		this.register_date = register_date;
		this.effect_date = effect_date;
		this.industry_code = industry_code;
		this.operation_field = operation_field;
		this.enterprise_type = enterprise_type;
		this.corporate_person = corporate_person;
		this.corporate_person_mobile = corporate_person_mobile;
		this.contact_person = contact_person;
		this.contact_person_mobile = contact_person_mobile;
	}
	

	// Property accessors
	
	public String getEnterprise_egister_code() {
		return enterprise_egister_code;
	}

	public void setEnterprise_egister_code(String enterprise_egister_code) {
		this.enterprise_egister_code = enterprise_egister_code;
	}

	public String getEnterprise_name() {
		return enterprise_name;
	}

	public void setEnterprise_name(String enterprise_name) {
		this.enterprise_name = enterprise_name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getRegister_capital_cny() {
		return register_capital_cny;
	}

	public void setRegister_capital_cny(String register_capital_cny) {
		this.register_capital_cny = register_capital_cny;
	}

	public String getRegister_capital_dollar() {
		return register_capital_dollar;
	}

	public void setRegister_capital_dollar(String register_capital_dollar) {
		this.register_capital_dollar = register_capital_dollar;
	}

	public String getRegister_date() {
		return register_date;
	}

	public void setRegister_date(String register_date) {
		this.register_date = register_date;
	}

	public String getEffect_date() {
		return effect_date;
	}

	public void setEffect_date(String effect_date) {
		this.effect_date = effect_date;
	}

	public String getIndustry_code() {
		return industry_code;
	}

	public void setIndustry_code(String industry_code) {
		this.industry_code = industry_code;
	}

	public String getOperation_field() {
		return operation_field;
	}

	public void setOperation_field(String operation_field) {
		this.operation_field = operation_field;
	}

	public String getEnterprise_type() {
		return enterprise_type;
	}

	public void setEnterprise_type(String enterprise_type) {
		this.enterprise_type = enterprise_type;
	}

	public String getCorporate_person() {
		return corporate_person;
	}

	public void setCorporate_person(String corporate_person) {
		this.corporate_person = corporate_person;
	}

	public String getCorporate_person_mobile() {
		return corporate_person_mobile;
	}

	public void setCorporate_person_mobile(String corporate_person_mobile) {
		this.corporate_person_mobile = corporate_person_mobile;
	}

	public String getContact_person() {
		return contact_person;
	}

	public void setContact_person(String contact_person) {
		this.contact_person = contact_person;
	}

	public String getContact_person_mobile() {
		return contact_person_mobile;
	}

	public void setContact_person_mobile(String contact_person_mobile) {
		this.contact_person_mobile = contact_person_mobile;
	}

	

}