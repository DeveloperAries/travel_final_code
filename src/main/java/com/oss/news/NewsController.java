package com.oss.news;

import java.util.Date;
import java.util.List;

import com.alibaba.fastjson.JSON;
import com.eova.common.Easy;
import com.eova.common.base.BaseController;
import com.eova.common.utils.xx;
import com.eova.model.User;
import com.jfinal.aop.Before;
import com.jfinal.aop.Clear;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.tx.Tx;
import com.jfinal.upload.UploadFile;
import com.oss.model.Newactivity;
import com.oss.model.News;
import com.oss.model.Spot;
import com.oss.model.Strategy;
import com.oss.model.StrategyReply;
import com.oss.util.DateUtil;
import com.oss.util.DelTagsUtil;

/**
* @Description: 新闻资讯
* @author lang
* @date 2019年3月22日
*
*/
@Clear
public class NewsController extends BaseController{

	public void index(){
		render("content.html");
	}
	
	public void write(){
		render("write.html");
	}
	
	public void writeActivity(){
		render("writeActivity.html");
	}
	
	public void writeNews(){
		render("writeNews.html");
	}
	
	public void writeSpot(){
		render("writeSpot.html");
	}
	
	public void list(){
		render("list.html");
	}
	
	public void activityList(){
		render("activityList.html");
	}
	
	public void toMsg(){
		render("msg.html");
	}
	
	public void getImages(){
		UploadFile uf =	getFile();
		String name = uf.getFileName();
		String url = PropKit.use("default/domain.config").get("imgurl")+name;
		renderJson(url);
	}
	
	public void saveSpot(){
		Spot sg = getModel(Spot.class,"");
		String txt = DelTagsUtil.getTextFromHtml(sg.getContent());
		sg.setSimpleShow(txt.substring(0,txt.length() >= 128 ? 128: txt.length())+"...");
		sg.setPostTime(new Date());
		sg.save();
		renderJson(Easy.sucess());
	}
	
	public void saveNews(){
		News sg = getModel(News.class,"");
		String txt = DelTagsUtil.getTextFromHtml(sg.getContent());
		sg.setPostTime(new Date());
		sg.save();
		renderJson(Easy.sucess());
	}
	
	public void saveNewactivity(){
		Newactivity sg = getModel(Newactivity.class,"");
		String txt = DelTagsUtil.getTextFromHtml(sg.getContent());
		sg.setSimpleShow(txt.substring(0,txt.length() >= 128 ? 128: txt.length())+"...");
		sg.setPostTime(new Date());
		sg.save();
		renderJson(Easy.sucess());
	}
	
	public void getSpotList(){
		int pageNum = getParaToInt("pageNum");
		int pageSize = getParaToInt("pageSize");
		String sql = " from spot order by post_time DESC";
		Page<Spot> page = null;
		page = Spot.dao.paginate(pageNum, pageSize, "select * ", sql);
		renderJson(page);
	}
	
	public void getActivityList(){
		int pageNum = getParaToInt("pageNum");
		int pageSize = getParaToInt("pageSize");
		String sql = " from newactivity order by post_time DESC";
		Page<Newactivity> page = null;
		page = Newactivity.dao.paginate(pageNum, pageSize, "select * ", sql);
		renderJson(page);
	}
	
	public void getLastOne(){
		List<Newactivity> list = Newactivity.dao.find("select * from newactivity order by id desc LIMIT 0,1");
		renderJson(list);
	}
	
	public void getLastTwo(){
		List<Newactivity> list = Newactivity.dao.find("select * from newactivity order by id desc LIMIT 1,1");
		renderJson(list);
	}
	public void getLastThree(){
		List<Newactivity> list = Newactivity.dao.find("select * from newactivity order by id desc LIMIT 2,1");
		renderJson(list);
	}
	
	public void getLastFour(){
		List<Newactivity> list = Newactivity.dao.find("select * from newactivity order by id desc LIMIT 3,1");
		renderJson(list);
	}
	
	
	public void getASpot(){
		String id = getPara("id");
		Spot st = Spot.dao.findById(id);
		//setAttr("user", JSON.toJSON(r));//攻略发布者信息
		setAttr("spot", JSON.toJSON(st));//攻略内容s
		render("spotContent.html");
	}
	
	public void getANewactivity(){
		String id = getPara("id");
		Newactivity st = Newactivity.dao.findById(id);
		//setAttr("user", JSON.toJSON(r));//攻略发布者信息
		setAttr("newactivity", JSON.toJSON(st));//攻略内容
		render("activityContent.html");
	}
	
	public void getANews(){
		String id = getPara("id");
		News st = News.dao.findById(id);
		//setAttr("user", JSON.toJSON(r));//攻略发布者信息
		setAttr("news", JSON.toJSON(st));//攻略内容
		render("newsContent.html");
	}
	
	@Before(Tx.class)//事物
	public void publishComment(){
		StrategyReply sr =getModel(StrategyReply.class,"");
		sr.setReplyTime(new Date());
		sr.save();
		Strategy  sg = new  Strategy();
		sg.setId(sr.getStrategyId()).setPostTime(new Date());
		sg.update();
		renderJson(Easy.sucess());
	}
	
	/*public void setLaud(){
		int id = getParaToInt("id");
		if(xx.isAllEmpty(getUser())){
			renderJson(Easy.fail("请先登录~"));
			return;
		}
		StrategyUserItem z = StrategyUserItem.dao.findFirst("select * from strategy_user_item where strategy_id=? and user_id= ?",id,UID());
		if(!xx.isEmpty(z)){
			renderJson(Easy.fail("已点过赞啦~"));
			return;
		}
		StrategyUserItem sui = new StrategyUserItem();
		sui.setStrategyId(id);
		sui.setUserId(UID());
		sui.save();
		renderJson(Easy.sucess());
	}
	*/
	public void getRank(){
		int dateval = getParaToInt("dateval");
		Date end = new Date();
		Date start = DateUtil.addDay(end, -dateval);
		List<News> list = News.dao.find("select * from news where post_time > ? and post_time <= ?   LIMIT 0,10 ",start,end);
		renderJson(list);
	}
	
	public void endActivity(){
		Newactivity st =new Newactivity();
		st.setId(getParaToInt("id"));
		st.setStatus(getParaToInt("val"));
		st.update();
		renderJson(Easy.sucess());
	}

}
