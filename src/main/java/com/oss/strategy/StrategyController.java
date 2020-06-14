package com.oss.strategy;

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
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.plugin.activerecord.tx.Tx;
import com.jfinal.upload.UploadFile;
import com.oss.model.Massage;
import com.oss.model.Note;
import com.oss.model.Strategy;
import com.oss.model.StrategyReply;
import com.oss.model.StrategyUserItem;
import com.oss.util.DateUtil;
import com.oss.util.DelTagsUtil;

/**
 * @author lang
 * @date 2019年3月14日
 */

@Clear
public class StrategyController extends BaseController {

	public void index() {
		render("content.html");
	}

	public void list() {
		render("list.html");
	}

	public void toWrite() {
		render("write.html");
	}

	public void toMsg() {
		render("msg.html");
	}

	public void getImages() {
		UploadFile uf = getFile();
		String name = uf.getFileName();
		String url = PropKit.use("default/domain.config").get("imgurl") + name;
		renderJson(url);
	}

	public void saveStrategy() {
		Strategy sg = getModel(Strategy.class, "");
		String txt = DelTagsUtil.getTextFromHtml(sg.getContent());
		sg.setPublishUser(UID());
		sg.setPublishTime(new Date());
		sg.setSimpleShow(txt.substring(0, txt.length() >= 128 ? 128 : txt.length()) + "...");
		sg.setPostTime(new Date());
		sg.setMainAddress(xx.isEmpty(sg.getAddress()) ? "" : sg.getAddress().split("-")[0]);
		User user = getUser();
		sg.setPublishUsername(user.getStr("name"));
		sg.save();
		renderJson(Easy.sucess());
	}

	public void getStrategyList() {
		int pageNum = getParaToInt("pageNum");
		int pageSize = getParaToInt("pageSize");
		String searchValue = "%" + getPara("searchValue") + "%";
		String sql = " from strategy where status = 2 and ( address like ? or title like ? or content like ?)  order by post_time DESC";

		Page<Strategy> page = null;
		if (xx.isEmpty(getPara("searchValue"))) {
			sql = " from strategy where status = 2 order by post_time DESC";
			page = Strategy.dao.paginate(pageNum, pageSize,
					"select *,(SELECT COUNT(*) laud FROM strategy_user_item WHERE strategy_id = strategy.id) mylaud",
					sql);
		} else {
			page = Strategy.dao.paginate(pageNum, pageSize,
					"select *,(SELECT COUNT(*) laud FROM strategy_user_item WHERE strategy_id = strategy.id) mylaud",
					sql, searchValue, searchValue, searchValue);
		}
		renderJson(page);
	}

	public void getAStrategy() {
		String id = getPara("id");
		Strategy st = Strategy.dao.findById(id);
		Record r = Db.findById("user", st.getPublishUser());
		List<StrategyReply> list = StrategyReply.dao.find("select * from strategy_reply where strategy_id = ?", id);
		setAttr("user", JSON.toJSON(r));// 攻略发布者信息
		setAttr("strategy", JSON.toJSON(st));// 攻略内容
		setAttr("strategyReplyList", JSON.toJSON(list));// 回复列表
		st.setReadme(st.getReadme() + 1);// 阅读量+1
		st.update();
		render("content.html");
	}

