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

  /// `Это поле не должно быть пустое`
  String get emptyField {
    return Intl.message(
      'Это поле не должно быть пустое',
      name: 'emptyField',
      desc: '',
      args: [],
    );
  }

  /// `Имя`
  String get firstName {
    return Intl.message(
      'Имя',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Фамилия`
  String get secondName {
    return Intl.message(
      'Фамилия',
      name: 'secondName',
      desc: '',
      args: [],
    );
  }

  /// `Пожалуйста, введите корректный email`
  String get notCorrectEmail {
    return Intl.message(
      'Пожалуйста, введите корректный email',
      name: 'notCorrectEmail',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get emailAddress {
    return Intl.message(
      'Email address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `UA`
  String get UA {
    return Intl.message(
      'UA',
      name: 'UA',
      desc: '',
      args: [],
    );
  }

  /// `Проверьте правильность введённых данных`
  String get correctIsDataForm {
    return Intl.message(
      'Проверьте правильность введённых данных',
      name: 'correctIsDataForm',
      desc: '',
      args: [],
    );
  }

  /// `Такой номер телефона зарегистрирован`
  String get snackbarIsPhoneData {
    return Intl.message(
      'Такой номер телефона зарегистрирован',
      name: 'snackbarIsPhoneData',
      desc: '',
      args: [],
    );
  }

  /// `Такой номер телефона не зарегистрирован`
  String get snackbarIsNotPhoneData {
    return Intl.message(
      'Такой номер телефона не зарегистрирован',
      name: 'snackbarIsNotPhoneData',
      desc: '',
      args: [],
    );
  }

  /// `Введите номер телефона`
  String get snackbarNoPhone {
    return Intl.message(
      'Введите номер телефона',
      name: 'snackbarNoPhone',
      desc: '',
      args: [],
    );
  }

  /// `Открой доступ к самой полной базе рынка квартир в Сочи!`
  String get loginText {
    return Intl.message(
      'Открой доступ к самой полной базе рынка квартир в Сочи!',
      name: 'loginText',
      desc: '',
      args: [],
    );
  }

  /// `Войти`
  String get loginButton {
    return Intl.message(
      'Войти',
      name: 'loginButton',
      desc: '',
      args: [],
    );
  }

  /// `Впервые у нас?`
  String get loginText2 {
    return Intl.message(
      'Впервые у нас?',
      name: 'loginText2',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация`
  String get registration {
    return Intl.message(
      'Регистрация',
      name: 'registration',
      desc: '',
      args: [],
    );
  }

  /// `Введите код который мы отправили на указаный вами номер телефона`
  String get pinCodeText {
    return Intl.message(
      'Введите код который мы отправили на указаный вами номер телефона',
      name: 'pinCodeText',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация`
  String get registrationHintText {
    return Intl.message(
      'Регистрация',
      name: 'registrationHintText',
      desc: '',
      args: [],
    );
  }

  /// `Телефон`
  String get phoneHintText {
    return Intl.message(
      'Телефон',
      name: 'phoneHintText',
      desc: '',
      args: [],
    );
  }

  /// `Далее`
  String get next {
    return Intl.message(
      'Далее',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Лента`
  String get homeTextButton1 {
    return Intl.message(
      'Лента',
      name: 'homeTextButton1',
      desc: '',
      args: [],
    );
  }

  /// `Карта`
  String get homeTextButton2 {
    return Intl.message(
      'Карта',
      name: 'homeTextButton2',
      desc: '',
      args: [],
    );
  }

  /// `Новое объявление`
  String get adAppBarTitle {
    return Intl.message(
      'Новое объявление',
      name: 'adAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Продолжить`
  String get adTextButton {
    return Intl.message(
      'Продолжить',
      name: 'adTextButton',
      desc: '',
      args: [],
    );
  }

  /// `Адрес`
  String get adPrefixText1 {
    return Intl.message(
      'Адрес',
      name: 'adPrefixText1',
      desc: '',
      args: [],
    );
  }

  /// `Указать на карте`
  String get adSuffixText1 {
    return Intl.message(
      'Указать на карте',
      name: 'adSuffixText1',
      desc: '',
      args: [],
    );
  }

  /// `р-н Центральный, ул. Темерязева 7`
  String get adHintText1 {
    return Intl.message(
      'р-н Центральный, ул. Темерязева 7',
      name: 'adHintText1',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать ЖК`
  String get adPrefixText2 {
    return Intl.message(
      'Выбрать ЖК',
      name: 'adPrefixText2',
      desc: '',
      args: [],
    );
  }

  /// `Добавить в шахматку`
  String get adSuffixText2 {
    return Intl.message(
      'Добавить в шахматку',
      name: 'adSuffixText2',
      desc: '',
      args: [],
    );
  }

  /// `Количество комнат`
  String get adPrefixText3 {
    return Intl.message(
      'Количество комнат',
      name: 'adPrefixText3',
      desc: '',
      args: [],
    );
  }

  /// `Планировка`
  String get adPrefixText4 {
    return Intl.message(
      'Планировка',
      name: 'adPrefixText4',
      desc: '',
      args: [],
    );
  }

  /// `Жилое состояние`
  String get adPrefixText5 {
    return Intl.message(
      'Жилое состояние',
      name: 'adPrefixText5',
      desc: '',
      args: [],
    );
  }

  /// `Общая площадь`
  String get adPrefixText6 {
    return Intl.message(
      'Общая площадь',
      name: 'adPrefixText6',
      desc: '',
      args: [],
    );
  }

  /// `70 м²`
  String get adHintText2 {
    return Intl.message(
      '70 м²',
      name: 'adHintText2',
      desc: '',
      args: [],
    );
  }

  /// `Площадь кухни`
  String get adPrefixText7 {
    return Intl.message(
      'Площадь кухни',
      name: 'adPrefixText7',
      desc: '',
      args: [],
    );
  }

  /// `28.5 м²`
  String get adHintText3 {
    return Intl.message(
      '28.5 м²',
      name: 'adHintText3',
      desc: '',
      args: [],
    );
  }

  /// `Балкон/лоджия`
  String get adPrefixText8 {
    return Intl.message(
      'Балкон/лоджия',
      name: 'adPrefixText8',
      desc: '',
      args: [],
    );
  }

  /// `Тип отопления`
  String get adPrefixText9 {
    return Intl.message(
      'Тип отопления',
      name: 'adPrefixText9',
      desc: '',
      args: [],
    );
  }

  /// `Варианты расчета`
  String get adPrefixText10 {
    return Intl.message(
      'Варианты расчета',
      name: 'adPrefixText10',
      desc: '',
      args: [],
    );
  }

  /// `Коммисия агенту`
  String get adPrefixText11 {
    return Intl.message(
      'Коммисия агенту',
      name: 'adPrefixText11',
      desc: '',
      args: [],
    );
  }

  /// `100 000 ₽`
  String get adHintText4 {
    return Intl.message(
      '100 000 ₽',
      name: 'adHintText4',
      desc: '',
      args: [],
    );
  }

  /// `Способ связи`
  String get adPrefixText12 {
    return Intl.message(
      'Способ связи',
      name: 'adPrefixText12',
      desc: '',
      args: [],
    );
  }

  /// `Описание`
  String get adPrefixText13 {
    return Intl.message(
      'Описание',
      name: 'adPrefixText13',
      desc: '',
      args: [],
    );
  }

  /// `Особенная квартира в одном из самых престижных и закрытых элитных домов - Diadema Club House. Крестовский остров. Собственная терраса 109 кв. м с газонным покрытием. Прямой вид на воду, Среднюю Невку. Высокие потолки 3,4 м. Панорамные окна. Свободная планировка. Теплые водяные полы в санузлах. 2 машиноместа в подземном паркинге. Жилой комплекс располагается на Крестовском острове - сложившейся локации элитной недвижимости.`
  String get adHintText5 {
    return Intl.message(
      'Особенная квартира в одном из самых престижных и закрытых элитных домов - Diadema Club House. Крестовский остров. Собственная терраса 109 кв. м с газонным покрытием. Прямой вид на воду, Среднюю Невку. Высокие потолки 3,4 м. Панорамные окна. Свободная планировка. Теплые водяные полы в санузлах. 2 машиноместа в подземном паркинге. Жилой комплекс располагается на Крестовском острове - сложившейся локации элитной недвижимости.',
      name: 'adHintText5',
      desc: '',
      args: [],
    );
  }

  /// `Цена`
  String get adPrefixText14 {
    return Intl.message(
      'Цена',
      name: 'adPrefixText14',
      desc: '',
      args: [],
    );
  }

  /// `3 400 000 ₽`
  String get adHintText6 {
    return Intl.message(
      '3 400 000 ₽',
      name: 'adHintText6',
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
      Locale.fromSubtags(languageCode: 'ru'),
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
