package com.oss.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings({"serial", "unchecked"})
public abstract class BaseMassage<M extends BaseMassage<M>> extends Model<M> implements IBean {

	public M setId(java.lang.Integer id) {
		set("id", id);
		return (M)this;
	}
	
	public java.lang.Integer getId() {
		return getInt("id");
	}

	public M setUserId(java.lang.Integer userId) {
		set("user_id", userId);
		return (M)this;
	}
	
	public java.lang.Integer getUserId() {
		return getInt("user_id");
	}

	public M setFrom(java.lang.Integer from) {
		set("from", from);
		return (M)this;
	}
	
	public java.lang.Integer getFrom() {
		return getInt("from");
	}

	public M setFromname(java.lang.String fromname) {
		set("fromname", fromname);
		return (M)this;
	}
	
	public java.lang.String getFromname() {
		return getStr("fromname");
	}

	public M setAbout(java.lang.Integer about) {
		set("about_id", about);
		return (M)this;
	}
	
	public Integer getAbout() {
		return getInt("about_id");
	}

	public M setContent(java.lang.String content) {
		set("content", content);
		return (M)this;
	}
	
	public java.lang.String getContent() {
		return getStr("content");
	}

	public M setCreatetime(java.util.Date createtime) {
		set("createtime", createtime);
		return (M)this;
	}
	
	public java.util.Date getCreatetime() {
		return get("createtime");
	}

	public M setStatus(java.lang.String status) {
		set("status", status);
		return (M)this;
	}
	
	public java.lang.String getStatus() {
		return getStr("status");
	}
	
	public M setType(String type) {
		set("type", type);
		return (M)this;
	}
	
	public java.lang.String getType() {
		return getStr("type");
	}
}
