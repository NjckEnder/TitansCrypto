import 'package:flutter/material.dart';
import 'package:titans_crypto/app/widgets/widgets.dart';
import 'package:titans_crypto/theme/config/config.dart';
import 'package:titans_crypto/theme/helper/helper.dart';

class SplashView extends StatefulWidget {
  static const String routeName = "/splashView";
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  // final SplashBloc _splashBloc = SplashBloc();
  // @override
  // void initState() {
  //   _splashBloc.add(SetSplash());
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ThemeColors.backgroundColor,
      body: AppSizeScale(
          ratioHeight: 1,
          ratioWidth: 1,
          child: DecoratedBox(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(AppImageAssets.backgroundSplash),
              fit: BoxFit.fill,
            )),
            child: Center(
              child: Image(image: AssetImage(AppImageAssets.logoTitans)),
            ),
          )),
    );
  }
}

// DecoratedBox(
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//               image: AssetImage(AppImageAssets.backgroundSplash),
//               fit: BoxFit.fill,
//             )),
//             child: Center(
//               child: Image(image: AssetImage(AppImageAssets.logoTitans)),
//             ),
//           )

  // @override
  // void initState() {
  //   super.initState();

  //   Future.delayed(
  //     const Duration(seconds: 2),
  //     () {
  //       serviceLocator<CheckUserLoginStatus>()
  //           .checkIfUserLoggedIn()
  //           .then((isUserLoggedIn) {
  //         AutoRouter.of(context).pushAndPopUntil(
  //           isUserLoggedIn
  //               ? const HomepageScreen()
  //               : const AuthenticationScreen(),
  //           predicate: (_) => false,
  //         );
  //       });
  //     },
  //   );
  // }