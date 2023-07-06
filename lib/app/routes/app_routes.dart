import 'package:flutter/material.dart';
import 'package:titans_crypto/app/presentation/auth/auth_view.dart';
import 'package:titans_crypto/app/presentation/auth/register_mobile/register_mobile.dart';
import 'package:titans_crypto/app/presentation/auth/verification_OTP/verification_OTP.dart';
import 'package:titans_crypto/app/presentation/home_page/home_page.dart';
import 'package:titans_crypto/app/presentation/onboarding/onboarding_view.dart';

class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    debugPrint('onGenerateRoute: ${settings.name}');
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const OnboardingView(),
          settings: const RouteSettings(name: OnboardingView.routeName),
        );
      case AuthView.routeName:
        return MaterialPageRoute(
          builder: (context) => const AuthView(),
          settings: const RouteSettings(name: AuthView.routeName),
        );
      case MyHomePage.routeName:
        return MaterialPageRoute(builder: (context)=>  const MyHomePage(),
        settings: const RouteSettings(name: MyHomePage.routeName),
        );
      case RegisterWithMobileView.routeName:
        return MaterialPageRoute(builder: (context)=>  const RegisterWithMobileView(),
        settings: const RouteSettings(name: RegisterWithMobileView.routeName)
        );
      case VerificationOTPCode.routeName:
        return MaterialPageRoute(builder: (context)=>  const VerificationOTPCode(),
        settings: const RouteSettings(name: VerificationOTPCode.routeName)
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
