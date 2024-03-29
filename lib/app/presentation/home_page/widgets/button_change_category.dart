part of home_wigets;


class ButtonChangeCategory extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final Color? color;
  final Color? titleColor;

  const ButtonChangeCategory({
    super.key,
    this.onPressed,
    required this.title,
    this.color,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height * 0.06;
    // double width = MediaQuery.of(context).size.width * 0.23;
    return SizedBox(
        // width: width,
        // height: height,
        child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ElevatedButton(
                onPressed: onPressed,
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                    backgroundColor: MaterialStateProperty.all(color),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)))),
                child: FittedBox(
                    child: Text(
                  title,
                  style: ThemeText.bodyMedium.copyWith(color: titleColor),
                )))));
  }
}