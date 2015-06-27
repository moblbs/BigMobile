package com.bigmobile.model;

public class LocationConfig implements java.io.Serializable{
	
	private Integer locationId;
	private String locationLevel;//地域等级
	private String locationName;//地域名称
	private Integer parentId;//地域父级id 0：表示一级
	public Integer getLocationId() {
		return locationId;
	}
	public void setLocationId(Integer locationId) {
		this.locationId = locationId;
	}
	public String getLocationLevel() {
		return locationLevel;
	}
	public void setLocationLevel(String locationLevel) {
		this.locationLevel = locationLevel;
	}
	public String getLocationName() {
		return locationName;
	}
	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	
}
