import 'package:tmc_hss/core/enums/view_state.dart';
import 'package:tmc_hss/core/models/about_models.dart';
import 'package:tmc_hss/core/services/about_api.dart';
import 'package:tmc_hss/core/view_models/base_view_model.dart';
import 'package:tmc_hss/locator.dart';

class AboutViewModel extends BaseViewModel {
  final AboutAPI _AboutList = locator<AboutAPI>();

  AboutModel? aboutModel;

  Future<void> getAbout() async {
    setViewState(ViewState.busy);

    aboutModel = await _AboutList.getAboutAPI();

    print('-----------------------------------------------');

    setViewState(ViewState.idle);
  }
}
