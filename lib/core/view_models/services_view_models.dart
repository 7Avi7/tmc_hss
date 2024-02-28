import 'package:tmc_hss/core/enums/view_state.dart';
import 'package:tmc_hss/core/models/services_models.dart';
import 'package:tmc_hss/core/services/services_api.dart';
import 'package:tmc_hss/core/view_models/base_view_model.dart';
import 'package:tmc_hss/locator.dart';

class ServicesViewModel extends BaseViewModel {
  final ServicesAPI _ServicesList = locator<ServicesAPI>();

  ServicesModel? servicesModel;

  Future<void> getServices() async {
    setViewState(ViewState.busy);

    servicesModel = await _ServicesList.getServicesAPI();

    print('-----------------------------------------------');

    setViewState(ViewState.idle);
  }
}
