package com.bigmobile.model;

/**
 * FlightUser entity. @author MyEclipse Persistence Tools
 */

public class FlightUser implements java.io.Serializable {

	// Fields

	private String name;
	private String mobile;
	private String address;
	private String postcode;
	private String from_city;
	private String to_city;
	private String seat;


	// Constructors

	/** default constructor */
	public FlightUser() {
	}

	/** full constructor */
	public FlightUser(String name, String mobile, String address,
			String postcode, String from_city, String to_city, String seat) {
		this.name = name;
		this.mobile = mobile;
		this.address = address;
		this.postcode = postcode;
		this.from_city = from_city;
		this.to_city = to_city;
		this.seat = seat;
	}

	// Property accessors

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

	public String getFrom_city() {
		return this.from_city;
	}

	public void setFrom_city(String from_city) {
		this.from_city = from_city;
	}

	public String getTo_city() {
		return this.to_city;
	}

	public void setTo_city(String to_city) {
		this.to_city = to_city;
	}

	public String getSeat() {
		return this.seat;
	}

	public void setSeat(String seat) {
		this.seat = seat;
	}


}