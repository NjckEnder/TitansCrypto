part of home_page;

class MarketsView extends StatefulWidget {
  const MarketsView({super.key});

  @override
  State<MarketsView> createState() => _MarketsViewState();
}

class _MarketsViewState extends State<MarketsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            floating: true,
            pinned: true,
            actions: [
              PopupMenuButton(
                  color: ThemeColors.labelColor2.withOpacity(0.1),
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                            child: AppText.bodyMedium(
                          text: 'Price alert',
                          color: ThemeColors.textColor2,
                        )),
                        const PopupMenuItem(
                            child: AppText.bodyMedium(
                          text: 'Volatility basis',
                          color: ThemeColors.textColor2,
                        )),
                        const PopupMenuItem(
                            child: AppText.bodyMedium(
                          text: 'Floating window',
                          color: ThemeColors.textColor2,
                        )),
                      ])
            ],
            title: SizedBox(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Searching...',
                    prefixIcon:
                        const AppPadding.small(child: AppIcons.search()),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: ThemeColors.backgroundColor),
                        borderRadius: BorderRadius.circular(22)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: ThemeColors.backgroundColor),
                        borderRadius: BorderRadius.circular(22))),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: AppPadding(
              padding:
                  const AppEdgeInsets.symmetric(horizontal: AppGapSize.medium),
              child: Column(
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: ThemeColors.labelColor1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonChangeMarkets(
                          title: 'Convert',
                          titleColor: ThemeColors.textColor5,
                          color: ThemeColors.labelColor1,
                          onPressed: () {},
                        ),
                        ButtonChangeMarkets(
                          title: 'Spot',
                          titleColor: ThemeColors.textColor5,
                          color: ThemeColors.labelColor1,
                          onPressed: () {},
                        ),
                        ButtonChangeMarkets(
                          title: 'Margin',
                          titleColor: ThemeColors.textColor5,
                          color: ThemeColors.labelColor1,
                          onPressed: () {},
                        ),
                        ButtonChangeMarkets(
                          title: 'Fiat',
                          titleColor: ThemeColors.textColor5,
                          color: ThemeColors.labelColor1,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
