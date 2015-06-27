package com.bigmobile.model;

/**
 * CarUser entity. @author MyEclipse Persistence Tools
 */

public class CarUser implements java.io.Serializable {

	// Fields

	private String vehicle_code;
	private String vehicle_type;
	private String owner;
	private String dwelling_place;
	private String vehicle_state;
	private String provide_cert_department;
	private String use_type;
	private String manufacturer_model;
	private String obtain_quomodo;
	private String vehicle_identify_code;
	private String engine_code;
	private String vehicle_color;
	private String first_reg_date;
	private String provide_cert_date;
	private String provide_terminate_date;
	private String insurance_terminate_date;
	private String connect_tel;
	private String cert_name;
	private String cert_code;
	private String reg_zipcode;
	private String homebred_or_import;

	// Constructors

	/** default constructor */
	public CarUser() {
	}

	/** minimal constructor */
	public CarUser(String vehicle_code) {
		this.vehicle_code = vehicle_code;
	}

	/** full constructor */

	public CarUser(String vehicle_code, String vehicle_type, String owner,
			String dwelling_place, String vehicle_state,
			String provide_cert_department, String use_type,
			String manufacturer_model, String obtain_quomodo,
			String vehicle_identify_code, String engine_code,
			String vehicle_color, String first_reg_date,
			String provide_cert_date, String provide_terminate_date,
			String insurance_terminate_date, String connect_tel,
			String cert_name, String cert_code, String reg_zipcode,
			String homebred_or_import) {
		super();
		this.vehicle_code = vehicle_code;
		this.vehicle_type = vehicle_type;
		this.owner = owner;
		this.dwelling_place = dwelling_place;
		this.vehicle_state = vehicle_state;
		this.provide_cert_department = provide_cert_department;
		this.use_type = use_type;
		this.manufacturer_model = manufacturer_model;
		this.obtain_quomodo = obtain_quomodo;
		this.vehicle_identify_code = vehicle_identify_code;
		this.engine_code = engine_code;
		this.vehicle_color = vehicle_color;
		this.first_reg_date = first_reg_date;
		this.provide_cert_date = provide_cert_date;
		this.provide_terminate_date = provide_terminate_date;
		this.insurance_terminate_date = insurance_terminate_date;
		this.connect_tel = connect_tel;
		this.cert_name = cert_name;
		this.cert_code = cert_code;
		this.reg_zipcode = reg_zipcode;
		this.homebred_or_import = homebred_or_import;
	}

	public String getVehicle_code() {
		return vehicle_code;
	}

	public void setVehicle_code(String vehicle_code) {
		this.vehicle_code = vehicle_code;
	}

	public String getVehicle_type() {
		return vehicle_type;
	}

	public void setVehicle_type(String vehicle_type) {
		this.vehicle_type = vehicle_type;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public String getDwelling_place() {
		return dwelling_place;
	}

	public void setDwelling_place(String dwelling_place) {
		this.dwelling_place = dwelling_place;
	}

	public String getVehicle_state() {
		return vehicle_state;
	}

	public void setVehicle_state(String vehicle_state) {
		this.vehicle_state = vehicle_state;
	}

	public String getProvide_cert_department() {
		return provide_cert_department;
	}

	public void setProvide_cert_department(String provide_cert_department) {
		this.provide_cert_department = provide_cert_department;
	}

	public String getUse_type() {
		return use_type;
	}

	public void setUse_type(String use_type) {
		this.use_type = use_type;
	}

	public String getManufacturer_model() {
		return manufacturer_model;
	}

	public void setManufacturer_model(String manufacturer_model) {
		this.manufacturer_model = manufacturer_model;
	}

	public String getObtain_quomodo() {
		return obtain_quomodo;
	}

	public void setObtain_quomodo(String obtain_quomodo) {
		this.obtain_quomodo = obtain_quomodo;
	}

	public String getVehicle_identify_code() {
		return vehicle_identify_code;
	}

	public void setVehicle_identify_code(String vehicle_identify_code) {
		this.vehicle_identify_code = vehicle_identify_code;
	}

	public String getEngine_code() {
		return engine_code;
	}

	public void setEngine_code(String engine_code) {
		this.engine_code = engine_code;
	}

	public String getVehicle_color() {
		return vehicle_color;
	}

	public void setVehicle_color(String vehicle_color) {
		this.vehicle_color = vehicle_color;
	}

	public String getFirst_reg_date() {
		return first_reg_date;
	}

	public void setFirst_reg_date(String first_reg_date) {
		this.first_reg_date = first_reg_date;
	}

	public String getProvide_cert_date() {
		return provide_cert_date;
	}

	public void setProvide_cert_date(String provide_cert_date) {
		this.provide_cert_date = provide_cert_date;
	}

	public String getProvide_terminate_date() {
		return provide_terminate_date;
	}

	public void setProvide_terminate_date(String provide_terminate_date) {
		this.provide_terminate_date = provide_terminate_date;
	}

	public String getInsurance_terminate_date() {
		return insurance_terminate_date;
	}

	public void setInsurance_terminate_date(String insurance_terminate_date) {
		this.insurance_terminate_date = insurance_terminate_date;
	}

	public String getConnect_tel() {
		return connect_tel;
	}

	public void setConnect_tel(String connect_tel) {
		this.connect_tel = connect_tel;
	}

	public String getCert_name() {
		return cert_name;
	}

	public void setCert_name(String cert_name) {
		this.cert_name = cert_name;
	}

	public String getCert_code() {
		return cert_code;
	}

	public void setCert_code(String cert_code) {
		this.cert_code = cert_code;
	}

	public String getReg_zipcode() {
		return reg_zipcode;
	}

	public void setReg_zipcode(String reg_zipcode) {
		this.reg_zipcode = reg_zipcode;
	}

	public String getHomebred_or_import() {
		return homebred_or_import;
	}

	public void setHomebred_or_import(String homebred_or_import) {
		this.homebred_or_import = homebred_or_import;
	}

	// Property accessors
	
}