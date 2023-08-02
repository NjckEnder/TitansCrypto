part of home_page;

class TradesView extends StatefulWidget {
  const TradesView({super.key});

  @override
  State<TradesView> createState() => _TradesViewState();
}

class _TradesViewState extends State<TradesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ButtonChangeCategory(
                    title: 'Spot',
                    titleColor: ThemeColors.textColor5,
                    color: ThemeColors.labelColor1,
                    onPressed: () {},
                  ),
                  ButtonChangeCategory(
                    title: 'Convert',
                    titleColor: ThemeColors.textColor5,
                    color: ThemeColors.labelColor1,
                    onPressed: () {},
                  ),
                  ButtonChangeCategory(
                    title: 'Margin',
                    titleColor: ThemeColors.textColor5,
                    color: ThemeColors.labelColor1,
                    onPressed: () {},
                  ),
                  ButtonChangeCategory(
                    title: 'Trading Bots',
                    titleColor: ThemeColors.textColor5,
                    color: ThemeColors.labelColor1,
                    onPressed: () {},
                  ),
                  ButtonChangeCategory(
                    title: 'P2P',
                    titleColor: ThemeColors.textColor5,
                    color: ThemeColors.labelColor1,
                    onPressed: () {},
                  ),
                  ButtonChangeCategory(
                    title: 'Block Trading',
                    titleColor: ThemeColors.textColor5,
                    color: ThemeColors.labelColor1,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
