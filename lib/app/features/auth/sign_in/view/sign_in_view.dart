import 'package:flutter/material.dart';
import 'package:titans_crypto/app/widgets/widgets.dart';
import 'package:titans_crypto/theme/config/config.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppText.headlineSmall(
          text: 'Sign in',
          color: ThemeColors.textColor1,
          fontWeight: FontWeight.w400,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            AppText.bodySmall(
              text: 'Email',
              color: ThemeColors.textColor2,
              fontWeight: FontWeight.w400,
            ),
            AppText.bodySmall(
              text: 'Sign in with mobile',
              fontWeight: FontWeight.w400,
            ),
          ],
        )
      ],
    );
  }
}
