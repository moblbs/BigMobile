package com.bigmobile.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.bigmobile.dao.ConfigDao;
import com.bigmobile.model.LabelConfig;
import com.bigmobile.model.LabelConfigUrl;
import com.bigmobile.model.LocationConfig;

@Repository("configDao")
public class ConfigDaoImpl implements ConfigDao {
	
	@Autowired
	private SqlMapClientTemplate sqlMapClient;
	
	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<LabelConfig> loadAllLabelConfig() {
		return (List<LabelConfig>)sqlMapClient.queryForList("config.loadAllLabelConfig");
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<LocationConfig> findChildLocationConfig() {
		return (List<LocationConfig>)sqlMapClient.queryForList("config.findChildLocationConfig");
	}

	@Override
	public List<LocationConfig> findByParentId(String paretid) {
		return (List<LocationConfig>)sqlMapClient.queryForList("config.findByParentId",paretid);
	}

	@Override
	public List<LocationConfig> findByParent() {
		return (List<LocationConfig>)sqlMapClient.queryForList("config.findByParent");
	}

	@Override
	public boolean updateLocation(LocationConfig location) {
		boolean temp=false;
		try {
			sqlMapClient.update("config.updateLocation",location);
			temp=true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return temp;
	}

	@Override
	public Integer saveLocation(LocationConfig location) {
		Integer locationId=0;
		try {
			locationId=(Integer)sqlMapClient.insert("config.saveLocation",location);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return locationId;
	}

	@Override
	public Integer nextLocationLevel(Integer parentid) {
		//查询一级城市中最大的值
		if(null==parentid || parentid==0){
			return (Integer)sqlMapClient.queryForObject("config.findNextParent");
		//查询二级城市中最大的值
		}else{
			return (Integer)sqlMapClient.queryForObject("config.findNextParentId");
		}
	}

	@Override
	public LocationConfig findByLocationId(String id) {
		return (LocationConfig)sqlMapClient.queryForObject("config.findByLocationId",id);
	}

	@SuppressWarnings({"deprecation"})
	@Override
	public boolean delLocation(Integer locationId) {
		boolean temp=false;
		try {
			 sqlMapClient.delete("config.delLocation",locationId);
			 temp=true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return temp;
	}

	
	//======================查询标签部分==================
	@Override
	public List<LabelConfig> findByLabelEvel(String labelEvel) {
		return (List<LabelConfig>)sqlMapClient.queryForList("config.findByLabelEvel",labelEvel);
	}

	@Override
	public List<LabelConfig> findByLabelParentId(String parentId) {
		return (List<LabelConfig>)sqlMapClient.queryForList("config.findByLabelParentId",parentId);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<String> findLabelEvelGroup() {
		return (List<String>)sqlMapClient.queryForList("config.findLabelEvelGroup");
	}

	@Override
	public Integer editLabel(LabelConfig labelConfig) {
		Integer labelId=0;
		try {
			if(null!=labelConfig.getLabelId()){
				sqlMapClient.update("config.updateLabel",labelConfig);
				labelId=labelConfig.getLabelId();
			}else{
				labelId=(Integer)sqlMapClient.insert("config.saveLabel",labelConfig);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return labelId;
	}

	@Override
	public LabelConfig findLabelById(Integer labelId) {
		return (LabelConfig)sqlMapClient.queryForObject("config.findLabelById",labelId);
	}

	@Override
	public boolean delLabel(Integer labelId) {
		boolean temp=false;
		try {
			sqlMapClient.delete("config.delLabel",labelId);
			temp=true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return temp;
	}

	
	//=========================标签匹配连接操作===================================
	@Override
	public List<LabelConfigUrl> findLabelUrlById(Integer labelId) {
		return (List<LabelConfigUrl>)sqlMapClient.queryForList("config.findLabelUrlById",labelId);
	}

	@Override
	public boolean saveLabelUrl(List<LabelConfigUrl> urls) {
		boolean temp=false;
		int index=0;
		try {
			for(LabelConfigUrl url:urls){
				sqlMapClient.insert("config.saveLabelUrl",url);
				index++;
			}
			System.out.println("共添加成功"+index+"条数据");
			temp=true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return temp;
	}

	@Override
	public boolean delLabelUrl(Integer labelId) {
		boolean temp=false;
		try {
			 sqlMapClient.delete("config.delLabelUrl",labelId);
			 temp=true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return temp;
	}

	@Override
	public boolean delLabelUrlByLabelId(Integer labelId) {
		boolean temp=false;
		try {
			 sqlMapClient.delete("config.delLabelUrlByLabelId",labelId);
			 temp=true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return temp;
	}
}
