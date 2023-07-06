import 'package:flutter/material.dart';
import 'package:titans_crypto/app/presentation/auth/widgets/widgets_auth.dart';
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
    return AppViewLayout(
      mobileView: AppBackground(
        appBar: AppBar(
          backgroundColor: ThemeColors.backgroundColor,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: ThemeColors.textColor4,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/authView');
            },
          ),
          title: const AppText.titleMedium(
            text: 'Sign Up',
            color: ThemeColors.textColor2,
          ),
        ),
        body: AppPadding(
          padding: const AppEdgeInsets.symmetric(horizontal: AppGapSize.medium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppText.headlineLarge(
                text: 'Register with mobile',
                color: ThemeColors.textColor1,
              ),
              const AppPadding(
                padding: AppEdgeInsets.only(
                    top: AppGapSize.medium, bottom: AppGapSize.veryLarge),
                child: AppText.labelLarge(
                  text:
                      'Please type your number, then we’ll send a verification code for authentication.',
                  color: ThemeColors.textColor2,
                  textAlign: TextAlign.start,
                ),
              ),
              const AppText.labelLarge(
                text: 'Mobile Number',
                color: ThemeColors.textColor2,
              ),
              AppPadding(
                padding: const AppEdgeInsets.only(
                    top: AppGapSize.small, bottom: AppGapSize.veryLarge),
                child: AppTextFormField.phone(
                    hintText: 'Enter your mobile',
                    controller: TextEditingController()),
              ),
              AppButton.max(
                title: 'Send OTP',
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, '/verificationOTPCode');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
