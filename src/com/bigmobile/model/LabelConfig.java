package com.bigmobile.model;

public class LabelConfig implements java.io.Serializable{
	
	private Integer labelId;
	private String labelLevel;//标签级别
	private String labelName;//标签名称
	private String matchKeywords;//匹配关键词
	//private String matchUrl;//匹配URL
	private Integer parentId;//标签级别
	
	
	public Integer getLabelId() {
		return labelId;
	}
	public void setLabelId(Integer labelId) {
		this.labelId = labelId;
	}
	public String getLabelLevel() {
		return labelLevel;
	}
	public void setLabelLevel(String labelLevel) {
		this.labelLevel = labelLevel;
	}
	public String getLabelName() {
		return labelName;
	}
	public void setLabelName(String labelName) {
		this.labelName = labelName;
	}
	
	public String getMatchKeywords() {
		return matchKeywords;
	}
	public void setMatchKeywords(String matchKeywords) {
		this.matchKeywords = matchKeywords;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

}
