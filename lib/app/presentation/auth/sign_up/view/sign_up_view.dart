import 'package:flutter/material.dart';
import 'package:titans_crypto/app/presentation/auth/sign_in/view/sign_in_view.dart';
import 'package:titans_crypto/app/widgets/app_widgets.dart';
import 'package:titans_crypto/theme/config/theme_data.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppPadding(
            padding: AppEdgeInsets.symmetric(vertical: AppGapSize.medium),
            child: AppText.headlineLarge(
              text: 'Sign up',
              color: ThemeColors.textColor1,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            AppText.bodyMedium(
              text: 'Email',
              color: ThemeColors.textColor2,
            ),
            AppText.bodyMedium(
              text: 'Register with mobile',
            )
          ],
        ),
        AppPadding(
            padding: const AppEdgeInsets.symmetric(vertical: AppGapSize.small),
            child: AppTextFormField.email(
              hintText: 'Please enter email',
              controller: TextEditingController(),
            )),
        const AppText.bodyMedium(
          text: 'Password',
          color: ThemeColors.textColor2,
        ),
        AppPadding(
            padding: const AppEdgeInsets.symmetric(vertical: AppGapSize.small),
            child: AppTextFormField.password(
              hintText: 'Enter your password',
              controller: TextEditingController(),
            )),
        AppPadding(
            padding: const AppEdgeInsets.only(top: AppGapSize.medium),
            child: AppButton.max(
              title: 'Sign in',
              onPressed: () {},
            )),
        const AppPadding(
            padding: AppEdgeInsets.symmetric(vertical: AppGapSize.medium),
            child: Center(
                child: AppText.bodyMedium(
              text: 'Or login with ',
              color: ThemeColors.textColor4,
            ))),
        const SignInRowButton(),
      ],
    );
  }
}
