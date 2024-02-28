import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmc_hss/core/view_models/contact_view_model.dart';
import 'package:tmc_hss/ui/route_navigation.dart';

import 'about_view.dart';
import 'base_view.dart';
import 'services_view.dart';

class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  // bool isChecked_one = false;
  // bool isChecked_two = false;

  @override
  Widget build(BuildContext context) {
    return BaseView<ContactViewModel>(
      onModelReady: (model) async {
        model.sendText();
      },
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          leading: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Builder(
              builder: (BuildContext context) {
                return Stack(clipBehavior: Clip.none, children: [
                  Positioned(
                    top: 25,
                    // left: 600,
                    child: Image.network(
                        'http://192.168.60.35:1337/uploads/TMC_Logo_2ec3db61b5.png'),
                  )
                ]);
              },
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 100,
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Home',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AboutView(),
                      ),
                    );
                  },
                  child: const Text(
                    'About',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              DropdownButton<String>(
                hint: const Text(
                  "Products",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onChanged: (String? value) {},
                items: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Products',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Productive Office',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Video Conferencing Solution',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Ip Telephone Service & Solution',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Security Solution',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Lucent Chart',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ].map<DropdownMenuItem<String>>((Widget button) {
                  return DropdownMenuItem<String>(
                    value: button.key.toString(),
                    child: button,
                  );
                }).toList(),
                underline: const SizedBox(), // Remove the underline
              ),
              DropdownButton<String>(
                hint: const Text(
                  "Services",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onChanged: (String? value) {},
                items: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ServicesView(),
                        ),
                      );
                    },
                    child: const Text(
                      'Services',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Manage IT Support Service Desk',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'E-Mail Migration and Management',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Manage Cloud Services',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Business Analysis & Consultancy',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ].map<DropdownMenuItem<String>>((Widget button) {
                  return DropdownMenuItem<String>(
                    value: button.key.toString(),
                    child: button,
                  );
                }).toList(),
                underline: const SizedBox(), // Remove the underline
              ),
              const SizedBox(
                width: 50,
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ContactView(),
                      ),
                    );
                  },
                  child: const Text(
                    'Contact',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: TextButton(
                onPressed: () {},
                child: const Expanded(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: 120,
                        top: 2,
                        child: Icon(
                          CupertinoIcons.arrow_right,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Start a Project",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Form(
            key: model.formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: Row(
                      children: [
                        Text(
                          "GET IN TOUCH.",
                          style: TextStyle(
                            color: Color(0xFF00CC8B),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Contact.",
                          style: TextStyle(
                            color: Color(0xFF00CC8B),
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.0),
                    child: Row(
                      children: [
                        Text(
                          "Contact Form",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                      "Send an Email. All fields with an asterisk (*) are required."),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 400,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  label: const Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Text(
                                        'Name*',
                                        // "Name",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  floatingLabelAlignment:
                                      FloatingLabelAlignment.center,
                                  // labelText: 'Name',
                                  alignLabelWithHint: true,
                                  hintText: 'Please Enter Your Name*',
                                  hintStyle:
                                      const TextStyle(color: Colors.grey),
                                  // prefixIcon: const Icon(Icons.search),
                                  prefixIconColor: Colors.blueAccent,
                                  filled: true,
                                  fillColor: Colors.white10,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.green,
                                      width: 4.5,
                                      style: BorderStyle.solid,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.red,
                                      width: 4.5,
                                      style: BorderStyle.solid,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),

                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.indigoAccent,
                                      width: 2.0,
                                      style: BorderStyle.solid,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                controller: model.nameController,
                                validator: (value) =>
                                    model.validate_text(value!),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: 400,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  label: const Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Text(
                                        'Email*',
                                        // "Name",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  floatingLabelAlignment:
                                      FloatingLabelAlignment.center,
                                  // labelText: 'Name',
                                  alignLabelWithHint: true,
                                  hintText: 'Please Enter Your Email*',
                                  hintStyle:
                                      const TextStyle(color: Colors.grey),
                                  // prefixIcon: const Icon(Icons.search),
                                  prefixIconColor: Colors.blueAccent,
                                  filled: true,
                                  fillColor: Colors.white10,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.green,
                                      width: 4.5,
                                      style: BorderStyle.solid,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.red,
                                      width: 4.5,
                                      style: BorderStyle.solid,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),

                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.indigoAccent,
                                      width: 2.0,
                                      style: BorderStyle.solid,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                controller: model.emailController,
                                validator: (value) =>
                                    model.validate_Email(value!),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: 500,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  label: const Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Text(
                                        'Subject*',
                                        // "Name",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  floatingLabelAlignment:
                                      FloatingLabelAlignment.center,
                                  // labelText: 'Name',
                                  alignLabelWithHint: true,
                                  hintText: 'Please Enter Subject*',
                                  hintStyle:
                                      const TextStyle(color: Colors.grey),
                                  // prefixIcon: const Icon(Icons.search),
                                  prefixIconColor: Colors.blueAccent,
                                  filled: true,
                                  fillColor: Colors.white10,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.green,
                                      width: 4.5,
                                      style: BorderStyle.solid,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.red,
                                      width: 4.5,
                                      style: BorderStyle.solid,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),

                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.indigoAccent,
                                      width: 2.0,
                                      style: BorderStyle.solid,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                controller: model.subjectController,
                                validator: (value) =>
                                    model.validate_text(value!),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: 700,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  label: const Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Text(
                                        'Message*',
                                        // "Name",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  floatingLabelAlignment:
                                      FloatingLabelAlignment.center,
                                  // labelText: 'Name',
                                  alignLabelWithHint: true,
                                  hintText: 'Please Enter Message*',
                                  hintStyle:
                                      const TextStyle(color: Colors.grey),
                                  // prefixIcon: const Icon(Icons.search),
                                  prefixIconColor: Colors.blueAccent,
                                  filled: true,
                                  fillColor: Colors.white10,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.green,
                                      width: 4.5,
                                      style: BorderStyle.solid,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.red,
                                      width: 4.5,
                                      style: BorderStyle.solid,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),

                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.indigoAccent,
                                      width: 2.0,
                                      style: BorderStyle.solid,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                controller: model.messageController,
                                validator: (value) =>
                                    model.validate_text(value),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text("  Privacy Note *"),
                            const SizedBox(height: 10.0),
                            Row(
                              children: [
                                Checkbox(
                                  value: model.isChecked_one,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      model.isChecked_one = value!;
                                    });
                                  },
                                ),
                                const Text(
                                    'By submitting this form you agree to the Privacy Policy of this website and the storing of the submitted information.'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: model.isChecked_two,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      model.isChecked_two = value!;
                                    });
                                  },
                                ),
                                const Text('Send a copy to yourself'),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            SizedBox(
                              height: 50,
                              width: 150,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.red,
                                  side: const BorderSide(
                                    color: Colors.green,
                                    width: 1,
                                  ),
                                  elevation: 4,
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.blue,

                                  // minimumSize: const Size(double.infinity, 10),

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                onPressed: () async {
                                  // Access the ViewModel to check the status of checkboxes and get the formKey
                                  bool isCheckedOne = model.isChecked_one;
                                  bool isCheckedTwo = model.isChecked_two;
                                  final GlobalKey<FormState> formKey =
                                      model.formKey;

                                  // Check if all checkboxes are checked
                                  if (isCheckedOne && isCheckedTwo) {
                                    if (formKey.currentState!.validate()) {
                                      if (await model.contactAPI()!) {
                                        Navigator.pushNamed(context,
                                            RouteNavigation.userDetailsView);
                                      }
                                    }
                                    print('Name: ${model.nameController.text}');
                                    print(
                                        'Email: ${model.emailController.text}');
                                    print(
                                        'Subject: ${model.subjectController.text}');
                                    print(
                                        'Message: ${model.messageController.text}');
                                  } else {
                                    // Show an alert dialog if checkboxes are not checked
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text('Alert'),
                                          content: const Text(
                                              'Please mark all checkboxes before submitting.'),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('OK'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                },
                                child: const Text(
                                  "Submit",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            const Text(
                              "Transworld\nMercantile\nCorporation",
                              style: TextStyle(
                                color: Colors.black,
                                // fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            SizedBox(
                              height: 500,
                              width: 500,
                              child: Image.network(
                                  'http://192.168.60.35:1337/uploads/small_contact_us_7a56611bd6.png'),
                            ),
                            const Text("ADDRESS"
                                "\nCemex Shimul Trishna Trade Center (3rd Floor) KA- 86/1"
                                "\nPragati Sharani Road, Kuril, Dhaka 1229."
                                "\n\nTELEPHONE"
                                "\n+880-9613848484"
                                "\n\nMOBILE"
                                "\n+880-1860877300"
                                "\n\nWEBSITE"
                                "\nhttps://transworldbd.com"),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),

                  // Companies
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.network(
                                  'http://192.168.60.35:1337/uploads/IDEAL_TEXTILE_LTD_eb3c664f20.jpg'),
                              Image.network(
                                  'http://192.168.60.35:1337/uploads/Dynamic_Group_5454154e70.jpg'),
                              Image.network(
                                  'http://192.168.60.35:1337/uploads/Icon_Group_e7181b6ec4.png'),
                              Image.network(
                                  'http://192.168.60.35:1337/uploads/HOSAF_GROUP_bfc88f9462.png'),
                            ]),
                      ),
                      SizedBox(
                        height: 100,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.network(
                                  'http://192.168.60.35:1337/uploads/KN_Harbour_Consortiu_7a59db9616.jpg'),
                              Image.network(
                                  'http://192.168.60.35:1337/uploads/ISPAHANI_0009126416.jpg'),
                              Image.network(
                                  'http://192.168.60.35:1337/uploads/GRAPHICS_TEXTILES_LTD_db744c5074.jpg'),
                              Image.network(
                                  'http://192.168.60.35:1337/uploads/INCEPTA_PHARMACEUTICALS_11938f49d0.png'),
                            ]),
                      ),
                    ],
                  ),

                  // Footer
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 60,
                    color: Colors.black,
                    child: const Center(
                      child: Text(
                        "Copyright © 2024 Transworld Mercantile Corporation. All Rights Reserved.",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
