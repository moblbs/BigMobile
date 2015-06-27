package com.bigmobile.model;

/**
 * UserAccess entity. @author MyEclipse Persistence Tools
 */

public class UserAccess implements java.io.Serializable {

	// Fields

	private String id;
	private String mobile;
	private String site;
	private String ip;
	private String website;
	private String website2;
	private String accesstime;
	private String webtitle;
	private String websnapshot;
	private String webtactics;
	private String weburl;
	private String targetip;
	private String serviceport;
	private String accesstype;
	private String websitetype;
	private String action;

	// Constructors

	/** default constructor */
	public UserAccess() {
	}

	/** minimal constructor */
	public UserAccess(String id) {
		this.id = id;
	}

	/** full constructor */
	public UserAccess(String id, String mobile, String site, String ip,
			String website, String website2, String accesstime,
			String webtitle, String websnapshot, String webtactics,
			String weburl, String targetip, String serviceport,
			String accesstype, String websitetype, String action) {
		this.id = id;
		this.mobile = mobile;
		this.site = site;
		this.ip = ip;
		this.website = website;
		this.website2 = website2;
		this.accesstime = accesstime;
		this.webtitle = webtitle;
		this.websnapshot = websnapshot;
		this.webtactics = webtactics;
		this.weburl = weburl;
		this.targetip = targetip;
		this.serviceport = serviceport;
		this.accesstype = accesstype;
		this.websitetype = websitetype;
		this.action = action;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getSite() {
		return this.site;
	}

	public void setSite(String site) {
		this.site = site;
	}

	public String getIp() {
		return this.ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getWebsite() {
		return this.website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getWebsite2() {
		return this.website2;
	}

	public void setWebsite2(String website2) {
		this.website2 = website2;
	}

	public String getAccesstime() {
		return this.accesstime;
	}

	public void setAccesstime(String accesstime) {
		this.accesstime = accesstime;
	}

	public String getWebtitle() {
		return this.webtitle;
	}

	public void setWebtitle(String webtitle) {
		this.webtitle = webtitle;
	}

	public String getWebsnapshot() {
		return this.websnapshot;
	}

	public void setWebsnapshot(String websnapshot) {
		this.websnapshot = websnapshot;
	}

	public String getWebtactics() {
		return this.webtactics;
	}

	public void setWebtactics(String webtactics) {
		this.webtactics = webtactics;
	}

	public String getWeburl() {
		return this.weburl;
	}

	public void setWeburl(String weburl) {
		this.weburl = weburl;
	}

	public String getTargetip() {
		return this.targetip;
	}

	public void setTargetip(String targetip) {
		this.targetip = targetip;
	}

	public String getServiceport() {
		return this.serviceport;
	}

	public void setServiceport(String serviceport) {
		this.serviceport = serviceport;
	}

	public String getAccesstype() {
		return this.accesstype;
	}

	public void setAccesstype(String accesstype) {
		this.accesstype = accesstype;
	}

	public String getWebsitetype() {
		return this.websitetype;
	}

	public void setWebsitetype(String websitetype) {
		this.websitetype = websitetype;
	}

	public String getAction() {
		return this.action;
	}

	public void setAction(String action) {
		this.action = action;
	}

}