import 'package:flutter/material.dart';
import 'package:titans_crypto/app/widgets/app_widgets.dart';
import 'package:titans_crypto/theme/config/theme_data.dart';
import 'package:titans_crypto/theme/helper/helper.dart';

class SuccessfulRegistration extends StatefulWidget {
  static const String routeName = "/successfulRegistration";
  const SuccessfulRegistration({super.key});

  @override
  State<SuccessfulRegistration> createState() => _SuccessfulRegistrationState();
}

class _SuccessfulRegistrationState extends State<SuccessfulRegistration> {
  @override
  Widget build(BuildContext context) {
    return AppViewLayout(
      mobileView: Scaffold(
          body: AppSizeScale(
        ratioHeight: 1,
        ratioWidth: 1,
        backgroundColor: ThemeColors.backgroundColor,
        child: DecoratedBox(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImageAssets.backgroundAuth2),
                  fit: BoxFit.fill)),
          child: AppPadding(
            padding:
                const AppEdgeInsets.symmetric(horizontal: AppGapSize.medium),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AppImageAssets.successful),
                const AppPadding(
                  padding: AppEdgeInsets.symmetric(vertical: AppGapSize.veryLarge),
                  child: AppText.headlineLarge(
                    text: 'Your account has been successfully created!',
                    color: ThemeColors.textColor1,
                  ),
                ),
                AppButton.max(
                  title: 'Get Started',
                  onPressed: () {Navigator.pushReplacementNamed(context, '/authView');},
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
