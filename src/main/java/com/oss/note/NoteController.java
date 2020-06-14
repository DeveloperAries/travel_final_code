package com.oss.note;

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
import com.oss.model.NoteReply;
import com.oss.model.NoteUserItem;
import com.oss.model.Strategy;
import com.oss.util.DateUtil;
import com.oss.util.DelTagsUtil;

/**
 * @author Aries
 * @date 2019年4月14日
 */
@Clear
public class NoteController extends BaseController {

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

	public void saveNote() {
		Note note = getModel(Note.class, "");
		String txt = DelTagsUtil.getTextFromHtml(note.getContent());
		note.setPublishUser(UID());
		note.setPublishTime(new Date());
		note.setSimpleShow(txt.substring(0, txt.length() >= 128 ? 128 : txt.length()) + "...");
		note.setPostTime(new Date());
		User user = getUser();
		note.setPublishUsername(user.getStr("name"));
		note.save();
		renderJson(Easy.sucess());
	}

	public void getNoteList() {
		int pageNum = getParaToInt("pageNum");
		int pageSize = getParaToInt("pageSize");
		String searchValue = "%" + getPara("searchValue") + "%";
		String sql = " from note where status = 2 and ( title like ? or content like ?)  order by post_time DESC";

		Page<Note> page = null;
		if (xx.isEmpty(getPara("searchValue"))) {
			sql = " from note where status = 2 order by post_time DESC";
			page = Note.dao.paginate(pageNum, pageSize,
					"select *,(SELECT COUNT(*) laud FROM note_user_item WHERE note_id = note.id) mylaud", sql);
		} else {
			page = Note.dao.paginate(pageNum, pageSize,
					"select *,(SELECT COUNT(*) laud FROM note_user_item WHERE note_id = note.id) mylaud", sql,
					searchValue, searchValue);
		}
		renderJson(page);
	}

	public void getANote() {
		String id = getPara("id");
		Note nt = Note.dao.findById(id);
		Record r = Db.findById("user", nt.getPublishUser());
		List<NoteReply> list = NoteReply.dao.find("select * from note_reply where note_id = ?", id);
		setAttr("user", JSON.toJSON(r));// 帖子发布者信息
		setAttr("note", JSON.toJSON(nt));// 帖子内容
		setAttr("noteReplyList", JSON.toJSON(list));// 回复列表
		nt.setReadme(nt.getReadme() + 1);// 阅读量+1
		nt.update();
		render("content.html");
	}

	@Before(Tx.class) // 事物
	public void publishComment() {
		NoteReply nr = getModel(NoteReply.class, "");
		Note n = Note.dao.findById(nr.getNoteId());
		nr.setReplyTime(new Date());
		if (nr.getToReplyUserId() != null) {
			nr.save();
		} else {
			nr.setToReplyUserId(n.getPublishUser());
			nr.setToReplyUserName(n.getPublishUsername());
			nr.save();
		}
		Note nt = new Note();
		nt.setId(nr.getNoteId()).setPostTime(new Date());
		nt.update();
		User user = getUser();
		if (n.getPublishUser() != UID()) {
			Massage m1 = new Massage();
			m1.setUserId(n.getPublishUser());
			m1.setFrom(UID());
			m1.setFromname(user.getStr("name"));
			m1.setAbout(nr.getNoteId());
			m1.setContent(nr.getContent());
			
			m1.setCreatetime(new Date());
			m1.setStatus("未读");
			m1.setType("交流模块");
			m1.save();
			if(nr.getPid()!=0){
				if(nr.getToReplyUserId()!=UID()){
					if(nr.getToReplyUserId()!=n.getPublishUser()){
						Massage m2 = new Massage();
						m2.setUserId(nr.getToReplyUserId());
						m2.setFrom(UID());
						m2.setFromname(user.getStr("name"));
						m2.setAbout(nr.getNoteId());
						m2.setContent(nr.getContent());
						m2.setCreatetime(new Date());
						m2.setStatus("未读");
						m2.setType("交流模块");
						m2.save();
					}
					else{
						renderJson(Easy.sucess());
					}
				}
				else{
					renderJson(Easy.sucess());
				}
			}
			else{
				renderJson(Easy.sucess());
			}
			
		}
		else{
			if(nr.getPid()!=0){
				if(nr.getToReplyUserId()!=UID()){
					if(nr.getToReplyUserId()!=n.getPublishUser()){
						Massage m2 = new Massage();
						m2.setUserId(nr.getToReplyUserId());
						m2.setFrom(UID());
						m2.setFromname(user.getStr("name"));
						m2.setAbout(nr.getNoteId());
						m2.setContent(nr.getContent());
						m2.setCreatetime(new Date());
						m2.setStatus("未读");
						m2.setType("交流模块");
						m2.save();
					}
					else{
						renderJson(Easy.sucess());
					}
				}
				else{
					renderJson(Easy.sucess());
				}
			}
			else{
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
		NoteUserItem z = NoteUserItem.dao.findFirst("select * from note_user_item where note_id=? and user_id= ?", id,
				UID());
		if (!xx.isEmpty(z)) {
			renderJson(Easy.fail("已点过赞啦~"));
			return;
		}
		NoteUserItem sui = new NoteUserItem();
		sui.setNoteId(id);
		sui.setUserId(UID());
		sui.save();
		Note n = Note.dao.findById(id);
		n.setLaud(n.getLaud() + 1);// 点赞量+1
		n.update();
		if (n.getPublishUser() != UID()) {
			Massage m = new Massage();
			m.setUserId(n.getPublishUser());
			m.setFrom(UID());
			User user = getUser();
			m.setFromname(user.getStr("name"));
			m.setAbout(id);
			m.setContent("点赞");
			m.setCreatetime(new Date());
			m.setStatus("未读");
			m.setType("交流模块");
			m.save();
		}
		renderJson(Easy.sucess());
	}

	public void getRank() {
		int dateval = getParaToInt("dateval");
		Date end = new Date();
		Date start = DateUtil.addDay(end, -dateval);
		List<Note> list = Note.dao.find(
				"select * from note where publish_time > ? and publish_time <= ?  and status = 2 order by `readme` LIMIT 0,10 ",
				start, end);
		renderJson(list);
	}

	public void getLastOne() {
		List<Note> list = Note.dao.find("select * from note order by id desc LIMIT 0,1");
		renderJson(list);
	}

	public void getLastTwo() {
		List<Note> list = Note.dao.find("select * from note order by id desc LIMIT 1,1");
		renderJson(list);
	}

	public void getLastThree() {
		List<Note> list = Note.dao.find("select * from note order by id desc LIMIT 2,1");
		renderJson(list);
	}

	public void getLastFour() {
		List<Note> list = Note.dao.find("select * from note order by id desc LIMIT 3,1");
		renderJson(list);
	}

	public void shNote() {
		Note st = new Note();
		st.setId(getParaToInt("id"));
		st.setStatus(getParaToInt("val"));
		st.update();
		Note s = Note.dao.findById(getParaToInt("id"));
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
		m2.setType("交流模块");
		m2.save();
		renderJson(Easy.sucess());
	}
}
