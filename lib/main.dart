import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localizilation/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    child: MyApp(),
    supportedLocales: [
      Locale("en", "US"),
      Locale("ru", "RU"),
      Locale("uz", "UZ")
    ],
    path: "assets/translations",
    fallbackLocale: Locale("en", "US"),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      routes: {HomePage.id: (context) => HomePage()},
    );
  }
}
