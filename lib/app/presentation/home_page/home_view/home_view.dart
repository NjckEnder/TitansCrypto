import 'package:flutter/material.dart';
import 'package:titans_crypto/app/presentation/home_page/widgets/home_widgets.dart';
import 'package:titans_crypto/app/widgets/app_widgets.dart';
import 'package:titans_crypto/theme/config/theme_data.dart';
import 'package:titans_crypto/theme/helper/helper.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColors.backgroundColor,
        leading: const AppPadding.small(
            child: CircleAvatar(child: Icon(Icons.person))),
        actions: const [
          AppIcons.search(),
          AppPadding(
            padding: AppEdgeInsets.symmetric(horizontal: AppGapSize.medium),
            child: AppIcons.scanner(),
          ),
          AppIcons.notif(),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: GridView.builder(
                  itemCount: 4 * 2,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        color: Colors.amber,
                      ),
                    );
                  })),
          Expanded(
              flex: 3,
              child: AppPadding(
                padding: const AppEdgeInsets.only(top: AppGapSize.medium),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppPadding(
                      padding: const AppEdgeInsets.symmetric(
                          horizontal: AppGapSize.medium),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: ThemeColors.labelColor2.withOpacity(0.5),
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppPadding.small(
                              child: Stack(
                                children: [
                                  SizedBox(
                                    height: 52,
                                    width: 52,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              AppImageAssets.backgroundPayment),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const AppPadding(
                                    padding: AppEdgeInsets.only(left: AppGapSize.small),
                                    child: SizedBox(
                                      height: 58,
                                      width: 52,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image:
                                                AssetImage(AppImageAssets.rocket),
                                                fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  AppText.bodyLarge(
                                    text: 'P2P Trading',
                                    color: ThemeColors.backgroundColor,
                                  ),
                                  AppText.bodyLarge(
                                    text: 'Bank Transfer, Paypal Revolut ',
                                    color: ThemeColors.textColor2,
                                    textAlign: TextAlign.start,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            PaymenButton(onPressed: () {  },),
                            // AppPadding(
                            //   padding: const AppEdgeInsets.only(
                            //       right: AppGapSize.medium),
                            //   child: DecoratedBox(
                            //     decoration: BoxDecoration(
                            //       color: ThemeColors.labelColor2,
                            //       borderRadius: BorderRadius.circular(16),
                            //     ),
                            //     child: const AppPadding.medium(
                            //         child: AppIcons.arrowForward(
                            //       color: ThemeColors.textColor4,
                            //     )),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                    const AppPadding(
                      padding:
                          AppEdgeInsets.symmetric(horizontal: AppGapSize.medium),
                      child: AppText.titleSmall(
                        text: 'Recent Coin',
                        color: ThemeColors.backgroundColor,
                      ),
                    ),
                    const AppPadding(
                      padding:
                          AppEdgeInsets.symmetric(horizontal: AppGapSize.medium),
                      child: AppText.titleSmall(
                        text: 'Top Coins',
                        color: ThemeColors.backgroundColor,
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
