import 'package:flutter/material.dart';
import 'package:titans_crypto/app/widgets/app_widgets.dart';
import 'package:titans_crypto/theme/config/theme_data.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColors.backgroundColor,
        leading: const AppPadding.small(
            child: CircleAvatar(child: Icon(Icons.person))),
        actions: const [
          AppIcons.search(),
          AppPadding(
              padding: AppEdgeInsets.symmetric(horizontal: AppGapSize.medium),
              child: AppIcons.scanner()),
          AppIcons.notif(),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
