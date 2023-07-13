part of home_wigets;

class PaymenButton extends StatelessWidget {
  final VoidCallback onPressed;
  const PaymenButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppPadding(
      padding: AppEdgeInsets.only(right: AppGapSize.medium),
      child: ElevatedButton(
        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            backgroundColor:
                MaterialStateProperty.all(ThemeColors.labelColor2)),
        onPressed: onPressed,
        child: AppPadding(
          padding: AppEdgeInsets.symmetric(vertical: AppGapSize.medium),
          child: AppIcons.arrowForward(),
        ),
      ),
    );
  }
}
