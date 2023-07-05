import 'package:flutter/material.dart';
import 'package:titans_crypto/app/presentation/auth/widgets/widgets_auth.dart';
import 'package:titans_crypto/app/widgets/app_widgets.dart';
import 'package:titans_crypto/theme/config/theme_data.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    _emailController;
    _passwordController;
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          )
        ),
        const AppText.bodyMedium(
          text: 'Password',
          color: ThemeColors.textColor2,
        ),
        AppPadding(
          padding: const AppEdgeInsets.symmetric(vertical: AppGapSize.small),
          child: AppTextFormField.password(
          hintText: 'Enter your password',
          controller: _passwordController,
          )
        ),
        AppPadding(
            padding: const AppEdgeInsets.only(top: AppGapSize.medium),
            child: AppButton.max(
              title: 'Sign up',
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
