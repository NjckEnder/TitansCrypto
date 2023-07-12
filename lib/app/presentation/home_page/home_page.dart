import 'package:flutter/material.dart';
import 'package:titans_crypto/app/presentation/home_page/home_view/home_view.dart';
import 'package:titans_crypto/app/widgets/app_widgets.dart';
import 'package:titans_crypto/theme/config/theme_data.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/homePage";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentSelect = 0;

  final screen = [
    const Homeview(),
    const Center(
      child: Text('Markets'),
    ),
    const Center(
      child: Text('Trades'),
    ),
    const Center(
      child: Text('Activity'),
    ),
    const Center(
      child: Text('Wallets'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return AppViewLayout(
      mobileView: Scaffold(
          bottomNavigationBar: AppPadding.medium(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: NavigationBar(
                animationDuration: const Duration(seconds: 1),
                selectedIndex: currentSelect,
                onDestinationSelected: (index) {
                  setState(() {
                    currentSelect = index;
                  });
                },
                destinations: const [
                  NavigationDestination(
                    icon: AppIcons.home(),
                    label: 'Home',
                    selectedIcon:  AppIcons.home(color: ThemeColors.primaryColor),
                  ),
                  NavigationDestination(
                    icon: AppIcons.market(),
                    label: 'Markets',
                    selectedIcon: AppIcons.market(color: ThemeColors.primaryColor),
                  ),
                  NavigationDestination(
                    icon: AppIcons.trade(),
                    label: 'Trades',
                    selectedIcon: AppIcons.trade(color: ThemeColors.primaryColor),
                  ),
                  NavigationDestination(
                    icon: AppIcons.activity(),
                    label: 'Activity',
                    selectedIcon: AppIcons.activity(color: ThemeColors.primaryColor),
                  ),
                  NavigationDestination(
                    icon: AppIcons.wallet(),
                    label: 'Wallets',
                    selectedIcon: AppIcons.wallet(color: ThemeColors.primaryColor),
                  ),
                ],
              ),
            ),
          ),
          body: screen[currentSelect]),
    );
  }
}
