import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:titans_crypto/app/data/user/firebase_auth.dart';
import 'package:titans_crypto/app/presentation/auth/sign_in/bloc/sign_in_blocs.dart';
import 'package:titans_crypto/app/presentation/auth/widgets/widgets_auth.dart';
import 'package:titans_crypto/app/widgets/app_widgets.dart';
import 'package:titans_crypto/theme/config/theme_data.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
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
    return RepositoryProvider(
      create: (context) => FirebaseAuthentication(),
      child: BlocProvider(
        create: (context) => SignInBloc(
            authRepository:
                RepositoryProvider.of<FirebaseAuthentication>(context)),
        child: BlocListener<SignInBloc, SignInState>(
          listener: (context, state) {
            if (state is SignInSuccess) {
              Navigator.pushReplacementNamed(context, '/homePage');
            }
            if (state is SignInFailState) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor: Colors.transparent,
                behavior: SnackBarBehavior.floating,
                elevation: 0,
                content: SizedBox(
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: const Color(0xffc72c41),
                            borderRadius: BorderRadius.circular(16)),
                        child: AppPadding.medium(
                          child: AppText.bodyMedium(
                              text: state.error, color: ThemeColors.textColor1),
                        ))),
              ));
            }
          },
          child: BlocBuilder<SignInBloc, SignInState>(
            builder: (context, state) {
              if (state is SignInLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppPadding(
                      padding:
                          AppEdgeInsets.symmetric(vertical: AppGapSize.medium),
                      child: AppText.headlineLarge(
                        text: 'Sign in',
                        color: ThemeColors.textColor1,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppText.bodyMedium(
                        text: 'Email',
                        color: ThemeColors.textColor2,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const AppText.bodyMedium(
                          text: 'Sign in with mobile',
                        ),
                      )
                    ],
                  ),
                  AppPadding(
                      padding: const AppEdgeInsets.symmetric(
                          vertical: AppGapSize.small),
                      child: AppTextFormField.email(
                        hintText: 'Enter your email',
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                      )),
                  const AppText.bodyMedium(
                    text: 'Password',
                    color: ThemeColors.textColor2,
                  ),
                  AppPadding(
                      padding: const AppEdgeInsets.symmetric(
                          vertical: AppGapSize.small),
                      child: AppTextFormField.password(
                        hintText: 'Enter your password',
                        controller: _passwordController,
                        suffixIcon: const AppPadding.small(
                          child: AppIcons.eyeSlash(),
                        ),
                      )),
                  const AppText.bodyMedium(text: 'Forgot password?'),
                  AppPadding(
                      padding: const AppEdgeInsets.only(top: AppGapSize.medium),
                      child: AppButton.max(
                        title: 'Sign in',
                        onPressed: () {
                          BlocProvider.of<SignInBloc>(context).add(SignIn(
                              _emailController.text, _passwordController.text));
                        },
                      )),
                  const AppPadding(
                      padding:
                          AppEdgeInsets.symmetric(vertical: AppGapSize.medium),
                      child: Center(
                          child: AppText.bodyMedium(
                        text: 'Or login with ',
                        color: ThemeColors.textColor4,
                      ))),
                  const SignInRowButton(),
                  AppPadding(
                      padding: const AppEdgeInsets.symmetric(
                          vertical: AppGapSize.medium),
                      child: Center(
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, '/homePage');
                              },
                              child: const AppIcons.fingerOn()))),
                  const Center(
                      child: AppText.bodyMedium(
                    text: 'Use fingerprint instead?',
                    color: ThemeColors.textColor2,
                  )),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
