part of home_wigets;

class Payment extends StatelessWidget {
  final void Function() onPressed;
  final ImageProvider<Object> image;//fix here
  final String text1;
  final String text2;

  const Payment({
    super.key,
    required this.onPressed,
    required this.image,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return AppPadding(
        padding: const AppEdgeInsets.symmetric(horizontal: AppGapSize.medium),
        child: DecoratedBox(
            decoration: BoxDecoration(
              color: ThemeColors.labelColor2.withOpacity(0.5),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppPadding.small(
                    child: Stack(
                      children: [
                        SizedBox(
                            height: 60,
                            width: 60,
                            child: DecoratedBox(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(image: image, fit: BoxFit.scaleDown)))),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        AppText.bodyLarge(
                            text: text1, color: ThemeColors.backgroundColor),
                        AppText.bodyLarge(
                            text: text2,
                            color: ThemeColors.textColor2,
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis)
                      ])),
                  AppPadding(
                      padding:
                          const AppEdgeInsets.only(left: AppGapSize.small, right: AppGapSize.medium),
                      child: SizedBox(
                          height: height * 0.065,
                          width: width * 0.11,
                          child: ElevatedButton(
                              style: Theme.of(context)
                                  .elevatedButtonTheme
                                  .style!
                                  .copyWith(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              ThemeColors.labelColor2),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18)))),
                              onPressed: () {},
                              child: const AppIcons.arrowForward())))
                ])));
  }
}
