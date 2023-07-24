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
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppSizeScale(
              ratioHeight: 0.23,
              backgroundColor: Colors.amber,
                child: GridView.builder(
                    itemCount: 4 * 2,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemBuilder: (context, index) {
                      return AppPadding.small(
                        child: Container(
                          height: 50,
                          width: 50,
                          color: Colors.black54,
                        ),
                      );
                    })),
            AppPadding(
              padding: const AppEdgeInsets.only(top: AppGapSize.medium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Payment(
                    image: const AssetImage(AppImageAssets.rocket),
                    text1: 'P2P Trading',
                    text2: 'Bank Transfer, Paypal Revolut',
                    onPressed: () {},
                  ),
                  AppPadding(
                    padding: const AppEdgeInsets.symmetric(
                        vertical: AppGapSize.small),
                    child: Payment(
                      image: const AssetImage(AppImageAssets.credit),
                      text1: 'Credit/Debit Card',
                      text2: 'Visa, Mastercard',
                      onPressed: () {},
                    ),
                  ),
                  const AppPadding(
                    padding: AppEdgeInsets.symmetric(
                        horizontal: AppGapSize.medium),
                    child: AppText.titleSmall(
                      text: 'Recent Coin',
                      color: ThemeColors.backgroundColor,
                    ),
                  ),
                  const CoinList(),
                  const AppPadding(
                    padding: AppEdgeInsets.symmetric(
                        horizontal: AppGapSize.medium),
                    child: AppText.titleSmall(
                      text: 'Top Coins',
                      color: ThemeColors.backgroundColor,
                    ),
                  ),
                  const CoinList(),
                  const SizedBox(height: 100,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
