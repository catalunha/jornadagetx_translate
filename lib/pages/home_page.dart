import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_translate/core/translation/translation_keys.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('title_app'.tr),
        title: Text(TranslateKey.titleApp.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Divider(),
            Text(
              TranslateKey.welcome.key.trParams(
                {'name': 'Marcio Catalunha'},
              ),
            ),
            Text(
              'welcome'.trParams(
                {'name': 'Marcio Catalunha'},
              ),
            ),
            const Divider(),
            Text(
              'user_list_title_simple'
                  .trPlural('user_list_title_simple_plural', 1),
            ),
            Text(
              'user_list_title_simple'
                  .trPlural('user_list_title_simple_plural', 2),
            ),
            const Divider(),
            Text(
              TranslateKey.userListTitleSimple.trPlural(1),
            ),
            Text(
              TranslateKey.userListTitleSimple.trPlural(2),
            ),
            const Divider(),
            Text(
              'user_list_title'.trPluralParams(
                'user_list_title_plural',
                1,
                {'total': '1'},
              ),
            ),
            Text(
              'user_list_title'.trPluralParams(
                'user_list_title_plural',
                2,
                {'total': '2'},
              ),
            ),
            const Divider(),
            Text(
              TranslateKey.userListTitle.trPluralParams(
                1,
                {'total': '1'},
              ),
            ),
            Text(
              TranslateKey.userListTitle.trPluralParams(
                2,
                {'total': '2'},
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('pt', 'BR'));
                },
                child: const Text('alterar para pt_BR')),
            ElevatedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('en', 'US'));
                },
                child: const Text('alterar para en_US')),
          ],
        ),
      ),
    );
  }
}
