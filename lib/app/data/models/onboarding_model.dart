import 'package:flutter/material.dart';
import 'package:titans_crypto/app/widgets/app_widgets.dart';

class OnboardModel {
  final String title, description;
  final Widget image;

  OnboardModel({
    required this.image,
    required this.title,
    required this.description,
  });

  static final List<OnboardModel> lstData = [
    OnboardModel(
      image: const AppImages.onboard1(),
      title: 'Trade anytime anywhere',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.',
    ),
    OnboardModel(
      image: const AppImages.onboard2(),
      title: 'Save and invest at the same time',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.',
    ),
    OnboardModel(
      image: const AppImages.onboard3(),
      title: 'Transact fast and easy',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.',
    ),
  ];
}
