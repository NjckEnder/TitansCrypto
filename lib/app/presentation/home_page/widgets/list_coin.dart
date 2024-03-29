part of home_wigets;

class ListCoin extends StatelessWidget {
  const ListCoin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppSizeScale(
      ratioHeight: 0.98,
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.7),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return AppPadding(
            padding: const AppEdgeInsets.only(
                top: AppGapSize.medium,
                left: AppGapSize.small,
                right: AppGapSize.small),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: ThemeColors.textColor1,
                borderRadius: BorderRadius.circular(16),
              ),
              // boxShadow: const [
              //   BoxShadow(
              //       color: ThemeColors.labelColor2,
              //       blurRadius: 20,
              //       blurStyle: BlurStyle.outer)
              // ]),
              child: AppPadding.small(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppText.bodyLarge(text: '40,059.83'),
                        AppIcons.btcSmall()
                      ],
                    ),
                    Row(
                      children: const [
                        AppPadding(
                          padding: AppEdgeInsets.only(right: AppGapSize.small),
                          child: AppText.bodyMedium(
                            text: 'BTC/BUSD',
                            color: ThemeColors.backgroundColor,
                          ),
                        ),
                        AppText.bodySmall(text: '+0.81%'),
                      ],
                    ),
                    AppSizeScale(
                      ratioHeight: 0.05,
                      child: Center(
                        child: LineChart(
                          LineChartData(
                            minX: 0,
                            maxX: 15,
                            minY: 0,
                            maxY: 8,
                            borderData: FlBorderData(show: false),
                            titlesData: FlTitlesData(show: false),
                            gridData: FlGridData(show: false),
                            lineBarsData: [
                              LineChartBarData(
                                  spots: [
                                    const FlSpot(0, 4),
                                    const FlSpot(1, 2),
                                    const FlSpot(2, 7),
                                    const FlSpot(3, 1),
                                    const FlSpot(4, 4),
                                    const FlSpot(5, 3.5),
                                    const FlSpot(6, 5),
                                    const FlSpot(7, 3),
                                    const FlSpot(8, 4),
                                    const FlSpot(9, 3.2),
                                    const FlSpot(10, 3.8),
                                    const FlSpot(11, 2),
                                    const FlSpot(12, 3),
                                    const FlSpot(13, 8),
                                    const FlSpot(14, 7),
                                    const FlSpot(15, 0),
                                  ],
                                  isCurved: true,
                                  color: ThemeColors.primaryColor,
                                  dotData: FlDotData(show: false),
                                  belowBarData: BarAreaData(
                                      show: true,
                                      gradient: LinearGradient(
                                          colors: [
                                            ThemeColors.primaryColor
                                                .withOpacity(0.5),
                                            ThemeColors.textColor1.withOpacity(0.5),
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter)))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
