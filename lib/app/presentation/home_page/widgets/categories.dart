part of home_wigets;

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<Map<String, dynamic>> categories = [
    {
      'icon': const AppIcons.deposit(),
      'text': const AppText.bodySmall(
        text: 'Deposit',
        color: ThemeColors.textColor5,
      ),
    },
    {
      'icon': const AppIcons.referral(),
      'text': const AppText.bodySmall(
        text: 'Referral',
        color: ThemeColors.textColor5,
      ),
    },
    {
      'icon': const AppIcons.gridTrading(),
      'text': const AppText.bodySmall(
        text: 'Grid Trading',
        color: ThemeColors.textColor5,
      ),
    },
    {
      'icon': const AppIcons.more(),
      'text': const AppText.bodySmall(
        text: 'More',
        color: ThemeColors.textColor5,
      ),
    },
  ];

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return AppPadding(
        padding: const AppEdgeInsets.only(
            top: AppGapSize.medium,
            left: AppGapSize.medium,
            right: AppGapSize.medium),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ...List.generate(
              categories.length,
              (index) => GestureDetector(
                  onTap: () {},
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.07,
                            width: MediaQuery.of(context).size.height * 0.07,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: ThemeColors.backgroundColor
                                      .withOpacity(0.7),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: ThemeColors.primaryColor
                                            .withOpacity(0.1),
                                        blurRadius: 10)
                                  ]),
                              child: categories[index]['icon'],
                            )),
                        categories[index]['text']
                      ])))
        ]));
  }
}
