import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:titans_crypto/app/data/models/onboarding_model.dart';
import 'package:titans_crypto/app/widgets/app_widgets.dart';
import 'package:titans_crypto/theme/config/theme_data.dart';
import 'package:titans_crypto/theme/helper/helper.dart';

class OnboardingView extends StatefulWidget {
  static const String routeName = "/onboardingView";
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final pageController = PageController();
  final onboardListData = OnboardModel.lstData;

  int currentSlide = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppViewLayout(
      mobileView: Scaffold(
          backgroundColor: ThemeColors.backgroundColor,
          body: AppSizeScale(
              ratioHeight: 1,
              ratioWidth: 1,
              child: DecoratedBox(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage(AppImageAssets.backgroundOnboarding),
                          fit: BoxFit.fill)),
                  child: Column(
                    children: [
                      Expanded(
                        child: PageView.builder(
                            onPageChanged: (index) {
                              currentSlide = index;
                            },
                            controller: pageController,
                            itemCount: onboardListData.length,
                            itemBuilder: (context, index) {
                              final item = onboardListData[index];
                              return AppPadding(
                                  padding: const AppEdgeInsets.symmetric(
                                      horizontal: AppGapSize.medium),
                                  child: Column(
                                    children: [
                                      AppPadding(
                                        padding: const AppEdgeInsets.symmetric(
                                            vertical: AppGapSize.medium),
                                        child: AppSizeScale(
                                            ratioHeight: 0.5,
                                            ratioWidth: 1,
                                            child: item.image),
                                      ),
                                      AppText.bodyLarge(
                                        text: item.title,
                                        color: ThemeColors.textColor1,
                                      ),
                                      AppPadding(
                                        padding: const AppEdgeInsets.symmetric(
                                            vertical: AppGapSize.medium),
                                        child: AppText.bodyMedium(
                                          text: item.description,
                                          color: ThemeColors.textColor4,
                                        ),
                                      ),
                                    ],
                                  ));
                            }),
                      ),
                      SmoothPageIndicator(
                          controller: pageController,
                          count: onboardListData.length,
                          effect: const WormEffect(
                              dotColor: ThemeColors.dotColor,
                              activeDotColor: ThemeColors.textColor4,
                              dotHeight: 12,
                              dotWidth: 12)),
                      AppPadding(
                        padding: const AppEdgeInsets.only(
                            top: AppGapSize.medium, bottom: AppGapSize.large),
                        child: AppButton.min(
                          title: 'Next',
                          onPressed: () {
                            pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease);
                            if (currentSlide == 2) {
                              Navigator.pushReplacementNamed(context, '/authView');
                            }
                          },
                        ),
                      )
                    ],
                  )))),
    );
  }
}
