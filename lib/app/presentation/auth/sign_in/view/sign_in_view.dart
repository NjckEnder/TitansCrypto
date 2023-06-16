library sign_in_view;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:titans_crypto/app/presentation/auth/bloc/auth_blocs.dart';
import 'package:titans_crypto/app/presentation/auth/sign_in/bloc/sign_in_blocs.dart';
import 'package:titans_crypto/app/widgets/app_widgets.dart';
import 'package:titans_crypto/theme/config/theme_data.dart';

part '../../widgets/sign_in_social_row.dart';
part '../../widgets/sign_in_social_button.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    //** TODO fix bug here*/
    return BlocProvider<AuthBlocs>(
      create: (context) => AuthBlocs(),
      child: BlocProvider<SignInBloc>(
        create: (context) => SignInBloc(),
        child: BlocBuilder<SignInBloc, SignInState>(
          builder: (context, state) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppPadding(
                  padding: AppEdgeInsets.symmetric(vertical: AppGapSize.medium),
                  child: AppText.headlineLarge(
                    text: 'Sign in',
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
                    text: 'Sign in with mobile',
                  )
                ],
              ),
              AppPadding(
                  padding:
                      const AppEdgeInsets.symmetric(vertical: AppGapSize.small),
                  child: AppTextFormField.email(
                      hintText: 'Enter your email',
                      onChange: (email) =>
                          context.read<SignInBloc>().add(EmailEvent(email)))),
              const AppText.bodyMedium(
                text: 'Password',
                color: ThemeColors.textColor2,
              ),
              AppPadding(
                  padding:
                      const AppEdgeInsets.symmetric(vertical: AppGapSize.small),
                  child: AppTextFormField.password(
                      hintText: 'Enter your password',
                      onChange: (password) => context
                          .read<SignInBloc>()
                          .add(PasswordEvent(password)))),
              const AppText.bodyMedium(text: 'Forgot password?'),
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
              const AppPadding(
                  padding: AppEdgeInsets.symmetric(vertical: AppGapSize.medium),
                  child: Center(child: AppIcons.fingerOn())),
              const Center(
                  child: AppText.bodyMedium(
                text: 'Use fingerprint instead?',
                color: ThemeColors.textColor2,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
