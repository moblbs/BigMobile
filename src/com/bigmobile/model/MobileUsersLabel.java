package com.bigmobile.model;

/**
 * MobileUsersLabel entity. @author MyEclipse Persistence Tools
 */

public class MobileUsersLabel implements java.io.Serializable {

	// Fields

	private String mobile;
	private String labelcar;
	private String labeleducation;
	private String labelfinance;
	private String labelrealestate;
	private String labelhealthcare;
	private String labelbrand;
	private String labelinternettime;
	private String labelhobby;

	// Constructors

	/** default constructor */
	public MobileUsersLabel() {
	}

	/** minimal constructor */
	public MobileUsersLabel(String mobile) {
		this.mobile = mobile;
	}

	/** full constructor */
	public MobileUsersLabel(String mobile, String labelcar,
			String labeleducation, String labelfinance, String labelrealestate,
			String labelhealthcare, String labelbrand,
			String labelinternettime, String labelhobby) {
		this.mobile = mobile;
		this.labelcar = labelcar;
		this.labeleducation = labeleducation;
		this.labelfinance = labelfinance;
		this.labelrealestate = labelrealestate;
		this.labelhealthcare = labelhealthcare;
		this.labelbrand = labelbrand;
		this.labelinternettime = labelinternettime;
		this.labelhobby = labelhobby;
	}

	// Property accessors

	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getLabelcar() {
		return this.labelcar;
	}

	public void setLabelcar(String labelcar) {
		this.labelcar = labelcar;
	}

	public String getLabeleducation() {
		return this.labeleducation;
	}

	public void setLabeleducation(String labeleducation) {
		this.labeleducation = labeleducation;
	}

	public String getLabelfinance() {
		return this.labelfinance;
	}

	public void setLabelfinance(String labelfinance) {
		this.labelfinance = labelfinance;
	}

	public String getLabelrealestate() {
		return this.labelrealestate;
	}

	public void setLabelrealestate(String labelrealestate) {
		this.labelrealestate = labelrealestate;
	}

	public String getLabelhealthcare() {
		return this.labelhealthcare;
	}

	public void setLabelhealthcare(String labelhealthcare) {
		this.labelhealthcare = labelhealthcare;
	}

	public String getLabelbrand() {
		return this.labelbrand;
	}

	public void setLabelbrand(String labelbrand) {
		this.labelbrand = labelbrand;
	}

	public String getLabelinternettime() {
		return this.labelinternettime;
	}

	public void setLabelinternettime(String labelinternettime) {
		this.labelinternettime = labelinternettime;
	}

	public String getLabelhobby() {
		return this.labelhobby;
	}

	public void setLabelhobby(String labelhobby) {
		this.labelhobby = labelhobby;
	}

}