import 'package:flutter/material.dart';

class MenuItem {

  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({required this.title, required this.subTitle, required this.link, required this.icon});

}

const appMenuItems = <MenuItem>[

  MenuItem(
    title: 'Buttons',
    subTitle: 'Flutter buttons',
    link: '/buttons',
    icon: Icons.smart_button_outlined
  ),

  MenuItem(
    title: 'Cards',
    subTitle: 'Styled container',
    link: '/cards',
    icon: Icons.credit_card
  ),

  MenuItem(
    title: 'ProgressIndicators',
    subTitle: 'General and controlled',
    link: '/progress',
    icon: Icons.refresh_rounded
  ),

  MenuItem(
    title: 'Snackbars & dialogs',
    subTitle: 'Indicators in screen',
    link: '/snackbars',
    icon: Icons.info_outline
  ),

  MenuItem(
    title: 'UI Controls + Tiles',
    subTitle: 'Some Flutter controls',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined
  ),

  MenuItem(
    title: 'App Intro',
    subTitle: 'Small Tutorial',
    link: '/tutorial',
    icon: Icons.accessibility_rounded
  ),

  MenuItem(
    title: 'Infinite Scroll & Pull to Refresh',
    subTitle: 'Yeah buddy!',
    link: '/infinite',
    icon: Icons.list_alt_rounded
  ),

  MenuItem(
    title: 'Counter Screen (Riverpod)',
    subTitle: 'State Manager',
    link: '/counter',
    icon: Icons.list_alt_rounded
  ),
];