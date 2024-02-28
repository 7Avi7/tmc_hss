import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmc_hss/core/view_models/services_view_models.dart';
import 'package:tmc_hss/ui/views/about_view.dart';
import 'package:tmc_hss/ui/views/base_view.dart';

import 'contact_view.dart';

class ServicesView extends StatefulWidget {
  const ServicesView({super.key});

  @override
  State<ServicesView> createState() => _ServicesViewState();
}

class _ServicesViewState extends State<ServicesView> {
  List imageList = [
    {
      'id': 1,
      'image_path':
          'http://192.168.60.35:1337/uploads/IDEAL_TEXTILE_LTD_eb3c664f20.jpg',
    },
    {
      'id': 2,
      'image_path':
          'http://192.168.60.35:1337/uploads/GRAPHICS_TEXTILES_LTD_db744c5074.jpg',
    },
    {
      'id': 3,
      'image_path':
          'http://192.168.60.35:1337/uploads/KN_Harbour_Consortiu_7a59db9616.jpg',
    },
  ];

  final CarouselController carouselController = CarouselController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BaseView<ServicesViewModel>(
      onModelReady: (model) {
        model.getServices();
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
                    child: Expanded(
                      child: Image.network(
                          'http://192.168.60.35:1337/uploads/TMC_Logo_2ec3db61b5.png'),
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
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              TextButton(
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
              const SizedBox(
                width: 50,
              ),
              Row(
                children: [
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
                ],
              ),
              const SizedBox(
                width: 50,
              ),
              TextButton(
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
              const SizedBox(
                width: 50,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ContactView(),
                        ),
                      );
                    },
                    child: const Row(
                      children: [
                        Text("Start A Project"),
                        Icon(
                          CupertinoIcons.arrow_right,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        print(currentIndex);
                      },
                      child: CarouselSlider(
                        items: imageList
                            .map(
                              (item) => Image.network(
                                item['image_path'],
                                // Use the URL string here
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            )
                            .toList(),
                        carouselController: carouselController,
                        options: CarouselOptions(
                          scrollPhysics: const BouncingScrollPhysics(),
                          autoPlay: true,
                          aspectRatio: 4,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imageList.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () =>
                                carouselController.animateToPage(entry.key),
                            child: Container(
                              width: currentIndex == entry.key ? 17 : 7,
                              height: 7.0,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 3.0,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentIndex == entry.key
                                      ? Colors.red
                                      : Colors.teal),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  "Our Services",
                  style: TextStyle(
                      color: Color(0xFF3E8B94),
                      fontSize: 100,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "\n\nTransworld Mercantile Corporation is one of the few IT system integration, professional service and solution development companies in"
                  "\n\n                                             Bangladesh that works with Small-scale solutions to Enterprise systems and companies.",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: 400,
                          height: 400,
                          child: Card(
                            color: Colors.white,
                            // shadowColor: Colors.white,
                            elevation: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${model.servicesModel!.data![0].attributes!.card![0].title}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                  // 'Managed IT Support Service Desk',
                                  // style: TextStyle(
                                  //     fontWeight: FontWeight.bold,
                                  //     fontSize: 24),
                                  //),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    '${model.servicesModel!.data![0].attributes!.card![0].subtitle}',
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Row(
                                          children: [
                                            Text(
                                              '${model.servicesModel!.data![0].attributes!.card![0].button}',
                                              style: const TextStyle(
                                                  color: Colors.black),
                                            ),
                                            const Icon(
                                              CupertinoIcons.arrow_right,
                                              size: 20,
                                              color: Colors.blue,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: SizedBox(
                          width: 400,
                          height: 400,
                          child: Card(
                            color: Colors.white,
                            // shadowColor: Colors.white,
                            elevation: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${model.servicesModel!.data![0].attributes!.card![1].title}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Flexible(
                                    child: Text(
                                      '${model.servicesModel!.data![0].attributes!.card![1].subtitle}',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Row(
                                          children: [
                                            Text(
                                              '${model.servicesModel!.data![0].attributes!.card![1].button}',
                                              style: const TextStyle(
                                                  color: Colors.black),
                                            ),
                                            const Icon(
                                              CupertinoIcons.arrow_right,
                                              size: 20,
                                              color: Colors.blue,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: 400,
                          height: 400,
                          child: Card(
                            color: Colors.white,
                            // shadowColor: Colors.white,
                            elevation: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${model.servicesModel!.data![0].attributes!.card![2].title}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Flexible(
                                    child: Text(
                                      '${model.servicesModel!.data![0].attributes!.card![2].subtitle}',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Row(
                                          children: [
                                            Text(
                                              '${model.servicesModel!.data![0].attributes!.card![2].button}',
                                              style: const TextStyle(
                                                  color: Colors.black),
                                            ),
                                            const Icon(
                                              CupertinoIcons.arrow_right,
                                              size: 20,
                                              color: Colors.blue,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: SizedBox(
                          width: 400,
                          height: 400,
                          child: Card(
                            color: Colors.white,
                            // shadowColor: Colors.white,
                            elevation: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${model.servicesModel!.data![0].attributes!.card![3].title}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Flexible(
                                    child: Text(
                                      '${model.servicesModel!.data![0].attributes!.card![3].subtitle}',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Row(
                                          children: [
                                            Text(
                                              '${model.servicesModel!.data![0].attributes!.card![3].button}',
                                              style: const TextStyle(
                                                  color: Colors.black),
                                            ),
                                            const Icon(
                                              CupertinoIcons.arrow_right,
                                              size: 20,
                                              color: Colors.blue,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
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
