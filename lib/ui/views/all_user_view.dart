import 'package:flutter/material.dart';
import 'package:tmc_hss/core/view_models/contact_view_model.dart';
import 'package:tmc_hss/ui/views/base_view.dart';

class AllUserView extends StatelessWidget {
  const AllUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<ContactViewModel>(
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.yellow,
                centerTitle: true,
                title: const Text("All User Details"),
              ),
              body: Center(
                child: Column(
                  children: [Text("${model.nameController}")],
                ),
              ),
            ));
  }
}
