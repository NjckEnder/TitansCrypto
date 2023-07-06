part of app_widgets;

class AppIcons extends StatelessWidget {
  final Color? color;
  final String _urlIcon;

  const AppIcons.google({super.key, this.color})
      : _urlIcon = AppIconsAssets.google;

  const AppIcons.facebook({super.key, this.color})
      : _urlIcon = AppIconsAssets.facebook;

  const AppIcons.fingerOn({super.key, this.color})
      : _urlIcon = AppIconsAssets.fingerOn;

  const AppIcons.eyeSlash({super.key, this.color})
      : _urlIcon = AppIconsAssets.eyeSlash;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(_urlIcon,
        colorFilter: color != null
            ? ColorFilter.mode(
                color!,
                BlendMode.srcIn,
              )
            : null);
  }
}
