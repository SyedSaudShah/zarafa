import 'package:zarafa/Export/export.dart';
import 'package:zarafa/Screens/Resource/Agent/my_agent.dart';
import 'package:zarafa/Screens/Resource/Home/home.dart';
import 'package:zarafa/Screens/Resource/Money/MoneyCard/details.dart';
import 'package:zarafa/Screens/Resource/Money/transaction.dart';
import 'package:zarafa/Screens/Resource/Subscription/packages.dart';
import 'package:zarafa/Screens/Resource/Subscription/upgrade_packages.dart';
import 'package:zarafa/Screens/Resource/activate.dart';
import 'package:zarafa/Screens/Resource/creatnewacc_splash.dart';
import 'package:zarafa/Screens/Resource/forgetpassword.dart';
import 'package:zarafa/Screens/Resource/forgetpassword_verify.dart';
import 'package:zarafa/Screens/Resource/privacy.dart';
import 'package:zarafa/Screens/Resource/reset_password.dart';
import 'package:zarafa/Screens/Resource/signin.dart';
import 'package:zarafa/Screens/Resource/splash.dart';
import 'package:zarafa/Screens/Resource/terms_condiction.dart';
import 'package:zarafa/Screens/Resource/watchbusinessgrow.dart';
import 'package:zarafa/eidt_profile/eidt_Screen.dart';

import '../../verifyemail.dart';

class RoutesName {
  static const String signUpScreen = 'SignUpScreen';
  static const String phoneInputScreen = 'PhoneInputScreen';
  static const String verifactionOtpp = 'VerifactionOtpp';
  static const String termscondiction = 'termscondiction';
  static const String privacy = 'privacy';
  static const String signin = 'signin';
  static const String forgetPassword = 'forgetPassword';
  static const String forgetverification = 'forgetverification';
  static const String resetpasswordScreen = 'resetpasswordScreen';
  static const String myCustomAppBar = 'myCustomAppBar';
  static const String creatnewaccount = 'creatnewaccount';
  static const String activateScreen = 'activateScreen';
  static const String businessGrow = ' bsinessGrow';
  static const String homeScreen = 'homeScreen';
  static const String bottomBarScreen = 'BottomBarScreen';
  static const String eidtprofilescreen = 'Eidtprofilescreen';
  static const String myagent = 'MyAgent';
  static const String mypackages = 'MyPackages';
  static const String upgardepackages = 'Upgarde_packages';
  static const String moneydetails = 'Moneydetails';
  static const String transaction = 'Transaction';
}

class RoutesMethod {
  static Route<dynamic>? onGeneratorMethod(RouteSettings setting) {
    if (setting.name == RoutesName.signUpScreen) {
      return PageRoutesMethod(child: const SignupScreen());
    } else if (setting.name == RoutesName.phoneInputScreen) {
      return PageRoutesMethod(child: const PhoneInputScreen());
    } else if (setting.name == RoutesName.verifactionOtpp) {
      return PageRoutesMethod(child: const VerifactionOtpp());
    } else if (setting.name == RoutesName.termscondiction) {
      return PageRoutesMethod(child: const TermsCondictions());
    } else if (setting.name == RoutesName.privacy) {
      return PageRoutesMethod(child: const PrivacyScreen());
    } else if (setting.name == RoutesName.signin) {
      return PageRoutesMethod(child: const SigninScreen());
    } else if (setting.name == RoutesName.forgetPassword) {
      return PageRoutesMethod(child: const ForgetPassword());
    } else if (setting.name == RoutesName.forgetverification) {
      return PageRoutesMethod(child: const Forgetpasswordverication());
    } else if (setting.name == RoutesName.resetpasswordScreen) {
      return PageRoutesMethod(child: const ResetpasswordScreen());
    } else if (setting.name == RoutesName.myCustomAppBar) {
      return PageRoutesMethod(child: const MyCustomAppBar());
    } else if (setting.name == RoutesName.creatnewaccount) {
      return PageRoutesMethod(child: const Creatnewaccount());
    } else if (setting.name == RoutesName.businessGrow) {
      return PageRoutesMethod(child: const BusinessGrow());
    } else if (setting.name == RoutesName.activateScreen) {
      return PageRoutesMethod(child: const ActivateScreen());
    } else if (setting.name == RoutesName.homeScreen) {
      return PageRoutesMethod(child: const HomePage());
    } else if (setting.name == RoutesName.bottomBarScreen) {
      return PageRoutesMethod(child: const Mybottombar());
    } else if (setting.name == RoutesName.eidtprofilescreen) {
      return PageRoutesMethod(child: const EidtProfileScreen());
    } else if (setting.name == RoutesName.myagent) {
      return PageRoutesMethod(child: const MyAgent());
    } else if (setting.name == RoutesName.mypackages) {
      return PageRoutesMethod(child: const MyPackages());
    } else if (setting.name == RoutesName.upgardepackages) {
      return PageRoutesMethod(child: const Upgrade_Packages());
    } else if (setting.name == RoutesName.moneydetails) {
      return PageRoutesMethod(child: const Moneydetails());
    } else if (setting.name == RoutesName.transaction) {
      return PageRoutesMethod(child: const Transaction());
    }
    return null;
  }
}

class PageRoutesMethod extends PageRouteBuilder {
  final Widget child;
  PageRoutesMethod({required this.child})
      : super(
          //   transitionDuration: const Duration(milliseconds: 600),
          pageBuilder: (context, animation, secondaryAnimation) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              child,
        );
}
