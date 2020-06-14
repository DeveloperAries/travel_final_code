package com.oss.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings({"serial", "unchecked"})
public abstract class BaseNoteReply<M extends BaseNoteReply<M>> extends Model<M> implements IBean {

	public M setId(java.lang.Integer id) {
		set("id", id);
		return (M)this;
	}
	
	public java.lang.Integer getId() {
		return getInt("id");
	}

	public M setNoteId(java.lang.Integer noteId) {
		set("note_id", noteId);
		return (M)this;
	}
	
	public java.lang.Integer getNoteId() {
		return getInt("note_id");
	}

	public M setReplyUserId(java.lang.Integer replyUserId) {
		set("reply_user", replyUserId);
		return (M)this;
	}
	
	public java.lang.Integer getReplyUserId() {
		return getInt("reply_user");
	}
	public M setReplyUserName(java.lang.String replyUserName) {
		set("reply_username", replyUserName);
		return (M)this;
	}
	
	public String getReplyUserName() {
		return getStr("reply_username");
	}
	public M setToReplyUserId(java.lang.Integer toReplyUserId) {
		set("to_reply_user", toReplyUserId);
		return (M)this;
	}
	
	public java.lang.Integer getToReplyUserId() {
		return getInt("to_reply_user");
	}
	public M setToReplyUserName(java.lang.String toReplyUserName) {
		set("to_reply_username", toReplyUserName);
		return (M)this;
	}
	
	public String getToReplyUserName() {
		return getStr("to_reply_username");
	}

	public M setPid(java.lang.Integer pid) {
		set("pid", pid);
		return (M)this;
	}
	
	public java.lang.Integer getPid() {
		return getInt("pid");
	}

	public M setContent(java.lang.String content) {
		set("content", content);
		return (M)this;
	}
	
	public java.lang.String getContent() {
		return getStr("content");
	}

	public M setReplyTime(java.util.Date replyTime) {
		set("reply_time", replyTime);
		return (M)this;
	}
	
	public java.util.Date getReplyTime() {
		return get("reply_time");
	}

}