	@Before(Tx.class) // 事物
	public void publishComment() {
		StrategyReply sr = getModel(StrategyReply.class, "");
		Strategy n = Strategy.dao.findById(sr.getStrategyId());
		//sr.getContent()
		sr.setReplyTime(new Date());
		if (sr.getToReplyUser() != null) {
			sr.save();
		} else {
			sr.setToReplyUser(n.getPublishUser());
			sr.setToReplyUsername(n.getPublishUsername());
			sr.save();
		}
		Strategy sg = new Strategy();
		sg.setId(sr.getStrategyId()).setPostTime(new Date());
		sg.update();
		User user = getUser();
		if (n.getPublishUser() != UID()) {
			Massage m1 = new Massage();
			m1.setUserId(n.getPublishUser());
			m1.setFrom(UID());
			m1.setFromname(user.getStr("name"));
			m1.setAbout(sr.getStrategyId());
			m1.setContent(sr.getContent());
			m1.setCreatetime(new Date());
			m1.setStatus("未读");
			m1.setType("攻略模块");
			m1.save();
			if (sr.getPid() != 0) {
				if (sr.getToReplyUser() != UID()) {
					if (sr.getToReplyUser() != n.getPublishUser()) {
						Massage m2 = new Massage();
						m2.setUserId(sr.getToReplyUser());
						m2.setFrom(UID());
						m2.setFromname(user.getStr("name"));
						m2.setAbout(sr.getStrategyId());
						m2.setContent(sr.getContent());
						m2.setCreatetime(new Date());
						m2.setStatus("未读");
						m2.setType("攻略模块");
						m2.save();
					} else {
						renderJson(Easy.sucess());
					}
				} else {
					renderJson(Easy.sucess());
				}
			} else {
				renderJson(Easy.sucess());
			}

		} else {
			if (sr.getPid() != 0) {
				if (sr.getToReplyUser() != UID()) {
					if (sr.getToReplyUser() != n.getPublishUser()) {
						Massage m2 = new Massage();
						m2.setUserId(sr.getToReplyUser());
						m2.setFrom(UID());
						m2.setFromname(user.getStr("name"));
						m2.setAbout(sr.getStrategyId());
						m2.setContent(sr.getContent());
						m2.setCreatetime(new Date());
						m2.setStatus("未读");
						m2.setType("攻略模块");
						m2.save();
					} else {
						renderJson(Easy.sucess());
					}
				} else {
					renderJson(Easy.sucess());
				}
			} else {
				renderJson(Easy.sucess());
			}
		}

	}

	public void setLaud() {
		int id = getParaToInt("id");
		if (xx.isAllEmpty(getUser())) {
			renderJson(Easy.fail("请先登录~"));
			return;
		}
		StrategyUserItem z = StrategyUserItem.dao
				.findFirst("select * from strategy_user_item where strategy_id=? and user_id= ?", id, UID());
		if (!xx.isEmpty(z)) {
			renderJson(Easy.fail("已点过赞啦~"));
			return;
		}
		StrategyUserItem sui = new StrategyUserItem();
		sui.setStrategyId(id);
		sui.setUserId(UID());
		sui.save();
		Strategy s = Strategy.dao.findById(id);
		s.setLaud(s.getLaud() + 1);// 点赞量+1
		s.update();
		if (s.getPublishUser() != UID()) {
			Massage m = new Massage();
			m.setUserId(s.getPublishUser());
			m.setFrom(UID());
			User user = getUser();
			m.setFromname(user.getStr("name"));
			m.setAbout(id);
			m.setContent("点赞");
			m.setCreatetime(new Date());
			m.setStatus("未读");
			m.setType("攻略模块");
			m.save();
		}
		renderJson(Easy.sucess());
	}

	public void getRank() {
		int dateval = getParaToInt("dateval");
		Date end = new Date();
		Date start = DateUtil.addDay(end, -dateval);
		List<Strategy> list = Strategy.dao.find(
				"select * from strategy where publish_time > ? and publish_time <= ?  and status = 2 order by `readme` LIMIT 0,10 ",
				start, end);
		renderJson(list);
	}

	public void shStrategy() {
		Strategy st = new Strategy();
		st.setId(getParaToInt("id"));
		st.setStatus(getParaToInt("val"));
		st.update();
		Strategy s = Strategy.dao.findById(getParaToInt("id"));
		Massage m2 = new Massage();
		User user = getUser();
		m2.setUserId(s.getPublishUser());
		m2.setFrom(UID());
		m2.setFromname(user.getStr("name"));
		m2.setAbout(s.getId());
		if (getParaToInt("val") == 2) {
			m2.setContent("交流贴审核通过");
		} else if (getParaToInt("val") == 3) {
			m2.setContent("交流贴审核未通过");
		}
		m2.setCreatetime(new Date());
		m2.setStatus("未读");
		m2.setType("攻略模块");
		m2.save();
		renderJson(Easy.sucess());
	}
}
