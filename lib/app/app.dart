import 'package:flutter/material.dart';
import 'package:titans_crypto/app/routes/app_routes.dart';
import 'package:titans_crypto/theme/config/config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Titans Crypto',
      theme: ThemePrimary.theme(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      initialRoute: '/',
    );
  }
}
