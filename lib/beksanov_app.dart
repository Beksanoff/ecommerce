import 'package:ecommerce/feauters/home_store/home_store.dart';
import 'package:ecommerce/feauters/splash_screen/splash_screen.dart';
import 'package:ecommerce/generated/l10n.dart';
import 'package:ecommerce/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class BeksanovApp extends StatelessWidget {
  const BeksanovApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('en'),
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: eccomeretheme,
      title: 'Flutter Demo',
      routes: {
        '/': (context) => const SplashPage(),
        '/second_screen': (context) => const HomeStore(),
      },
    );
  }
}
