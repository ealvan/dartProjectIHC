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
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `App Alianza Lima`
  String get titleText {
    return Intl.message(
      'App Alianza Lima',
      name: 'titleText',
      desc: '',
      args: [],
    );
  }

  /// `sign up user`
  String get loginUserText1 {
    return Intl.message(
      'sign up user',
      name: 'loginUserText1',
      desc: '',
      args: [],
    );
  }

  /// `Sing up your password`
  String get loginPaswordText1 {
    return Intl.message(
      'Sing up your password',
      name: 'loginPaswordText1',
      desc: '',
      args: [],
    );
  }

  /// `confirm your password`
  String get loginConfirmPassw1 {
    return Intl.message(
      'confirm your password',
      name: 'loginConfirmPassw1',
      desc: '',
      args: [],
    );
  }

  /// `your registration succesfully!!`
  String get loginSucces1 {
    return Intl.message(
      'your registration succesfully!!',
      name: 'loginSucces1',
      desc: '',
      args: [],
    );
  }

  /// `Register!!`
  String get registe1 {
    return Intl.message(
      'Register!!',
      name: 'registe1',
      desc: '',
      args: [],
    );
  }

  /// `Did you forget your password?`
  String get loginMissPassword {
    return Intl.message(
      'Did you forget your password?',
      name: 'loginMissPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get insertMissPasword {
    return Intl.message(
      'Enter your email',
      name: 'insertMissPasword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone to verify your identity`
  String get insertMissPhone {
    return Intl.message(
      'Enter your phone to verify your identity',
      name: 'insertMissPhone',
      desc: '',
      args: [],
    );
  }

  /// `Enter the 6-digit password`
  String get insertMissKey {
    return Intl.message(
      'Enter the 6-digit password',
      name: 'insertMissKey',
      desc: '',
      args: [],
    );
  }

  /// `SEND!!`
  String get sendMiss {
    return Intl.message(
      'SEND!!',
      name: 'sendMiss',
      desc: '',
      args: [],
    );
  }

  /// `go Back`
  String get goBackMiss {
    return Intl.message(
      'go Back',
      name: 'goBackMiss',
      desc: '',
      args: [],
    );
  }

  /// `list of users`
  String get userList {
    return Intl.message(
      'list of users',
      name: 'userList',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get loginIn {
    return Intl.message(
      'Log In',
      name: 'loginIn',
      desc: '',
      args: [],
    );
  }

  /// `USER`
  String get loginUser {
    return Intl.message(
      'USER',
      name: 'loginUser',
      desc: '',
      args: [],
    );
  }

  /// `PASSWORD`
  String get loginPassword {
    return Intl.message(
      'PASSWORD',
      name: 'loginPassword',
      desc: '',
      args: [],
    );
  }

  /// `Did you forget your password?`
  String get loginForgetPassword {
    return Intl.message(
      'Did you forget your password?',
      name: 'loginForgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Log in for EMAIL`
  String get loginEmail {
    return Intl.message(
      'Log in for EMAIL',
      name: 'loginEmail',
      desc: '',
      args: [],
    );
  }

  /// `You do not have an account?`
  String get missCount {
    return Intl.message(
      'You do not have an account?',
      name: 'missCount',
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
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}