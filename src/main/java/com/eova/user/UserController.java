package com.eova.user;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.alibaba.fastjson.JSON;
import com.eova.common.Easy;
import com.eova.common.base.BaseController;
import com.eova.common.utils.EncryptUtil;
import com.eova.common.utils.xx;
import com.eova.config.EovaConst;
import com.eova.i18n.I18NBuilder;
import com.eova.model.User;
import com.jfinal.aop.Clear;
import com.jfinal.core.Controller;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.upload.UploadFile;
import com.oss.model.Massage;
import com.oss.model.Note;
import com.oss.model.NoteReply;
import com.oss.model.Strategy;
import com.oss.model.StrategyReply;

/**
* @author lang
* @date 2019年3月16日
*
*/
public class UserController extends BaseController {

	//验证码
	private static final String FORM_ITEM_CODE = "code";

    /**
     * 返回验证码
     */
    public void code(){
        renderCaptcha();
    }




	// 修改密码
	public void pwd() {
		Integer id = xx.toInt(getSelectValue("id"));
		String val = getInputValue();

		if (xx.isEmpty(val)) {
			renderJson(new Easy("密码不能为空！"));
			return;
		}
		if (val.length() < 6) {
			renderJson(new Easy("密码不能少于6位！"));
			return;
		}

		User user = new User();
		user.set("id", id);
		user.set("login_pwd", EncryptUtil.getSM32(val));
		user.update();

		renderJson(new Easy());
	}
	
	@Clear
	public void fLogin(){
		
		render("/travel/views/user/login.html");
	}
	@Clear
	public void toPwd(){
		
		render("/travel/views/user/updatePwd.html");
	}
	@Clear
	public void fRegist(){
		render("/travel/views/user/regist.html");
	}
	@Clear
	public void doRegist(){
		String loginId = getPara("acct");
		String loginName = getPara("name");
		String loginPwd = getPara("pass");
		Map<String,String> map = new HashMap<>();
		List<Record> list = Db.find("select *  from user where login_id = ?" ,loginId);
		if(list.size()>0){
			map.put("code","0");
			map.put("msg","该账号已被注册");
			renderJson(map);
			return;
		}
		Record user = new Record();
		user.set("login_id", loginId);
		user.set("name", loginName);
		user.set("rid", 3);
		user.set("login_pwd", EncryptUtil.getSM32(loginPwd));
		Db.save("user", user);
		map.put("code","1");
		renderJson(map);
	}
	@Clear
	public void doLogin() {
		String loginId = getPara("acct");
		String loginPwd = getPara("pass");
		String yanzheng = getPara("code");
		Map<String,String> map = new HashMap<>();
		String userDs = xx.getConfig("login.user.ds", xx.DS_EOVA);
		String userTable = xx.getConfig("login.user.table", "eova_user");
		String userId = xx.getConfig("login.user.id", "id");
		String userAccount = xx.getConfig("login.user.account", "login_id");
		String userPassword = xx.getConfig("login.user.password", "login_pwd");
		String userRid = xx.getConfig("login.user.rid", "rid");

		Record r = Db.use(userDs).findFirst(String.format("select * from %s where %s = ?", userTable, userAccount), loginId);
		if (r == null) {
			map.put("msg", "用户名不存在");
			renderJson(map);
			return;
		}
		if (!r.getStr(userPassword).equals(EncryptUtil.getSM32(loginPwd))) {
			map.put("msg", "密码错误");
			renderJson(map);
			return;
		}
		 if(!validateCaptcha(FORM_ITEM_CODE)){
	           // 验证码验证成功
			 map.put("msg", "验证码错误");
				renderJson(map);
				return;
	       }
		User user = new User();
		user.set("id", r.get(userId));
		user.set("rid", r.getInt(userRid));
		user.put(userAccount, r.get(userAccount));
		user.set("name", r.getStr("name"));
		user.set("img", r.getStr("img"));
		boolean isI18N = xx.getConfigBool("isI18N", false);
		if (isI18N) {
			String local = getPara(EovaConst.LOCAL);
			if (!xx.isEmpty(local)) {
				// 记录当前语种
				setSessionAttr(EovaConst.LOCAL, local);
				// 加载国际化文案
				List<Record> list = Db.use(xx.DS_EOVA).find("select * from eova_i18n where val is not null or val <> ''");
				I18NBuilder.init(list);
				xx.info("%s语言,加载文案总数:%s", local, list.size());
			}
		}
		
		try {
			loginInit(this, user, r);
			user.init();
		} catch (Exception e) {
			e.printStackTrace();
			map.put("msg", e.getMessage());
			renderJson(map);
			return;
		}
		Massage m=Massage.dao.findFirst("select * from massage where user_id=?",r.get(userId));
		if(!xx.isEmpty(m)){
			
		}
		setSessionAttr(EovaConst.USER, user);
		// 重定向到首页
		map.put("code", "1");
		renderJson(map);
	}
	public void pwd1() {
		String loginPwd = getPara("pass");
		String oldPwd = EncryptUtil.getSM32(getPara("oldPwd"));
		Map<String,String> map = new HashMap<>();
		User u=User.dao.findFirst("select * from user where id=? and login_pwd=?",UID(),oldPwd);
		if(u==null){
			 map.put("msg", "用户名或旧密码错误");
				renderJson(map);
				return;
		}
		String userId = xx.getConfig("login.user.id", "id");
		User user = new User();
		user.set("id", u.get(userId));
		user.set("id", UID());
		user.set("login_pwd", EncryptUtil.getSM32(loginPwd));
		user.update();
		map.put("code", "1");
		renderJson(map);
	}
	
