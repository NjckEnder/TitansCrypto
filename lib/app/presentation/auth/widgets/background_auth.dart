part of widgets;

class AppBackground extends StatelessWidget {
  // final bool isLoading;
  final Widget body;
  final PreferredSizeWidget? appBar;

  const AppBackground({
    super.key,
    required this.body,
    // this.isLoading = false,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: AppSizeScale(
          ratioHeight: 1,
          ratioWidth: 1,
          child: DecoratedBox(
            decoration: const BoxDecoration(
                color: ThemeColors.backgroundColor,
                image: DecorationImage(
                    image: AssetImage(AppImageAssets.backgroundAuth1),
                    fit: BoxFit.fill)),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [body],
              ),
            ),
          )),
    );
  }
}
