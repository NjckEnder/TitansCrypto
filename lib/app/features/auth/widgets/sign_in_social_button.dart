part of sign_in_view;

class SignInSocialButton extends StatelessWidget {
  final String title;
  final Widget iconWidget;
  final VoidCallback onPressed;

  const SignInSocialButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.iconWidget,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return ElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
          backgroundColor: MaterialStateProperty.all(ThemeColors.textColor1),
          shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                  // side: const BorderSide(color: Color(0xFFF4F4F4), width: 1),
                  borderRadius: BorderRadius.circular(16.0)))),
      onPressed: onPressed,
      child: SizedBox(
        height: kToolbarHeight,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconWidget,
            AppPadding(
                padding: const AppEdgeInsets.symmetric(
                    horizontal: AppGapSize.small),
                child: AppText.titleSmall(
                  text: title,
                  color: ThemeColors.backgroundColor,
                ))
          ],
        ),
      ),
    );
  }
}