	/**
	 * 登录初始化
	 * @param ctrl
	 * @param user 当前登录用户数据
	 * @param e 当前登录帐号数据集
	 * @throws Exception
	 */
	protected void loginInit(Controller ctrl, User user, Record e) throws Exception {
		// 初始化获取授权信息
		Set<String> auths = new HashSet<String>();
		String sql = "SELECT bs FROM eova_role_btn rf LEFT JOIN eova_button b ON rf.bid = b.id WHERE rf.rid = ?";
		List<Record> bss = Db.use(xx.DS_EOVA).find(sql, user.getRid());
		for (Record r : bss) {
			String bs = r.getStr("bs");
			if (xx.isEmpty(bs)) {
				continue;
			}
			if (!bs.contains(";")) {
				auths.add(bs);
				continue;
			}
			String[] strs = bs.split(";");
			for (String str : strs) {
				auths.add(str);
			}
		}
		if (xx.isEmpty(auths)) {
			throw new Exception("用户角色没有任何授权,请联系管理员授权");
		}
		user.put("auths", auths);

		// 子类可重写添加业务属性和对象
	}
	
	public void loginOut(){
		// 清除登录状态
		removeSessionAttr(EovaConst.USER);
		redirect("/fIndex");
	}
	
	
	public void toMyCenter(){
		setAttr("user",JSON.toJSON(Db.findById("user", UID())));
		render("/travel/views/user/myCenter.html");
	}
	
	public void getAUser(){
		renderJson(Db.findById("user", UID()));
	}
	
	public void getANote(){
		String mid=getPara("mid");
		String id = getPara("id");
		Note nt = Note.dao.findById(id);
		Record r = Db.findById("user", nt.getPublishUser());
		List<NoteReply> list = NoteReply.dao.find("select * from note_reply where note_id = ?",id);
		setAttr("user", JSON.toJSON(r));//帖子发布者信息
		setAttr("note", JSON.toJSON(nt));//帖子内容
		setAttr("noteReplyList", JSON.toJSON(list));//回复列表
		Massage m=Massage.dao.findById(mid);
		m.setStatus("已读");
		m.update();
		render("/travel/views/note/content.html");
	}
	
