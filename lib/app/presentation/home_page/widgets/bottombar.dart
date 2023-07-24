part of home_wigets;

class BackgroundBottomBar extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  final Function(int) onTap;
  final int currentIndex;
  final Widget body;

  const BackgroundBottomBar({
    super.key,
    required this.onTap,
    this.currentIndex = 0,
    required this.items,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppSizeScale(
        ratioHeight: 1,
        ratioWidth: 1,
        child: Stack(
          children: [
            body,
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: AppPadding.medium(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: ThemeColors.backgroundColor.withOpacity(0.5),
                        blurRadius: 40,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BottomNavigationBar(
                      currentIndex: currentIndex,
                      onTap: onTap,
                      items: items,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
