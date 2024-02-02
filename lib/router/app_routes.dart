import 'package:flutter/material.dart';

import 'package:fl_components/models/menu_options.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes{

  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: 'listview', name: 'Listview', screen: const ListviewScreen(), icon: Icons.list),
    MenuOptions(route: 'listview1', name: 'Listview 1', screen: const Listview1Screen(), icon: Icons.list_alt),
    MenuOptions(route: 'alert', name: 'Alert', screen: const AlertScreen(), icon: Icons.crisis_alert),
    MenuOptions(route: 'card', name: 'Card', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOptions(route: 'avatar', name: 'My Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle),
    MenuOptions(route: 'animated', name: 'Animated', screen: const AnimatedScreen(), icon: Icons.animation_rounded),
    MenuOptions(route: 'input', name: 'Inputs', screen: const InputScreen(), icon: Icons.input,),
    MenuOptions(route: 'slider', name: 'Slider and Check', screen: const SliderScreen(),icon: Icons.photo_size_select_large_outlined),
    MenuOptions(route: 'listviewbuilder', name: 'ListViewBuilder', screen: const ListViewBuilderScreen(),icon: Icons.view_list_outlined)
  ];

  static Map<String, Widget Function(BuildContext)>getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({ 'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({ option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {

  //       'home'     : (BuildContext context) => const HomeScreen(),
  //       'listview' : (BuildContext context) =>  const ListviewScreen(),
  //       'listview1': (BuildContext context) => const Listview1Screen(),
  //       'alert'    : (BuildContext context) => const AlertScreen(),
  //       'card'     : (BuildContext context) => const CardScreen()

  //     };

    static Route<dynamic> onGenerateRoute(RouteSettings settings){
    //print(settings);
      return MaterialPageRoute(
      builder: (context) => const AlertScreen()
      );
    }
  }

