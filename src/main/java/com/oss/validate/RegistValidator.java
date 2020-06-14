package com.oss.validate;

import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;

/**
 * @author pangPython
 *  注册的验证器
 */
public class RegistValidator extends Validator {

    @Override
    protected void handleError(Controller arg0) {

    }

    @Override
    protected void validate(Controller arg0) {
        validateRequired("user.name", "nameErrMsg", "请填写用户名！");
        validateRequired("user.pwd", "pwdErrMsg", "请填写密码！");
        validateRequired("reg.confirm", "confirmErrMsg", "请填写确认密码！");
        validateRequired("reg.yzm", "yzmErrMsg", "请填写验证码！");
    }

}
