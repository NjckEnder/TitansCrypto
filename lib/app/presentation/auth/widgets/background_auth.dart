part of widgets;

class AppBackground extends StatelessWidget {
  // final bool isLoading;
  final Widget body;
  // final Widget? appBarWidget;

  const AppBackground({
    super.key,
    required this.body,
    // this.isLoading = false,
    // this.appBarWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppSizeScale(
          ratioHeight: 1,
          ratioWidth: 1,
          child: DecoratedBox(
            decoration: const BoxDecoration(
                color: ThemeColors.backgroundColor,
                image: DecorationImage(
                    image: AssetImage(AppImageAssets.backgroundAuth),
                    fit: BoxFit.fill)),
            child: Column(
              children: [body],
            ),
          )),
    );
  }
}
