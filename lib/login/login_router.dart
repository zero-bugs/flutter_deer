
import 'package:fluro/fluro.dart';
import 'package:flutter_deer/routers/router_init.dart';

import 'page/login_page.dart';
import 'page/register_page.dart';
import 'page/reset_password_page.dart';
import 'page/sms_login_page.dart';
import 'page/update_password_page.dart';


class LoginRouter implements IRouterProvider{

  static String loginPage = '/login';
  static String registerPage = '/login/register';
  static String smsLoginPage = '/login/smsLogin';
  static String resetPasswordPage = '/login/resetPassword';
  static String updatePasswordPage = '/login/updatePassword';
  
  @override
  void initRouter(Router router) {
    router.define(loginPage, handler: Handler(handlerFunc: (_, __) => LoginPage()));
    router.define(registerPage, handler: Handler(handlerFunc: (_, __) => RegisterPage()));
    router.define(smsLoginPage, handler: Handler(handlerFunc: (_, __) => SMSLoginPage()));
    router.define(resetPasswordPage, handler: Handler(handlerFunc: (_, __) => ResetPasswordPage()));
    router.define(updatePasswordPage, handler: Handler(handlerFunc: (_, __) => UpdatePasswordPage()));
  }
  
}