import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tmc_hss/core/enums/view_state.dart';
import 'package:tmc_hss/core/services/contact_api.dart';
import 'package:tmc_hss/core/view_models/base_view_model.dart';
import 'package:tmc_hss/locator.dart';

class ContactViewModel extends BaseViewModel {
  final GlobalKey<FormState> formKey = GlobalKey();

  final ContactAPI _contactAPI = locator<ContactAPI>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final subjectController = TextEditingController();
  final messageController = TextEditingController();

  Future<bool>? contactAPI() async {
    setViewState(ViewState.busy);

    final SharedPreferences preferences = await SharedPreferences.getInstance();

    int? returnedStatusCode = await _contactAPI.getContactAPI(
      nameController.text,
      emailController.text,
      subjectController.text,
      messageController.text,
    );
    setViewState(ViewState.idle);

    if (returnedStatusCode == 200) {
      preferences.setString('getName', nameController.text);
      preferences.setString('getEmail', emailController.text);
      preferences.setString('getSubject', subjectController.text);
      preferences.setString('getMessage', messageController.text);

      return true;
    } else {
      preferences.remove('getName');
      preferences.remove('getEmail');
      preferences.remove('getSubject');
      preferences.remove('getMessage');
    }
    return false;
  }

  Future<void> sendText() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    nameController.text = preferences.getString('getName') ?? '';
    emailController.text = preferences.getString('getEmail') ?? '';
    subjectController.text = preferences.getString('getSubject') ?? '';
    messageController.text = preferences.getString('getMessage') ?? '';

    notifyListeners();
  }

  bool isChecked_one = false;
  bool isChecked_two = false;

  String? validate_Email(value) {
    if (value!.isEmpty) {
      return 'Please Enter an Email';
    }
    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid Email';
    }
    return null;
  }

  String? validate_text(value) {
    if (value!.isEmpty) {
      return 'Please Complete Field';
    }

    return null;
  }
}
