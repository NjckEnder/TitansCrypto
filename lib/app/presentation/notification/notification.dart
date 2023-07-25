import 'package:flutter/material.dart';
import 'package:titans_crypto/app/widgets/app_widgets.dart';
import 'package:titans_crypto/theme/config/theme_data.dart';

class NotificationView extends StatelessWidget {
  static const String routeName = "/notificationView";
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: ThemeColors.backgroundColor,
        elevation: 0.5,
        title: const AppText.titleMedium(
          text: 'Notification',
          color: ThemeColors.textColor1,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const AppIcons.arrowBack(),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: AppPadding(
        padding: const AppEdgeInsets.symmetric(horizontal: AppGapSize.medium),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: const [
                AppPadding(
                    padding: AppEdgeInsets.only(right: AppGapSize.medium),
                    child: AppText.bodyMedium(
                      text: 'Mark Read All',
                      color: ThemeColors.textColor4,
                    )),
                AppIcons.filter()
              ]),
              AppSizeScale(
                ratioHeight: 1,
                child: ListView.builder(
                    clipBehavior: Clip.none,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AppText.bodyLarge(
                            text: 'Withdrawal Successful',
                            color: ThemeColors.textColor5,
                            textAlign: TextAlign.start,
                          ),
                          const AppText.bodyMedium(
                            text:
                                'You have successfully withdrawed lorem ipsum dolor sit ',
                            color: ThemeColors.textColor4,
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          AppPadding(
                            padding: const AppEdgeInsets.symmetric(vertical: AppGapSize.small),
                            child: Divider(
                              color: ThemeColors.textColor1.withOpacity(0.2),
                              thickness: 0.5
                            ),
                          )
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
