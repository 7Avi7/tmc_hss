import 'package:flutter/material.dart';
import 'package:tmc_hss/ui/views/about_view.dart';
import 'package:tmc_hss/ui/views/all_user_view.dart';
import 'package:tmc_hss/ui/views/contact_view.dart';

import 'views/services_view.dart';

class RouteNavigation {
  static const String servicesView = 'servicesView';
  static const String contactView = 'contactView';
  static const String aboutView = 'aboutView';
  static const String userDetailsView = 'userDetailsView';
  static const String allUserView = 'allUserView';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case servicesView:
        return MaterialPageRoute(builder: (context) => const ServicesView());
      case aboutView:
        return MaterialPageRoute(builder: (context) => const AboutView());
      case contactView:
        return MaterialPageRoute(builder: (context) => const ContactView());

      case allUserView:
        return MaterialPageRoute(builder: (context) => const AllUserView());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
