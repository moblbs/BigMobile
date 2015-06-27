package com.bigmobile.web;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import oracle.net.aso.i;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bigmobile.model.*;
import com.bigmobile.service.ConfigService;
import com.bigmobile.util.Const;

@Controller
@RequestMapping("/config.do")
public class ConfigController {
	
	protected static Logger logger = Logger.getLogger(ConfigController.class);// 日志
	@Autowired
	public ConfigService configService;
	
	/** 
	* @Description: TODO(加载所有一级地域配置信息) 
	* @author 谭志伟
	* @date 2015年6月9日 下午11:20:05 
	*/ 
	@RequestMapping(params="method=loadLocation")
	public String loadLocation(HttpServletRequest request,Model model){
		List<LocationConfig> parent = configService.findByParent();
		List<LocationConfig> child = configService.findChildLocationConfig();
		model.addAttribute("parent", parent);
		model.addAttribute("child", child);
		request.getSession().setAttribute(Const.LOCATION_PARENT, parent);
		request.getSession().setAttribute(Const.LOCATION_CHILD, child);
		return "config/location_tree";
	}
	
	
	/** 
	* @Description: TODO(根据paretid加载所有地域配置信息) 
	* @author 谭志伟
	* @date 2015年6月9日 下午11:20:05 
	*/ 
	@RequestMapping(params="method=refreshLocation")
	public void refreshLocation(HttpServletRequest request,HttpServletResponse response){
		String paretid=request.getParameter("paretId");
		List<LocationConfig> list=null;
		PrintWriter out=null;
		try {
			response.setContentType("text/html;charset=utf-8");
			out=response.getWriter();
			if(StringUtils.isNotEmpty(paretid)){
				list=configService.findByParentId(paretid);
				out.print(JSONArray.fromObject(list).toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			out.close();
		}
		
	}
	
	
	
	/** 
	* @Title: forward 
	* @Description: TODO(前往对应添加位置信息页面) 
	* @author 谭志伟 
	*/ 
	@SuppressWarnings("unchecked")
	@RequestMapping(params="method=toPage")
	public  String toPage(HttpServletRequest request,Integer parentId,Model model){
		List<LocationConfig> parent=(List<LocationConfig>)
				request.getSession().getAttribute(Const.LOCATION_PARENT);
		List<LocationConfig> child=(List<LocationConfig>)
				request.getSession().getAttribute(Const.LOCATION_CHILD);

		String id=request.getParameter("id");
		String flag=request.getParameter("flag");
		String title="添加位置分类信息";
		if("1".equals(flag)){
			title="修改位置分类信息";
			LocationConfig location= configService.findByLocationId(id); 
			model.addAttribute("location", location);
		}else if("2".equals(flag)){
		    title="添加省会城市信息";
			model.addAttribute("parent", parent);
		    model.addAttribute("parentId",parentId);
		}else if("3".equals(flag)){
			title="修改省会城市信息";
			//查询所有父类
			model.addAttribute("parent", parent);
			LocationConfig location= configService.findByLocationId(id); 
			model.addAttribute("location", location);
		}else if("4".equals(flag)){
			title="添加地级市区信息";
		    model.addAttribute("parentId",parentId);
			model.addAttribute("child", child);
		}else if("5".equals(flag)){
			title="修改地级市区信息";
			LocationConfig location= configService.findByLocationId(id); 
			model.addAttribute("location", location);
			model.addAttribute("child", child);
		}
		model.addAttribute("title", title);
		model.addAttribute("flag", flag);
		return "config/show/edit_location";
	}
	
	
	/** 
	* @Description: TODO(添加或者修改位置信息) 
	* @author 谭志伟
	* @date 2015年6月14日 下午12:12:50 
	*/ 
	@RequestMapping(params="method=editLocation")
	public String editLocation(HttpServletRequest request,LocationConfig location){
		//修改
		if(null!=location.getLocationId()){
			if(configService.updateLocation(location)){
				//refreshLocation(request,location,"update");
				System.out.println("修改成功！");
			}
		//添加
		}else{
			//一级城市中，或者二级城市中的下一个顺序
			Integer locationLevel=configService.nextLocationLevel(location.getParentId());
			locationLevel=(null!=locationLevel) ? locationLevel:0;
			location.setLocationLevel(locationLevel.toString());
			Integer locationId=configService.saveLocation(location);
			if(locationId>0){//添加成功返回添加ID
				//location.setLocationId(locationId);
				//refreshLocation(request,location,"save");
				System.out.println("新添加的位置ID="+location.getLocationId());
			}
		}
		return "redirect:/config.do?method=loadLocation";
	}
	
	/** 
	* @Description: TODO(跟新保存在session 中的信息) 
	* @author 谭志伟
	* @date 2015年6月25日 下午3:27:35 
	*/ 
	@SuppressWarnings({"unchecked" })
	private void refreshLocation(HttpServletRequest request,LocationConfig location,String flag){
		
		 Object childObject=request.getSession().getAttribute(Const.LOCATION_CHILD);
		 Object parentObject=request.getSession().getAttribute(Const.LOCATION_PARENT);
		 
		 List<LocationConfig> parent=null!=childObject ? (List<LocationConfig>)parentObject:null;
		 List<LocationConfig> child=null!=childObject ? (List<LocationConfig>)childObject:null;
		 
		 if("save".equals(flag)){//添加
			 if(location.getParentId()==0)  parent.add(location);
			 else  child.add(location);
		 }else{//修改
			 LocationConfig lc=null;
			 boolean parent_flag=false,child_flag=false;
			 for(LocationConfig l:parent){
				 if(l.getLocationId().equals(location.getLocationId())){
					 lc=l;
					 parent_flag=true;
					 break;
				 }
			 }
			 for(LocationConfig l:child){
				 if(l.getLocationId().equals(location.getLocationId())){
					 child_flag=true;
					 lc=l;
					 break;
				 }
			 }
			 //移除以前的，添加修改后的
			 if(parent_flag) {
				 parent.remove(lc);
				 parent.add(location);
			 }
			 if(child_flag) {
				 child.remove(lc);
				 child.add(location);
			 }
		 }
		 request.getSession().setAttribute(Const.LOCATION_PARENT, parent);
		 request.getSession().setAttribute(Const.LOCATION_CHILD, child);
	}	
	
	
	/** 
	* @Description: TODO(删除城市位置信息) 
	* @author 谭志伟
	* @date 2015年6月14日 下午4:18:11 
	*/ 
	@RequestMapping(params="method=delLocation")
	public void delLocation(HttpServletRequest request,HttpServletResponse response,
		Integer locationId){
	    PrintWriter out=null;
	    try {
			 response.setContentType("text/html;charset=utf-8");
	    	 out=response.getWriter();
	    	 if(configService.delLocation(locationId)){
	    		// refreshLocationList(request,locationId);
	    		 out.print("操作成功！");
	    	 }else{
	    		 out.print("操作失败！");
	    	 }
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(null!=out) out.close();
		}
	}
	
	
	
	
	/** 
	* locationId:对应需要更新的位置ID
	*/ 
	private void refreshLocationList(HttpServletRequest request,Integer locationId){
		 //移除对应session中的对象信息
		 Object childObject=request.getSession().getAttribute(Const.LOCATION_CHILD);
		 Object parentObject=request.getSession().getAttribute(Const.LOCATION_PARENT);
		 
		 List<LocationConfig> parent=null!=childObject ? (List<LocationConfig>)parentObject:new ArrayList<LocationConfig>();
		 List<LocationConfig> child=null!=childObject ? (List<LocationConfig>)childObject:new ArrayList<LocationConfig>();
		
		 //遍历时不能删除集合中的元素，所有先保存遍历完毕再删除
		 LocationConfig lc=null;
		 boolean parent_flag=false,child_flag=false;
	 	//删除父节点
		for(LocationConfig l:parent){
			 if(l.getLocationId().equals(locationId)){
				 System.out.println("找到删除的了parent"+l.getLocationName());
				 lc=l;
				 parent_flag=true;
				 break;
			 }
		 }
		 for(LocationConfig l:child){
			 if(l.getLocationId().equals(locationId)){
				 System.out.println("找到删除的了child"+l.getLocationName());
				 lc=l;
				 child_flag=true;
				 break;
			 }
		 }
		 if(parent_flag) parent.remove(lc);
		 if(child_flag) child.remove(lc);
		
		 request.getSession().setAttribute(Const.LOCATION_PARENT, parent);
		 request.getSession().setAttribute(Const.LOCATION_CHILD, child);
		 
		 /*
		  * 
		  *  //移除该对象
		 if(parent.contains(location)){
			 parent.remove(location);
			 request.getSession().setAttribute(Const.LOCATION_PARENT, parent);
		 }
		 if(child.contains(location)){
			 child.remove(location);
			 request.getSession().setAttribute(Const.LOCATION_CHILD, child);
		 }
		  * 
		  * //删除父节点
		 if(grade.intValue()==0){
			//parent = configService.findByParent();
		//删除的是子节点
		 }else{
		   //  child = configService.findChildLocationConfig(); 
		 }*/
	}
	
	
	
	
	//===============================标签管理部分===============================
	
	/** 
	* @Description: TODO(跳转到标签管理首页) 
	* @author 谭志伟
	* @date 2015年6月16日 下午10:43:10 
	*/ 
	@RequestMapping(params="method=loadLabel")
	public String loadLabel(HttpServletRequest request,HttpServletResponse response,Model model){
		List<LabelConfig> labelList1=configService.findByLabelEvel("1");//加载根标签
		List<LabelConfig> labelList2=configService.findByLabelEvel("2");//加载二级标签
		model.addAttribute("labelList1",labelList1);
		model.addAttribute("labelList2",labelList2);
		return "config/label_tree";
	}
	
	
	/** 
	* @Description: TODO(前往添加或者是修改页面) 
	* @author 谭志伟
	* @date 2015年6月25日 下午11:40:48
	*/ 
	@RequestMapping(params="method=showPage")
	public String showPage(HttpServletRequest request,HttpServletResponse response,
			Integer labelId,Integer parentId,String labelLevel,Model model){
		
		if(labelId!=0){//修改
			//查询对应url
			LabelConfig label=configService.findLabelById(labelId);
			model.addAttribute("label", label);
			List<LabelConfigUrl> urls=configService.findLabelUrlById(labelId);
			model.addAttribute("urls", urls);
			
			//等级分组查询(不是根标签)
			if(label.getParentId()!=0){
				List<LabelConfig> parentLabel=configService.findByLabelEvel(labelLevel);
    			model.addAttribute("parentLabel",parentLabel);
			}
		}else{
     		if(StringUtils.isNotEmpty(labelLevel)){
     			//标签等级
         		model.addAttribute("labelLevel",(Integer.valueOf(labelLevel)+1)+"");
         		model.addAttribute("parentId",parentId);
         		//父级别标签对象
         		List<LabelConfig> parentLabel=configService.findByLabelEvel(labelLevel);
    			model.addAttribute("parentLabel",parentLabel);
     		}
		}
		//查询标签类型有哪些
		List<String> labelType=configService.findLabelEvelGroup();
 		model.addAttribute("labelType",labelType);
		return "config/show/edit_lable";
	}
	
	/** 
	* @Description: TODO(根据标签等级类型来查询对应标签) 
	* @author 谭志伟
	* @date 2015年6月16日 下午11:21:07 
	*/ 
	@RequestMapping(params="method=findByLabelEvel")
	public void findByLabelEvel(HttpServletRequest request,HttpServletResponse response){
		String labelLevel=request.getParameter("labelLevel");
		List<LabelConfig> list=null;
		PrintWriter out=null;
		try {
			response.setContentType("text/html;charset=utf-8");
			out=response.getWriter();
			if(StringUtils.isNotEmpty(labelLevel)){
				list=configService.findByLabelEvel(labelLevel);
				out.print(JSONArray.fromObject(list).toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			out.close();
		}
	}
	
	
	
	/** 
	* @Description: TODO(根据父Id来加载查询对应页面下的字标签信息，刷新加载标签信息) 
	*/ 
	@RequestMapping(params="method=refreshLoadLabel")
	public void refreshLoadLabel(HttpServletRequest request,HttpServletResponse response){
		String labelId=request.getParameter("labelId");
		List<LabelConfig> list=null;
		PrintWriter out=null;
		try {
			response.setContentType("text/html;charset=utf-8");
			out=response.getWriter();
			if(StringUtils.isNotEmpty(labelId)){
				list=configService.findByLabelParentId(labelId);
				out.print(JSONArray.fromObject(list).toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			out.close();
		}
	}
	
	
	/** 
	* @Description: TODO(添加或修改标签信息) 
	* @author 谭志伟
	* @date 2015年6月17日 下午11:11:39 
	*/ 
	@RequestMapping(params="method=editLabel")
	public String editLabel(HttpServletRequest request,HttpServletResponse response,
			LabelConfig labelConfig){
		Integer labelId=labelConfig.getLabelId();
		String[] matchUrls=request.getParameterValues("matchUrl");
		List<LabelConfigUrl> urls=new ArrayList<LabelConfigUrl>();
		Integer id=configService.editLabel(labelConfig);
		if(id>0){
			for(String matchUrl:matchUrls){
				System.out.println("matchUrl="+matchUrl);
				if(StringUtils.isNotEmpty(matchUrl)) urls.add(new LabelConfigUrl(matchUrl,id));
			}
			System.out.println("操作成功！labelConfig.getLabelId()==="+labelConfig.getLabelId());
			
			if(urls.size()>0){
				//修改信息时，先删除对应url，再来添加对应url
				boolean result=false;
				if(null!=labelId) result=configService.delLabelUrl(labelId);
				else  result=true;
				//添加url(修改时，先删除成功了再来添加url信息)
				if(result) result=configService.saveLabelUrl(urls);
				System.out.println("result="+result);
			}
		}
		return "redirect:/config.do?method=loadLabel";
	}
	
	/** 
	* @Description: TODO(根据id查询标签对象信息) 
	* @author 谭志伟
	* @date 2015年6月17日 下午11:48:56 
	*/ 
	@RequestMapping(params="method=findLabelById")
	public String findLabelById(HttpServletRequest request,Integer labelId,Model model){
		LabelConfig label=configService.findLabelById(labelId);
		//查询标签类型
		List<String> labelType=configService.findLabelEvelGroup();
		//查询当前修改对应的父级别标签对象类型集合
		if(label.getParentId()!=0){//不是根节点
			LabelConfig l=configService.findLabelById(label.getParentId());
			List<LabelConfig> parentLabel=configService.findByLabelEvel(l.getLabelLevel());
			model.addAttribute("parentLabel",parentLabel);
		}
		model.addAttribute("label",label);
		model.addAttribute("labelType",labelType);
		
		return "config/show/label_info";
	}
	
	
	
	/** 
	* @Description: TODO(删除一个或者多个标签信息) 
	* @author 谭志伟
	* @date 2015年6月17日 下午11:11:39 
	*/ 
	@RequestMapping(params="method=delLabel")
	public void delLabel(HttpServletRequest request,HttpServletResponse response,
			Integer labelId){
		PrintWriter out=null;
		try {
			response.setContentType("text/html;charset=utf-8");
			out=response.getWriter();
			if(configService.delLabel(labelId)){
				//删除标签对应的url连接
				System.out.println(configService.delLabelUrlByLabelId(labelId));
				out.print("操作成功!");
			}else{
				out.print("操作失败!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(null!=out) out.close();
		}
	}
	
	
	@RequestMapping(params="method=removeSession")
	public String removeSession(HttpServletRequest request){
		request.getSession().removeAttribute(Const.LOCATION_CHILD);
		request.getSession().removeAttribute(Const.LOCATION_PARENT);
		return "redirect:/config.do?method=loadLocation";
	}
	
	
	
	
	
	
}
