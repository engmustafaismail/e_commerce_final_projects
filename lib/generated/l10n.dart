// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Choose Your Language`
  String get chooselan {
    return Intl.message(
      'Choose Your Language',
      name: 'chooselan',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continu {
    return Intl.message(
      'Continue',
      name: 'continu',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message(
      'Start',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get login {
    return Intl.message(
      'Log in',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Find Favorite Items`
  String get onboardOneTitle {
    return Intl.message(
      'Find Favorite Items',
      name: 'onboardOneTitle',
      desc: '',
      args: [],
    );
  }

  /// `Easy & Safe Payment`
  String get onboardTowTitle {
    return Intl.message(
      'Easy & Safe Payment',
      name: 'onboardTowTitle',
      desc: '',
      args: [],
    );
  }

  /// `Product Delivery`
  String get onboardThreeTitle {
    return Intl.message(
      'Product Delivery',
      name: 'onboardThreeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back`
  String get titlelogin {
    return Intl.message(
      'Welcome Back',
      name: 'titlelogin',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with your email and password \nor continue with social media`
  String get descLogin {
    return Intl.message(
      'Sign in with your email and password \nor continue with social media',
      name: 'descLogin',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `find your favorite products that you want to\nbuy easily.`
  String get onboardingbody1 {
    return Intl.message(
      'find your favorite products that you want to\nbuy easily.',
      name: 'onboardingbody1',
      desc: '',
      args: [],
    );
  }

  /// `pay for the prducts you by safly and\neasily.`
  String get onboardingbody2 {
    return Intl.message(
      'pay for the prducts you by safly and\neasily.',
      name: 'onboardingbody2',
      desc: '',
      args: [],
    );
  }

  /// `your product is deliverd to your home\nsafely and securely.`
  String get onboardingbody3 {
    return Intl.message(
      'your product is deliverd to your home\nsafely and securely.',
      name: 'onboardingbody3',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password ?`
  String get forgetyourpassword {
    return Intl.message(
      'Forget Password ?',
      name: 'forgetyourpassword',
      desc: '',
      args: [],
    );
  }

  /// `Not have account ?`
  String get nothaveaccount {
    return Intl.message(
      'Not have account ?',
      name: 'nothaveaccount',
      desc: '',
      args: [],
    );
  }

  /// `have you account ?`
  String get haveyouaccount {
    return Intl.message(
      'have you account ?',
      name: 'haveyouaccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signup {
    return Intl.message(
      'Sign Up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Rememper me`
  String get rememperme {
    return Intl.message(
      'Rememper me',
      name: 'rememperme',
      desc: '',
      args: [],
    );
  }

  /// `User Name`
  String get username {
    return Intl.message(
      'User Name',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Create a new account`
  String get createaccount {
    return Intl.message(
      'Create a new account',
      name: 'createaccount',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password`
  String get forgetpagetitle {
    return Intl.message(
      'Forget Password',
      name: 'forgetpagetitle',
      desc: '',
      args: [],
    );
  }

  /// `Check Email`
  String get checkemail {
    return Intl.message(
      'Check Email',
      name: 'checkemail',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email adress to receive a verification code`
  String get descriptoenteryouremail {
    return Intl.message(
      'Enter your email adress to receive a verification code',
      name: 'descriptoenteryouremail',
      desc: '',
      args: [],
    );
  }

  /// `Check`
  String get check {
    return Intl.message(
      'Check',
      name: 'check',
      desc: '',
      args: [],
    );
  }

  /// `Verification Code`
  String get verificcation {
    return Intl.message(
      'Verification Code',
      name: 'verificcation',
      desc: '',
      args: [],
    );
  }

  /// `Check Code`
  String get checkcode {
    return Intl.message(
      'Check Code',
      name: 'checkcode',
      desc: '',
      args: [],
    );
  }

  /// `Pleas enter the digit code sent to`
  String get descripverificcation {
    return Intl.message(
      'Pleas enter the digit code sent to',
      name: 'descripverificcation',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newpasswordtitle {
    return Intl.message(
      'New Password',
      name: 'newpasswordtitle',
      desc: '',
      args: [],
    );
  }

  /// `Pleas enter the new password`
  String get descripnewpassword {
    return Intl.message(
      'Pleas enter the new password',
      name: 'descripnewpassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmpassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmpassword',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get changepassword {
    return Intl.message(
      'Change Password',
      name: 'changepassword',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get change {
    return Intl.message(
      'Change',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up Success`
  String get signupsuccess {
    return Intl.message(
      'Sign Up Success',
      name: 'signupsuccess',
      desc: '',
      args: [],
    );
  }

  /// `Change Password Success`
  String get resetpassSuccess {
    return Intl.message(
      'Change Password Success',
      name: 'resetpassSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up Success , you\n can go to a home page`
  String get dessuccessSignUp {
    return Intl.message(
      'Sign Up Success , you\n can go to a home page',
      name: 'dessuccessSignUp',
      desc: '',
      args: [],
    );
  }

  /// `Change Password Success,\n you can go to a log in`
  String get dessuccessRessetPassword {
    return Intl.message(
      'Change Password Success,\n you can go to a log in',
      name: 'dessuccessRessetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Go to Home Page`
  String get gotohomepage {
    return Intl.message(
      'Go to Home Page',
      name: 'gotohomepage',
      desc: '',
      args: [],
    );
  }

  /// `Go to Log In`
  String get gotohomelogin {
    return Intl.message(
      'Go to Log In',
      name: 'gotohomelogin',
      desc: '',
      args: [],
    );
  }

  /// `the email isn't correct`
  String get emailvaildinput {
    return Intl.message(
      'the email isn\'t correct',
      name: 'emailvaildinput',
      desc: '',
      args: [],
    );
  }

  /// `the phone number isn't correct`
  String get phonevalidinput {
    return Intl.message(
      'the phone number isn\'t correct',
      name: 'phonevalidinput',
      desc: '',
      args: [],
    );
  }

  /// `the user name isn't correct`
  String get usernamevalidinput {
    return Intl.message(
      'the user name isn\'t correct',
      name: 'usernamevalidinput',
      desc: '',
      args: [],
    );
  }

  /// `Error, should be less than `
  String get lesscountletteralsvalidinput {
    return Intl.message(
      'Error, should be less than ',
      name: 'lesscountletteralsvalidinput',
      desc: '',
      args: [],
    );
  }

  /// `Error, should be more than`
  String get morecountletteralsvalidinput {
    return Intl.message(
      'Error, should be more than',
      name: 'morecountletteralsvalidinput',
      desc: '',
      args: [],
    );
  }

  /// `error, please enter the`
  String get emptyvalidinput {
    return Intl.message(
      'error, please enter the',
      name: 'emptyvalidinput',
      desc: '',
      args: [],
    );
  }

  /// `Warning`
  String get warningtitle {
    return Intl.message(
      'Warning',
      name: 'warningtitle',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to exiting from app ?`
  String get alerexistqusetion {
    return Intl.message(
      'Do you want to exiting from app ?',
      name: 'alerexistqusetion',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
