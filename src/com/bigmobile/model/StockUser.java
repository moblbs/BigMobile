package com.bigmobile.model;

/**
 * StockUser entity. @author MyEclipse Persistence Tools
 */

public class StockUser implements java.io.Serializable {

	// Fields

	private String mobile;
	private String name;
	private String capital;
	private String telephone;
	private String area;

	// Constructors

	/** default constructor */
	public StockUser() {
	}

	/** minimal constructor */
	public StockUser(String mobile) {
		this.mobile = mobile;
	}

	/** full constructor */
	public StockUser(String mobile, String name, String capital,
			String telephone, String area) {
		this.mobile = mobile;
		this.name = name;
		this.capital = capital;
		this.telephone = telephone;
		this.area = area;
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

	public String getCapital() {
		return this.capital;
	}

	public void setCapital(String capital) {
		this.capital = capital;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getArea() {
		return this.area;
	}

	public void setArea(String area) {
		this.area = area;
	}

}