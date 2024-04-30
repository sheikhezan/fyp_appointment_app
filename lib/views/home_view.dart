import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/widgets.dart';
import 'package:fyp/utils/images.dart';
import 'package:fyp/views/Categeory_view.dart';
import 'package:fyp/views/registration_view.dart';
import 'package:fyp/widgets/categories_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/nearby_medical_centers.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: [
          // const Uitemplate(),
          ListView(children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("location"),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            SizedBox(width: 2,),
                            Text("Saddar, Karachi"),
                            SizedBox(width: 3,),
                            Icon(Icons.keyboard_arrow_down_rounded),
                          ],
                        ),
                      ],
                    ),
                     Row(
                       children: [
                         Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
                            // border: Border.all(color: const Color(0xff68609c), width: 2),
                           ),
                           child: GestureDetector(
                             onTap: (){
                                    // Ali Add notification stuff here
                             },
                             child: const Icon(
                               Icons.notifications_active_outlined,
                               size: 30,
                             ),
                           ),
                         ),
                         const SizedBox(
                           width: 10,
                         ),
                         Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
                             // border: Border.all(color: const Color(0xff68609c), width: 2),
                           ),
                           child: GestureDetector(
                             onTap: () {
                               _openDrawer();
                             },
                             child: const CircleAvatar(
                              // backgroundColor: Colors.white,
                               child: Icon(Icons.person),
                             ),
                           ),
                         ),
                       ],
                     ),
                   ],
                 ),

               ],
             ),
           ),
            Column(
              children: [

                FadeInUp(
                  duration: const Duration(milliseconds: 1000),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.065,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          prefixIcon: const Icon(Icons.search),
                          labelText: 'Search doctors... ',
                        ),
                      ),
                    ),
                  ),
                ),

                // Slider

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: CarouselSlider(
                    items: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 207, 141, 163),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text('Looking for Best\n\t\t\t\t Doctors',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 19.5)),
                              Image.asset(
                                DummyImg.doc3,
                                width: 70,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 184, 207, 247),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                DummyImg.doc2,
                                width: 120,
                              ),
                              const Text('Choose Best\n\t\t\t Doctors',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18)),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 73, 221, 150),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Easy Appointments',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18)),
                              Image.asset(
                                DummyImg.doc4,
                                width: 70,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 170.0,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Categories',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                      Text('See All',
                          style: TextStyle(
                              color: Color(0xff68609c),
                              fontWeight: FontWeight.w500,
                              fontSize: 18))
                    ],
                  ),
                ),

                // Categories

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const CategoryView(),));
                            },
                            child: Categorycont(
                              clr: const Color(0xffDC9497),
                              imgg: DummyImg.dentist,
                              textt: 'Dentistry',
                            ),
                          ),
                          GestureDetector(
                            onTap: (){

                            },
                            child: Categorycont(
                              clr: const Color(0xff93C19E),
                              imgg: DummyImg.heart,
                              textt: 'Cardiology',
                            ),
                          ),

                          GestureDetector(
                            onTap: (){},
                            child: Categorycont(
                              clr: const Color(0xffF5AD7E),
                              imgg: DummyImg.lungs,
                              textt: 'Pulmono..',
                            ),
                          ),
                          GestureDetector(
                            onTap: (){},
                            child: Categorycont(
                              clr: const Color(0xffACA1CD),
                              imgg: DummyImg.general,
                              textt: 'General',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Categorycont(
                            clr: const Color(0xff4D9B91),
                            imgg: DummyImg.neuro,
                            textt: 'Neurology',
                          ),
                          Categorycont(
                            clr: const Color(0xff352261),
                            imgg: DummyImg.gast,
                            textt: 'Gastroen..',
                          ),
                          Categorycont(
                            clr: const Color(0xffDEB6B5),
                            imgg: DummyImg.labort,
                            textt: 'Laborato..',
                          ),
                          Categorycont(
                            clr: const Color(0xff89CCDB),
                            imgg: DummyImg.vaccine,
                            textt: 'Vaccinat..',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //nearby medical Center

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('NearBy Medical Centers',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                      Text('See All',
                          style: TextStyle(
                              color: Color(0xff68609c),
                              fontWeight: FontWeight.w500,
                              fontSize: 18)),
                    ],
                  ),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          MedicalClinicCard(imagePath: DummyImg.aghakhan, title: 'AghaKhan Hospital',),
                          MedicalClinicCard(imagePath: DummyImg.ziauddin, title: 'Ziauddin Hospital',),
                          MedicalClinicCard(imagePath: DummyImg.saifee, title: ' Saifee Hospital',),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ]),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xff68609c),
              ),
              child: Column(
                children: [
                  const Center(
                    child: CircleAvatar(
                        radius: 50,
                        child: Icon(
                          Icons.image,
                          size: 40,
                        )),
                  ),
                  Text(
                    'ALI MHD',
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Setting'),
              onTap: () {
                // Handle item 1 tap
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.rate_review),
              title: const Text('Rate Us!'),
              onTap: () {
                // Handle item 2 tap
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Share With Your Friends'),
              onTap: () {
                // Handle item 2 tap
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Rate Us!'),
              onTap: () {
                // Handle item 2 tap
                Navigator.pop(context);
              },
            ),
            // Add more ListTile widgets for additional items
          ],
        ),
      ),
    );
  }
}
