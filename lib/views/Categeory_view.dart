import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fyp/utils/images.dart';
import 'package:fyp/views/home_view.dart';
import 'package:pinput/pinput.dart';

import '../utils/doctors.dart';
import '../widgets/Category_button.dart';
import 'doctordetail_view.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeView(),
                          ));
                    },
                    child: Icon(Icons.arrow_back)),
                Text(
                  "All Doctors",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                ),
                GestureDetector(
                  onTap: () {
                    const Drawer();
                  },
                  child: const CircleAvatar(
                    // backgroundColor: Colors.white,
                    child: Icon(Icons.person),
                  ),
                ),
              ],
            ),
            FadeInUp(
              duration: const Duration(milliseconds: 1000),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryButton(
                    categoryName: 'All',
                    width: 80,
                  ),
                  CategoryButton(
                    categoryName: 'Dentist',
                    width: 100,
                  ),
                  CategoryButton(
                    categoryName: 'Diabetes',
                    width: 120,
                  ),
                  CategoryButton(
                    categoryName: 'Cardiologist',
                    width: 140,
                  ),
                  CategoryButton(
                    categoryName: 'General',
                    width: 100,
                  ),
                  CategoryButton(
                    categoryName: 'Neurology',
                    width: 120,
                  ),
                  CategoryButton(
                    categoryName: 'Gastro-en',
                    width: 120,
                  ),
                  CategoryButton(
                    categoryName: 'Orthopedic',
                    width: 120,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "532 Founds",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Text(
                      "Default",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                    ),
                    Icon(Icons.add),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 500,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: 12,
                ),
                itemCount: dummyDoctors.length,
                itemBuilder: (context, index) {
                   final doctor = dummyDoctors[index];
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorDetail(doctor: doctor), ),);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                              image: DecorationImage(
                                image: AssetImage(dummyDoctors[index].imageUrl), fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dummyDoctors[index].name,
                                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                                ),
                                Text(
                                  dummyDoctors[index].specialization,
                                  style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black87),
                                ),
                                Text(dummyDoctors[index].location.toString()),
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.orange,),
                                      Text(dummyDoctors[index].reviews.toString()),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.favorite,color: Colors.red,),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )

          ],
        ),
      )),
    );
  }
}