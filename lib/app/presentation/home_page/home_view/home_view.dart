part of home_page;

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: ThemeColors.backgroundColor,
        leading: const AppPadding.small(
            child: CircleAvatar(child: Icon(Icons.person))),
        actions: [
          IconButton(
            icon: const AppIcons.search(),
            onPressed: () {},
          ),
          IconButton(
            icon: const AppIcons.scanner(),
            onPressed: () {},
          ),
          IconButton(
            icon: const AppIcons.notif(),
            onPressed: () {
              Navigator.pushNamed(context, '/notificationView');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Categories(),
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
                  const CategoryCoin(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
