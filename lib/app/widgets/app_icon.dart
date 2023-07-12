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

  const AppIcons.home({super.key, this.color}) : _urlIcon = AppIconsAssets.home;

  const AppIcons.market({super.key, this.color})
      : _urlIcon = AppIconsAssets.market;

  const AppIcons.trade({super.key, this.color})
      : _urlIcon = AppIconsAssets.trade;

  const AppIcons.activity({super.key, this.color})
      : _urlIcon = AppIconsAssets.activity;

  const AppIcons.wallet({super.key, this.color})
      : _urlIcon = AppIconsAssets.wallet;

  const AppIcons.notif({super.key, this.color})
      : _urlIcon = AppIconsAssets.notif;

  const AppIcons.notifOn({super.key, this.color})
      : _urlIcon = AppIconsAssets.notifOn;

  const AppIcons.scanner({super.key, this.color})
      : _urlIcon = AppIconsAssets.scanner;

  const AppIcons.search({super.key, this.color})
      : _urlIcon = AppIconsAssets.search;

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
