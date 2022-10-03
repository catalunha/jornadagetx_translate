import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

enum TranslateKey {
  titleApp('title_app'),
  welcome('welcome'),
  userListTitleSimple(
    'user_list_title_simple',
    plural: 'user_list_title_simple_plural',
  ),
  userListTitle(
    'user_list_title',
    plural: 'user_list_title_plural',
  );

  final String key;
  final String? plural;
  const TranslateKey(this.key, {this.plural});
  String get tr => key.tr;
  String trParams(Map<String, String> params) {
    return key.trParams(params);
  }

  String trPlural(int total) {
    if (plural != null) {
      return key.trPlural(plural, total);
    }
    return "";
  }

  String trPluralParams(int total, Map<String, String> params) {
    if (plural != null) {
      return key.trPluralParams(plural, total, params);
    }
    return "";
  }
}

class TranslationKeys extends Translations {
  var enUSKeys = <String, String>{};
  var ptBRKeys = <String, String>{};
  Future<void> load() async {
    enUSKeys = Map<String, String>.from(
        jsonDecode(await rootBundle.loadString('assets/locales/en_US.json')));
    ptBRKeys = Map<String, String>.from(
        jsonDecode(await rootBundle.loadString('assets/locales/pt_BR.json')));
  }

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUSKeys,
        'pt_BR': ptBRKeys,
      };
}

// class TranslationKeys extends Translations {
//   @override
//   Map<String, Map<String, String>> get keys => {
//         'en_US': {
//           TranslateKey.titleApp.key: 'GetX Translate',
//           'welcome': 'Hello @name',
//           'user_list_title_simple': 'user',
//           'user_list_title_simple_plural': 'users',
//           'user_list_title': '@total user',
//           'user_list_title_plural': '@total users',
//         },
//         'pt_BR': {
//           'title_app': 'GetX Tradução',
//           'welcome': 'Olá @name',
//           'user_list_title_simple': 'usuário',
//           'user_list_title_simple_plural': 'usuários',
//           'user_list_title': '@total usuário',
//           'user_list_title_plural': '@total usuários',
//         },
//       };
// }

