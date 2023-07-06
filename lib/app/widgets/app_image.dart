part of app_widgets;

class AppImages extends StatelessWidget {
  final String _urlImage;
  
  const AppImages.onboard1({super.key}) : _urlImage = AppImageAssets.onboarding1;

  const AppImages.onboard2({super.key}) : _urlImage = AppImageAssets.onboarding2;

  const AppImages.onboard3({super.key}) : _urlImage = AppImageAssets.onboarding3;

  // const AppImages.backgroundAuth({super.key}) : _urlImage = AppImageAssets.backgroundAuth;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_urlImage);
  }
}