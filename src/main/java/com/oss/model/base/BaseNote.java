package com.oss.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings({"serial", "unchecked"})
public abstract class BaseNote<M extends BaseNote<M>> extends Model<M> implements IBean {

	public M setId(java.lang.Integer id) {
		set("id", id);
		return (M)this;
	}
	
	public java.lang.Integer getId() {
		return getInt("id");
	}
	public M setHeadimg(java.lang.String headimg) {
		set("headimg", headimg);
		return (M)this;
	}
	
	public java.lang.String getHeadimg() {
		return getStr("headimg");
	}
	public M setTitle(java.lang.String title) {
		set("title", title);
		return (M)this;
	}
	
	public java.lang.String getTitle() {
		return getStr("title");
	}

	public M setContent(java.lang.String content) {
		set("content", content);
		return (M)this;
	}
	
	public java.lang.String getContent() {
		return getStr("content");
	}
	
	public M setSimpleShow(java.lang.String simpleShow) {
		set("simple_show", simpleShow);
		return (M)this;
	}
	
	public java.lang.String getSimpleShow() {
		return getStr("simple_show");
	}
	
	public M setPublishTime(java.util.Date publishTime) {
		set("publish_time", publishTime);
		return (M)this;
	}
	
	public java.util.Date getPublishTime() {
		return get("publish_time");
	}

	public M setPublishUser(java.lang.Integer publishUser) {
		set("publish_user", publishUser);
		return (M)this;
	}
	
	public java.lang.Integer getPublishUser() {
		return getInt("publish_user");
	}

	public M setPublishUsername(java.lang.String publishUsername) {
		set("publish_username", publishUsername);
		return (M)this;
	}
	
	public java.lang.String getPublishUsername() {
		return getStr("publish_username");
	}

	public M setPostTime(java.util.Date postTime) {
		set("post_time", postTime);
		return (M)this;
	}
	
	public java.util.Date getPostTime() {
		return get("post_time");
	}


	public M setStatus(java.lang.Integer status) {
		set("status", status);
		return (M)this;
	}
	
	public java.lang.Integer getStatus() {
		return getInt("status");
	}

	public M setReadme(java.lang.Integer readme) {
		set("readme", readme);
		return (M)this;
	}
	
	public java.lang.Integer getReadme() {
		return getInt("readme");
	}

	public M setLaud(java.lang.Integer laud) {
		set("laud", laud);
		return (M)this;
	}
	
	public java.lang.Integer getLaud() {
		return getInt("laud");
	}

}