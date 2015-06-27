package com.bigmobile.dao;

import java.util.List;

import com.bigmobile.model.LabelConfig;
import com.bigmobile.model.LabelConfigUrl;
import com.bigmobile.model.LocationConfig;

public interface ConfigDao {
	public List<LocationConfig> findChildLocationConfig();
	public List<LocationConfig> findByParentId(String paretid);
	public List<LocationConfig> findByParent();
	public boolean updateLocation(LocationConfig location);
	public Integer saveLocation(LocationConfig location);
	public Integer nextLocationLevel(Integer parentid);
	public LocationConfig findByLocationId(String id);
	public boolean delLocation(Integer locationId);
	
	//查询标签部分
	public List<LabelConfig> loadAllLabelConfig();
	public List<LabelConfig> findByLabelEvel(String labelEvel);
	public List<LabelConfig> findByLabelParentId(String parentId);
	public List<String> findLabelEvelGroup();
	public Integer editLabel(LabelConfig labelConfig);
	public LabelConfig findLabelById(Integer labelId);
	public boolean delLabel(Integer labelId);
	
	public List<LabelConfigUrl> findLabelUrlById(Integer labelId);
	public boolean saveLabelUrl(List<LabelConfigUrl> urls);
	public boolean delLabelUrl(Integer labelId);
	public boolean delLabelUrlByLabelId(Integer labelId);

}
