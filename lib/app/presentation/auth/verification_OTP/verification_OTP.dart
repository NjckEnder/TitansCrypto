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
    final width = MediaQuery.of(context).size.width;
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
                const AppPadding.medium(),
                const AppText.labelLarge(
                  text: 'Please type the code we sent to',
                  color: ThemeColors.textColor2,
                ),
                const AppText.labelLarge(text: '+1 234 567 8900'),
                AppPadding(
                  padding: const AppEdgeInsets.only(
                      top: AppGapSize.large, bottom: AppGapSize.medium),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: width * 0.17,
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(12),
                            hintText: '0',
                            hintStyle: TextStyle(
                              fontSize: 28,
                              color: ThemeColors.textColor4.withOpacity(0.3),
                            ),
                          ),
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                              fontSize: 28, color: ThemeColors.textColor1),
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.17,
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(12),
                            hintText: '0',
                            hintStyle: TextStyle(
                              fontSize: 28,
                              color: ThemeColors.textColor4.withOpacity(0.3),
                            ),
                          ),
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                              fontSize: 28, color: ThemeColors.textColor1),
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.17,
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(12),
                            hintText: '0',
                            hintStyle: TextStyle(
                              fontSize: 28,
                              color: ThemeColors.textColor4.withOpacity(0.3),
                            ),
                          ),
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                              fontSize: 28, color: ThemeColors.textColor1),
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.17,
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(12),
                            hintText: '0',
                            hintStyle: TextStyle(
                              fontSize: 28,
                              color: ThemeColors.textColor4.withOpacity(0.3),
                            ),
                          ),
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                              fontSize: 28, color: ThemeColors.textColor1),
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Center(
                  child: AppText.labelLarge(
                    text: 'Resend code (30)',
                    color: ThemeColors.textColor2,
                  ),
                ),
                const Center(child: AppText.labelLarge(text: 'Resend Link')),
                const AppPadding.large(),
                AppButton.max(
                  title: 'Continue',
                  onPressed: () {},
                )
              ],
            ),
          )),
    );
  }
}
