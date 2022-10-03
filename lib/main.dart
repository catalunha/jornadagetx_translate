import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_translate/core/translation/translation_keys.dart';
import 'package:jornadagetx_translate/pages/home_page.dart';

late TranslationKeys translationsKeys;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  translationsKeys = TranslationKeys();
  await translationsKeys.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: translationsKeys,
      // translations: TranslationKeys(),
      // locale: const Locale('en', 'US'),
      locale: const Locale('pt', 'BR'),
      fallbackLocale: const Locale('pt', 'BR'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [GetPage(name: '/', page: () => const HomePage())],
    );
  }
}
