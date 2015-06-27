package com.bigmobile.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bigmobile.dao.ConfigDao;
import com.bigmobile.model.LabelConfig;
import com.bigmobile.model.LabelConfigUrl;
import com.bigmobile.model.LocationConfig;
import com.bigmobile.service.ConfigService;

@Service("configService")
public class ConfigServiceImpl implements ConfigService {

	@Resource(name="configDao") 
	private ConfigDao configDao;
	
	@Override
	public List<LabelConfig> loadAllLabelConfig() {
		return configDao.loadAllLabelConfig();
	}

	@Override
	public List<LocationConfig> findChildLocationConfig() {
		return configDao.findChildLocationConfig();
	}

	@Override
	public List<LocationConfig> findByParentId(String paretid) {
		return configDao.findByParentId(paretid);
	}

	@Override
	public List<LocationConfig> findByParent() {
		return configDao.findByParent();
	}

	@Override
	public boolean updateLocation(LocationConfig location) {
		return configDao.updateLocation(location);
	}

	@Override
	public Integer saveLocation(LocationConfig location) {
		return configDao.saveLocation(location);
	}

	@Override
	public Integer nextLocationLevel(Integer parentid) {
		return configDao.nextLocationLevel(parentid);
	}

	@Override
	public LocationConfig findByLocationId(String id) {
		return configDao.findByLocationId(id);
	}

	@Override
	public boolean delLocation(Integer locationId) {
		return configDao.delLocation(locationId);
	}

	
	//======================查询标签部分======================
	@Override
	public List<LabelConfig> findByLabelEvel(String labelEvel) {
		return configDao.findByLabelEvel(labelEvel);
	}

	@Override
	public List<LabelConfig> findByLabelParentId(String parentId) {
		return configDao.findByLabelParentId(parentId);
	}

	@Override
	public List<String> findLabelEvelGroup() {
		return configDao.findLabelEvelGroup();
	}

	@Override
	public Integer editLabel(LabelConfig labelConfig) {
		return configDao.editLabel(labelConfig);
	}

	@Override
	public LabelConfig findLabelById(Integer labelId) {
		return configDao.findLabelById(labelId);
	}

	@Override
	public boolean delLabel(Integer labelId) {
		return configDao.delLabel(labelId);
	}

	@Override
	public List<LabelConfigUrl> findLabelUrlById(Integer labelId) {
		return configDao.findLabelUrlById(labelId);
	}

	@Override
	public boolean saveLabelUrl(List<LabelConfigUrl> urls) {
		return configDao.saveLabelUrl(urls);
	}

	@Override
	public boolean delLabelUrl(Integer labelId) {
		return configDao.delLabelUrl(labelId);
	}

	@Override
	public boolean delLabelUrlByLabelId(Integer labelId) {
		return configDao.delLabelUrlByLabelId(labelId);
	}

}