	public void getAStrategy(){
		String mid=getPara("mid");
		String id = getPara("id");
		Strategy st = Strategy.dao.findById(id);
		Record r = Db.findById("user", st.getPublishUser());
		List<StrategyReply> list = StrategyReply.dao.find("select * from strategy_reply where strategy_id = ?",id);
		setAttr("user", JSON.toJSON(r));//攻略发布者信息
		setAttr("strategy", JSON.toJSON(st));//攻略内容
		setAttr("strategyReplyList", JSON.toJSON(list));//回复列表
		//st.setReadme(st.getReadme()+1);//阅读量+1
		//st.update();
		Massage m=Massage.dao.findById(mid);
		m.setStatus("已读");
		m.update();
		render("/travel/views/strategy/content.html");
	}
	
	public void upImg(){
		UploadFile uf = getFile();
		String name = uf.getFileName();
		String url = PropKit.use("default/domain.config").get("imgurl")+name;
		Record r = new Record();
		r.set("id", UID());
		r.set("img", url);
		Db.update("user", r);
		//Record user = Db.findById("user", UID());
		//removeSessionAttr(EovaConst.USER);
		//setSessionAttr(EovaConst.USER, JSON.toJSON(user));//攻略发布者信息
		
		renderJson(Easy.sucess());
	}
	
	
	public void updateUser(){
		User user = getModel(User.class,"");
		user.update();
		renderJson(Easy.sucess());
	}
	
	public void getMyStrategy(){
		List<Strategy> list =Strategy.dao.find("select * from strategy where publish_user = ?",UID());
		renderJson(list);
	}
	
	public void getMyNote(){
		List<Note> list =Note.dao.find("select * from note where publish_user = ?",UID());
		renderJson(list);
	}
	
	public void getMyAnswer1(){
		List<StrategyReply> list =StrategyReply.dao.find("select * from strategy_reply where reply_user= ?",UID());
		renderJson(list);
	}
	
	public void getMyAnswer2(){
		List<NoteReply> list =NoteReply.dao.find("select * from note_reply where reply_user = ?",UID());
		renderJson(list);
	}
	
	public void getNewMessage(){
		List<Massage> list =Massage.dao.find("select * from massage where status='未读' and user_id = ? order by createtime DESC",UID());
		renderJson(list);
	}
	
	public void getOldMessage(){
		List<Massage> list =Massage.dao.find("select * from massage where status='已读' and user_id = ? order by createtime DESC",UID());
		renderJson(list);
	}
	
	public void updateMessage(){
		Massage m=Massage.dao.findById(getPara("id"));
		m.setStatus("已读");
		m.update();
		renderJson(Easy.sucess());
	}
	
	public void deleteStrategy(){
		Strategy.dao.deleteById(getPara("id"));
		renderJson(Easy.sucess());
	}
	
	public void deleteNote(){
		Note.dao.deleteById(getPara("id"));
		renderJson(Easy.sucess());
	}
	
	public void deleteStrategyReply(){
		StrategyReply.dao.deleteById(getPara("id"));
		renderJson(Easy.sucess());
	}
	
	public void deleteNoteReply(){
		NoteReply.dao.deleteById(getPara("id"));
		renderJson(Easy.sucess());
	}
	
	public void deleteMessage(){
		Massage.dao.deleteById(getPara("id"));
		renderJson(Easy.sucess());
	}
	
	public void toOtherCenter(){
		setAttr("user",JSON.toJSON( Db.findById("user", getPara("userid"))));
		render("/travel/views/user/otherCenter.html");
	} 
	
	public void getOtherUser(){
		renderJson(Db.findById("user",getPara("userid")));
	}
	
	public void getOtherStrategy(){
		List<Strategy> list =Strategy.dao.find("select * from strategy where publish_user = ?",getPara("userid"));
		renderJson(list);
	}
	
	public void getOtherNote(){
		List<Note> list =Note.dao.find("select * from note where publish_user = ?",getPara("userid"));
		renderJson(list);
	}
}