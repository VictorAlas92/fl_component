import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import 'screens.dart';

class AppRoutes {
  static const initialRoute = '/home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: '/alert',
        name: 'Alert - Alertas',
        screen: const AlertScreen(),
        icon: Icons.add_alert),
    MenuOption(
        route: '/card',
        name: 'Card - Tarjetas',
        screen: const CardScreen(),
        icon: Icons.card_giftcard_sharp),
    MenuOption(
        route: '/listview1',
        name: 'ListView Tipo 1',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOption(
        route: '/listview2',
        name: 'ListView Tipo 2',
        screen: const ListView2Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: '/avatar',
        name: 'Circule Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOption(
        route: '/animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_fill_outlined),
    MenuOption(
        route: '/inputs',
        name: 'Text Inputs',
        screen: const InputsScreen(),
        icon: Icons.input_rounded),
    MenuOption(
        route: '/slider',
        name: 'Slider && checks',
        screen: const sliderScreen(),
        icon: Icons.sledding_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'/home': (context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }
    return appRoutes;
  }

// *********************************************************************************************
// **                                                                                         **
// **Esto es lo mismo que el metodo getAppRoutes solo que el metodo lo hace de manera dinamica**
// **Al ser de esta manera el main ya tiene todo el listado de rutas en su propiedad routes   **
// **de esta manera ya puede saber que /home tiene asignado un widget de nombre HomeScreen()  **
// **                                                                                         **
// *********************************************************************************************

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   '/home': (context) => const HomeScreen(),
  //   '/alert': (context) => const AlertScreen(),
  //   '/card': (context) => const CardScreen(),
  //   '/listview1': (context) => const ListView1Screen(),
  //   '/listview2': (context) => const ListView2Screen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
