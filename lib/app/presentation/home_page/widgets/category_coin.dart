part of home_wigets;

class CategoryCoin extends StatefulWidget {
  const CategoryCoin({super.key});

  @override
  State<CategoryCoin> createState() => _CategoryCoinState();
}

class _CategoryCoinState extends State<CategoryCoin> {
  List<String> categoryCoin = [
    'Favorite coin',
    'Popular coin',
    'Increase',
    'Decrease',
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return AppPadding(
      padding: const AppEdgeInsets.only(
          left: AppGapSize.medium,
          right: AppGapSize.medium,
          top: AppGapSize.medium,
          // bottom: AppGapSize.small,
          ),
      child: Column(
        children: [
          AppSizeScale(
            ratioHeight: 0.05,
            child: ListView.builder(
              itemCount: categoryCoin.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return AppPadding(
                  padding: const AppEdgeInsets.only(right: AppGapSize.medium),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        current = index;
                      });
                    },
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: current == index
                              ? ThemeColors.labelColor2.withOpacity(0.2)
                              : ThemeColors.labelColor1),
                      child: AppPadding.small(
                        child: AppText.bodyMedium(
                          text: categoryCoin[index],
                          color: current == index
                              ? ThemeColors.textColor5
                              : ThemeColors.textColor4,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const ListCoin()
        ],
      ),
    );
  }
}
