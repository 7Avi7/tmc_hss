import 'package:flutter/material.dart';
import 'package:tmc_hss/locator.dart';

import 'ui/route_navigation.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Flexible(
      fit: FlexFit.tight,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TMC_HSS',
        initialRoute: RouteNavigation.servicesView,
        onGenerateRoute: RouteNavigation.generateRoute,
      ),
    );
  }
}
