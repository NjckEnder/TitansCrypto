import 'package:flutter/material.dart';
import 'package:titans_crypto/app/features/auth/sign_in/view/sign_in_social_button.dart';
import 'package:titans_crypto/app/widgets/app_widgets.dart';

class SignInRowButton extends StatelessWidget {
  const SignInRowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: SignInSocialButton(
          title: 'Facebook',
          iconWidget: const AppIcons.facebook(),
          onPressed: () {},
        )),
        const AppPadding.small(),
        Expanded(
          child: SignInSocialButton(
            title: 'Google',
            iconWidget: const AppIcons.google(),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
