import 'package:flutter/material.dart';
import 'package:titans_crypto/app/features/auth/auth_view.dart';
// import 'package:titans_crypto/app/features/home_page/home_page.dart';
import 'package:titans_crypto/app/features/onboarding/view/onboarding_view.dart';

class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    debugPrint('onGenerateRoute: ${settings.name}');
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const OnboardingView(),
          settings: const RouteSettings(name: OnboardingView.routeName),
        );
      // case MyHomePage.routeName:
      //   return MaterialPageRoute(
      //     builder: (context) => const MyHomePage(title: 'test',),
      //     settings: const RouteSettings(name: MyHomePage.routeName),
      //   );
      case AuthView.routeName:
        return MaterialPageRoute(
          builder: (context) => const AuthView(),
          settings: const RouteSettings(name: AuthView.routeName),
        );
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Something went wrong!'),
        ),
      ),
    );
  }
}
