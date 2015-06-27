package com.bigmobile.model;

public class LabelConfigUrl implements java.io.Serializable{
	private Integer id;
	private String matchUrl; 
	private Integer labelId;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMatchUrl() {
		return matchUrl;
	}
	public void setMatchUrl(String matchUrl) {
		this.matchUrl = matchUrl;
	}
	public Integer getLabelId() {
		return labelId;
	}
	public void setLabelId(Integer labelId) {
		this.labelId = labelId;
	}
	public LabelConfigUrl(String matchUrl, Integer labelId) {
		super();
		this.matchUrl = matchUrl;
		this.labelId = labelId;
	}
	public LabelConfigUrl() {
		super();
	}
	
}
