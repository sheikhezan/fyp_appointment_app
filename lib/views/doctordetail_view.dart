import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fyp/utils/images.dart';

import '../utils/doctors.dart';
import '../utils/patients.dart';

class DoctorDetail extends StatefulWidget {
  final Doctor doctor;
  const DoctorDetail({Key? key, required this.doctor}) : super(key: key);

  @override
  State<DoctorDetail> createState() => _DoctorDetailState();

}

class _DoctorDetailState extends State<DoctorDetail> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Text(
                widget.doctor.name,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage(widget.doctor.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.doctor.name,
                          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                        ),
                        Text(
                          widget.doctor.specialization,
                          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black87),
                        ),
                        Text(widget.doctor.location.toString()),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange),
                            Text(widget.doctor.reviews.toString()),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 3,
                    offset: Offset(0, 6), // changes position of shadow
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                radius: 20,
                                child: Icon(Icons.people_alt_outlined, size: 30,),
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(widget.doctor.patients, style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),),
                                  Text("Patients", style: TextStyle(fontSize: 10),),
                                ],
                              ),
                            ),
                          ]
                        ),
                        Column(
                            children: [
                              Container(
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey.shade200,
                                  radius: 20,
                                  child: Icon(Icons.local_hospital_outlined, size: 25,),
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(widget.doctor.experience, style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),),
                                    Text("'Experience", style: TextStyle(fontSize: 10),),
                                  ],
                                ),
                              ),
                            ]
                        ),
                        Column(
                            children: [
                              Container(
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey.shade200,
                                  radius: 20,
                                  child: Icon(Icons.star, size: 30,),
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(widget.doctor.rating, style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),),
                                    Text("Rating", style: TextStyle(fontSize: 10),),
                                  ],
                                ),
                              ),
                            ]
                        ),
                        Column(
                            children: [
                              Container(
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey.shade200,
                                  radius: 20,
                                  child: Icon(Icons.message_outlined, size: 25,),
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(widget.doctor.reviews.toString(), style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),),
                                    Text("'Reviews", style: TextStyle(fontSize: 10),),
                                  ],
                                ),

                              ),
                            ]
                        ),
                      ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("About me".toString(), style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                  Text( widget.doctor.about, style: TextStyle(
                    fontSize: 16
                  ),
                    maxLines: expanded ? null : 3,
                    overflow: TextOverflow.visible,),
                  SizedBox(height:2 ,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        expanded = !expanded;
                      });
                    },
                    child: Row(
                      children: [
                        Text(
                            expanded ? 'Show less': 'Show more' , style: TextStyle(fontSize: 18),

                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    )
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Working Time".toString(), style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
  child: Text(widget.doctor.worktime.toString()),
),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Reviews".toString(), style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                      SizedBox(width: 190,),
                      Text("See All", style: TextStyle(fontWeight: FontWeight.w400),),
                    ],
                  ),
                  Row(
                    children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 10),
                       child: Container(
                         width: 80,
                         height: 80,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           image: DecorationImage(image: AssetImage(DummyImg.saifee), fit: BoxFit.cover,)
                         ),
                       ),
                     ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("EzanSheikh", style: TextStyle(fontWeight: FontWeight.w600),),
                            Row(
                              children: [
                                Text("4.5", style: TextStyle(fontSize: 30),),
                                SizedBox(width: 5,),
                                Icon(Icons.star, color: Colors.orange,),
                                Icon(Icons.star, color: Colors.orange,),
                                Icon(Icons.star, color: Colors.orange,),
                                Icon(Icons.star, color: Colors.orange,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry...."),
          ],),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xff68609c),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(child: Text("Book Appointment", style: TextStyle(fontSize: 20, color: Colors.white),)),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
