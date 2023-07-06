import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:titans_crypto/app/presentation/auth/widgets/widgets_auth.dart';
import 'package:titans_crypto/app/widgets/app_widgets.dart';
import 'package:titans_crypto/theme/config/theme_data.dart';

class VerificationOTPCode extends StatefulWidget {
  static const String routeName = "/verificationOTPCode";
  const VerificationOTPCode({super.key});

  @override
  State<VerificationOTPCode> createState() => _VerificationOTPCodeState();
}

class _VerificationOTPCodeState extends State<VerificationOTPCode> {
  @override
  Widget build(BuildContext context) {
    return AppViewLayout(
      mobileView: AppBackground(
          appBar: AppBar(
            backgroundColor: ThemeColors.backgroundColor,
            // elevation: 0,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: ThemeColors.textColor4,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/registerMobile');
              },
            ),
            title: const AppText.titleMedium(
              text: 'Verification',
              color: ThemeColors.textColor2,
            ),
          ),
          body: AppPadding(
            padding:
                const AppEdgeInsets.symmetric(horizontal: AppGapSize.medium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppText.headlineLarge(
                  text: 'Enter your code',
                  color: ThemeColors.textColor1,
                ),
                const AppText.labelLarge(
                  text: 'Please type the code we sent to',
                  color: ThemeColors.textColor2,
                ),
                const AppText.labelLarge(text: '+1 234 567 8900'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 60,
                      height: 54,
                      child: TextFormField(
                        decoration: const InputDecoration(hintText: '0'),
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 54,
                      child: TextFormField(
                        decoration: const InputDecoration(hintText: '0'),
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 54,
                      child: TextFormField(
                        decoration: const InputDecoration(hintText: '0'),
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 54,
                      child: TextFormField(
                        decoration: const InputDecoration(hintText: '0'),
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
