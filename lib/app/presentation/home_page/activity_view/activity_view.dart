part of home_page;

class ActivityView extends StatefulWidget {
  const ActivityView({super.key});

  @override
  State<ActivityView> createState() => _ActivityViewState();
}

class _ActivityViewState extends State<ActivityView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const AppPadding.small(
            child: CircleAvatar(child: Icon(Icons.person))),
      ),
      backgroundColor: ThemeColors.backgroundColor,
      body: AppPadding(
        padding: const AppEdgeInsets.symmetric(horizontal: AppGapSize.medium),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppPadding(
              padding: AppEdgeInsets.only(top: AppGapSize.medium),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: ThemeColors.labelColor1,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const AppPadding.medium(child: AppIcons.coin()),
                        const Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: AppText.bodyMedium(
                              text: 'Deposit',
                              color: ThemeColors.textColor5,
                            ),
                          ),
                        ),
                        AppPadding(
                            padding: const AppEdgeInsets.only(
                                right: AppGapSize.medium),
                            child: IconButton(
                                icon: const AppIcons.arrowForward(),
                                onPressed: () {})),
                      ],
                    ),
                    const Divider(
                        color: ThemeColors.backgroundColor, thickness: 0.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const AppPadding.medium(child: AppIcons.walletTick()),
                        const Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: AppText.bodyMedium(
                              text: 'Withdrawals',
                              color: ThemeColors.textColor5,
                            ),
                          ),
                        ),
                        AppPadding(
                            padding: const AppEdgeInsets.only(
                                right: AppGapSize.medium),
                            child: IconButton(
                              icon: const AppIcons.arrowForward(),
                              onPressed: () {},
                            )),
                      ],
                    ),
                    const Divider(
                        color: ThemeColors.backgroundColor, thickness: 0.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const AppPadding.medium(child: AppIcons.shoppingCart()),
                        const Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: AppText.bodyMedium(
                              text: 'Buy Order',
                              color: ThemeColors.textColor5,
                            ),
                          ),
                        ),
                        AppPadding(
                            padding: const AppEdgeInsets.only(
                                right: AppGapSize.medium),
                            child: IconButton(
                              icon: const AppIcons.arrowForward(),
                              onPressed: () {},
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const AppPadding(
                padding: AppEdgeInsets.symmetric(vertical: AppGapSize.large),
                child: AppText.titleSmall(
                  text: 'Recent Activity',
                  color: ThemeColors.textColor1,
                )),

          ],
        ),
      ),
    );
  }
}
