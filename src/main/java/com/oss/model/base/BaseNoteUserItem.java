package com.oss.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;


@SuppressWarnings({"serial", "unchecked"})
public abstract class BaseNoteUserItem<M extends BaseNoteUserItem<M>> extends Model<M> implements IBean {

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

	public M setNoteId(java.lang.Integer noteId) {
		set("note_id", noteId);
		return (M)this;
	}
	
	public java.lang.Integer getNoteId() {
		return getInt("note_id");
	}

}
