import 'package:get_it/get_it.dart';
import 'package:tmc_hss/core/services/about_api.dart';
import 'package:tmc_hss/core/services/services_api.dart';
import 'package:tmc_hss/core/view_models/base_view_model.dart';
import 'package:tmc_hss/core/view_models/contact_view_model.dart';
import 'package:tmc_hss/core/view_models/services_view_models.dart';

import 'core/services/contact_api.dart';
import 'core/view_models/about_view_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory(() => BaseViewModel());

  locator.registerFactory(() => ServicesViewModel());
  locator.registerFactory(() => AboutViewModel());
  locator.registerFactory(() => ContactViewModel());

  locator.registerLazySingleton(() => ServicesAPI());
  locator.registerLazySingleton(() => AboutAPI());
  locator.registerLazySingleton(() => ContactAPI());
}
