import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:titans_crypto/app/features/auth/bloc/auth_blocs.dart';
import 'package:titans_crypto/app/features/auth/button_auth.dart';
import 'package:titans_crypto/app/features/auth/sign_in/view/sign_in_view.dart';
import 'package:titans_crypto/app/features/auth/sign_up/view/sign_up_view.dart';
import 'package:titans_crypto/app/widgets/app_widgets.dart';
import 'package:titans_crypto/theme/config/theme_data.dart';

class AuthView extends StatefulWidget {
  static const String routeName = "/authView";
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AuthBlocs(),
        child: BlocBuilder<AuthBlocs, AuthStates>(
            // bloc: AuthBlocs.,
            builder: (context, state) {
          return AppViewLayout(
              mobileView: Scaffold(
                  backgroundColor: ThemeColors.backgroundColor,
                  // appBar: AppBar(
                  //   automaticallyImplyLeading: false,
                  //   backgroundColor: Colors.transparent,
                  //   elevation: 0,
                  // ),
                  body: SingleChildScrollView(
                    child: AppPadding(
                        padding: const AppEdgeInsets.symmetric(
                            horizontal: AppGapSize.medium),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const AppPadding.medium(),
                              DecoratedBox(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: ThemeColors.labelColor1),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        AppPadding(
                                          padding: const AppEdgeInsets.only(
                                            top: AppGapSize.small,
                                            bottom: AppGapSize.small,
                                            left: AppGapSize.small,
                                          ),
                                          child: ButtonAuth(
                                              title: 'Sign in',
                                              titleColor:
                                                  ThemeColors.textColor5,
                                              color: state is AuthStateSignIn
                                                  ? ThemeColors.backgroundColor
                                                  : ThemeColors.labelColor1,
                                              onPressed: () => _onChangeTabPage(
                                                  context, state)),
                                        ),
                                        AppPadding(
                                            padding: const AppEdgeInsets.only(
                                              top: AppGapSize.small,
                                              bottom: AppGapSize.small,
                                              right: AppGapSize.small,
                                            ),
                                            child: ButtonAuth(
                                                title: 'Sign up',
                                                titleColor:
                                                    ThemeColors.textColor5,
                                                color: state is! AuthStateSignIn
                                                    ? ThemeColors
                                                        .backgroundColor
                                                    : ThemeColors.labelColor1,
                                                onPressed: () =>
                                                    _onChangeTabPage(
                                                        context, state)))
                                      ])),
                              state is AuthStateSignIn
                                  ? const SignInView()
                                  : const SignUpView()
                            ])),
                  )));
        }));
  }

  void _onChangeTabPage(BuildContext context, AuthStates authStates) {
    final isSignIn = authStates is AuthStateSignIn;
    BlocProvider.of<AuthBlocs>(context).add(AuthEventChangeTab(isSignIn));
  }
}
