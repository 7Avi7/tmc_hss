import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmc_hss/core/view_models/about_view_model.dart';
import 'package:tmc_hss/ui/views/base_view.dart';
import 'package:tmc_hss/ui/views/services_view.dart';

import 'contact_view.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<AboutViewModel>(
      onModelReady: (model) async {
        model.getAbout();
      },
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          leading: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Builder(
              builder: (BuildContext context) {
                return const Stack(clipBehavior: Clip.none, children: [
                  Positioned(
                    top: 25,
                    // left: 600,
                    child: Image(
                      // height: 100,
                      image: AssetImage('assets/images/tmcLogo.png'),
                    ),
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "${model.aboutModel!.data![0].attributes!.content![0].heading}",
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          Text(
                            "${model.aboutModel!.data![0].attributes!.content![0].subheading}",
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "${model.aboutModel!.data![0].attributes!.content![1].heading}",
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          Text(
                            "${model.aboutModel!.data![0].attributes!.content![1].subheading}",
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "${model.aboutModel!.data![0].attributes!.content![2].heading}",
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          Text(
                            "${model.aboutModel!.data![0].attributes!.content![2].subheading}",
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
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
    );
  }
}
