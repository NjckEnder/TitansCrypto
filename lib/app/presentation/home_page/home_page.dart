import 'package:flutter/material.dart';
import 'package:titans_crypto/app/presentation/home_page/home_view/home_view.dart';
import 'package:titans_crypto/app/presentation/home_page/widgets/home_widgets.dart';
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
      mobileView: BackgroundBottomBar(
        currentIndex: currentSelect,
        onTap: (index) {
          setState(() {
            currentSelect = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: AppIcons.home(color: ThemeColors.textColor4),
            activeIcon: AppIcons.home(color: ThemeColors.primaryColor),
            label: 'Home',
            // backgroundColor: ThemeColors.backgroundColor,
          ),
          BottomNavigationBarItem(
            icon: AppIcons.market(color: ThemeColors.textColor4),
            activeIcon: AppIcons.market(color: ThemeColors.primaryColor),
            label: 'Markets',
          ),
          BottomNavigationBarItem(
            icon: AppIcons.trade(color: ThemeColors.textColor4),
            activeIcon: AppIcons.trade(color: ThemeColors.primaryColor),
            label: 'Trades',
          ),
          BottomNavigationBarItem(
            icon: AppIcons.activity(color: ThemeColors.textColor4),
            activeIcon: AppIcons.activity(color: ThemeColors.primaryColor),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: AppIcons.wallet(color: ThemeColors.textColor4),
            activeIcon: AppIcons.wallet(color: ThemeColors.primaryColor),
            label: 'Wallets',
          ),
        ],
        body: screen[currentSelect],
      ),
    );
  }
}
