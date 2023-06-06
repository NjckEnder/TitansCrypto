part of widgets;

class AppImages extends StatelessWidget {
  final String _urlImage;
  
  const AppImages.onboard1({super.key}) : _urlImage = AppImageAssets.onboarding1;

  const AppImages.onboard2({super.key}) : _urlImage = AppImageAssets.onboarding2;

  const AppImages.onboard3({super.key}) : _urlImage = AppImageAssets.onboarding3;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_urlImage);
  }
}