
import 'package:fl_components/models/menu_option.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

class AppRouter {
  static const String initialRoute = 'home';
  static final menuOption = <MenuOption> [
    MenuOption(
      route: 'home',
      icon: Icons.home,
      name: 'Home',
      screen: const HomeScreen(),
    ),
    MenuOption(
      route: 'listview1',
      icon: Icons.list_alt,
      name: 'Listview1',
      screen: const ListView1Screen(),
    ),
    MenuOption(
      route: 'listview2',
      icon: Icons.list_alt,
      name: 'Listview2',
      screen: const ListView2Screen(),
    ),
    MenuOption(
      route: 'alert',
      icon: Icons.add_alert_outlined,
      name: 'Alertas',
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.add_alert,
      name: 'Card',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'avatar',
      icon: Icons.person,
      name: 'Avatar',
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: 'animated',
      icon: Icons.animation,
      name: 'Animated',
      screen: const AnimatedScreen(),
    ),
    MenuOption(
      route: 'inputs',
      icon: Icons.input,
      name: 'Inputs',
      screen: const InputsScreen(),
    ),
    MenuOption(
      route: 'sliders',
      icon: Icons.safety_check,
      name: 'Sliders',
      screen: const SliderScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {
       for (final option in menuOption) option.route: (BuildContext context) => option.screen
    };

    // appRoutes.addAll({ 'home' : (BuildContext context) => const HomeScreen() });

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext) > routes = {
  //   'home'     : (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert'    : (BuildContext context) => const AlertScreen(),
  //   'card'     : (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(settings) {
    return MaterialPageRoute(
      builder: (BuildContext context) => const AlertScreen()
    );
  }

}