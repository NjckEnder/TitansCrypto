import 'package:flutter/material.dart';
import 'package:titans_crypto/app/widgets/app_widgets.dart';
import 'package:titans_crypto/theme/config/theme_data.dart';

class RegisterWithMobileView extends StatefulWidget {
  static const String routeName = "/registerMobile";
  const RegisterWithMobileView({super.key});

  @override
  State<RegisterWithMobileView> createState() => _RegisterWithMobileViewState();
}

class _RegisterWithMobileViewState extends State<RegisterWithMobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: true,
        // leading: const Icon(Icons.arrow_back, color: ThemeColors.textColor4,),
        title: const AppText.titleMedium(text: 'Sign Up', color: ThemeColors.textColor2,),
      ),
    );
  }
}
